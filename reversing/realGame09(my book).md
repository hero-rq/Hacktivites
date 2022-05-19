일단 본격적인 이야기에 들어가기에 앞서 MBR이 무엇인지에 대해서 먼저 간단히 짚어 보겠습니다. MBR은 부트 레코드의 마스터입니다. 컴퓨터가 부팅될 때 가장 먼저 참조하는 영역입니다. 그래서 예전에는 이 MBR을 공격하여 컴퓨터 부팅 자체를 안 되게 막는 바이러스도 만들어지고 그랬습니다.

초반부 흐름 0000:7C00 xor ax, ax
0000:7C02 mov ss, ax
0000:7C04 mov sp, 7C00
0000:7C07 sti
0000:7C08 push ax
0000:7C09 pop es
0000:7C0A push ax
0000:7C0B pop ds
0000:7C0C cld
0000:7C0D mov si, 7C1B
0000:7C10 mov di, 061B
0000:7C13 push ax
0000:7C14 push di
0000:7C15 mov cx, 1E5
0000:7C18 repz movsb
0000:7C1A retf ;0000:061B로 점프

해석 : 0:7C00 메모리에 로드됩니다. 7C1B부터 485바이트를 061B로 복사합니다. 보면 알수있다시피 레지스터를 깔끔하게 0으로 정리해주고 있습니다.

부트 엔트리 테이블 찾는 과정 0000:061B mov bp, 07BE
0000:061E mov cl, 04 ;최대 엔트리 테이블 수는 4개 0000:0620 cmp [bp+00], ch
0000:0623 jl 062E ;가능한 엔트리 0000:0625 jnz 063A ;에러 메시지 0000:0627 add bp, 0010
0000:062A loop 0620
0000:062C int 18 ;가능한 게 없으면, ;"PRESS A KEY TO REBOOT" 출력

해석 : 부팅 가능한 파티션 테이블 엔트리 찾습니다. 최대 테이블 엔트리 수는 4개입니다. 가능한지 / 아닌지에 따라 분기문으로 나누어져서 처리되어집니다. 부팅 가능한 엔트리를 찾으면 062E로 점프하고 하나도 찾지 못한 경우 "PRESS A KEY TO REBOOT"를 출력합니다.

부팅 가능한 엔트리는 확실히 하나로 좁혀져야 합니다. 0000:0630 add si, 0010
0000:0633 dec cx
0000:0634 jz 064F
0000:0636 cmp [si], ch
0000:0638 jz 0630
해석 : 부팅가능한 엔트리가 몇 개인지 파악하고 있습니다. 하나가 아니면 0630으로 하나인 경우 064F로 점프합니다.

하나보다 더 많은 경우가 나왔습니다. 어떻게 할까요?
0000:063A mov al, [07B5]
해석 : 부팅가능한 엔트리를 하나를 초과하여 찾은 경우 “Invalid partition table”를 출력합니다.

여러 에러 메시지 0000:063D mov ah, 07
0000:063F mov si, ax

0000:0641 lodsb
0000:0642 cmp al, 00
0000:0644 je 0642
0000:0646 mov bx, 0007
0000:0649 mov ah, 0E
0000:064B int 10
(중략) 0000:064F mov [bp+10], cl
0000:0652 call 069B
0000:0055 jnb 0681
0000:0657 inc byte ptr [bp+10]
0000:065A cmp byte ptr [bp+04], 0B
0000:065E je 066B
0000:0660 cmp byte prt [bp+04], 0C
0000:0664 je 066B
0000:0666 mov al, [07B6]
0000:0669 jne 063D
0000:066B add byte ptr [bp+02], 06
0000:066F add word ptr [bp+08], 0006 0000:0673 adc word ptr [bp+0A], 0000 0000:0677 call 069B
0000:067A jnb 0681
0000:067C mov al, [07B6]
0000:067F jmp 063D
해석 : 각 상황에 맞는 오류 메시지를 출력하고 있습니다.

시그니처 값 확인 0000:0681 cmp word ptr [7DFE], AA55 ;시그니처 값 확인 0000:0687 je 0694 ;확인되었으면 0694로 점프 0000:0689 cmp byte ptr [bp+10], 00
0000:068D je 0657
0000:068F mov al, [07B7]
0000:0692 jmp 063D ;"Missing operating system" 출력
해석 : AA 55 값이 맞는지 검증하고 있습니다. 맞는 경우 0694로 점프합니다. 그러나 일치하지 않는 경우 쭉 실행을 따라 “Missing oprationg system”을 출력합니다.

CHS 주소값, LBA 주소값 0000:069B mov di, 0005
0000:069E mov dl, [bp+00]
0000:06A1 mov ah, 08
0000:06A3 int 13
(중략) 0000:06A7 mov al, cl
0000:06A9 and al, 3F
0000:06AB cbw
0000:06AC mov bl, dh
0000:06AE mov bh, ah
0000:06B0 inc bx
0000:06B1 mul bx
0000:06B3 mov dx, cx
0000:06B5 xchg dh, dl
0000:06B7 mov cl, 06
0000:06B9 shr dh, cl
0000:06BB inc dx
0000:06BC mul dx
0000:06BE cmp [bp+0A], dx
0000:06C1 ja 06E6
0000:06C3 jb 06CA
0000:06C5 cmp [bp+08], ax
0000:06C8 jnb 06E6

해석 : CHS주소를 사용하는냐 LBA주소를 사용하느냐에 따라 분기문이 나누어집니다. 요새 CHS주소는 별다른 의미를 갖지 못하므로 LBA주소를 사용할 것입니다.

LBA를 활용하기 위한 int 13 명령어 확인 0000:06E6 mov dl, [bp+00]
0000:06E9 pusha
0000:06EA mov bx, 55AA
0000:06ED mov ah, 41
0000:06EF int 13 ;INT 13 0000:06F1 jb 0729
0000:06F3 cmp bx, AA55
0000:06F7 jne 0729
0000:06F9 test cl, 01
0000:06FC je 0729
0000:06FE popa
해석 : LBA 주소값을 활용하기 위한 int 13명령이 효과적으로 작동하는지 확인합니다.

확장한 int13 명령어를 읽을 수 있으면 LBA 주소값을 불러옵니다 0000:06FF pusha
0000:0700 push 0000
0000:0702 push 0000 0000:0704 push word ptr [bp+0A] 0000:0707 push word ptr [bp+08] 0000:070A push 0000 0000:070C push 7C00 0000:070F push 0001 0000:0711 push 0010 0000:0713 mov ah, 42 ;INT 13 0000:0715 mov si, sp
0000:0717 int 13
0000:0719 popa
0000:071A popa
0000:071B jnb 072B
0000:071D dec di
0000:071E je 072B
0000:0720 xor ah, ah
0000:0722 mov dl, [bp+00]
0000:0725 int 13
0000:0727 jmp 06FF
해석 : 부팅 가능한 512 bytes를 읽어서 0:7C00에 덮어씁니다. 총합해보면, 파티션 엔트리 테이블에서 부팅 가능한 엔트리를 찾은 후, 해당 엔트리 외에도 실행 가능한 것이 있는지 찾는 것입니다. 부팅 가능한 엔트리가 하나라면 LBA 주소값을 참조하여 부트섹터를 메모리 0:7C00에 로드합니다.

Title : Basic Lectures for White Hackers

a publishing house : Bookk Publisher

isbn : 9791137283008

Author : ME
