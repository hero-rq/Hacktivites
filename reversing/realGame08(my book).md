먼저 Mini-100 바이러스를 실습하기 위해서 가상화 환경을 구축하였습니다. vmware를 이용하여 32bit로 맞추면 충분할 것으로 추측하여 윈도우 8을 이용해 32bit 가상화 환경을 구축하였습니다.

먼저 mini-100 바이러스에 대해서 간단히 짚어보겠습니다. mini-100 바이러스는 전형적인 전위형 바이러스로 확장자가 com인 파일을 감염시킵니다. 그리고 감염된 바이러스는 100바이트가 늘어나게 되죠.

mini-100의 코드는 이러합니다 rsi 100 -a 100 PUSH SI PUSH SI POP DI MOV AX,CS INC AH MOV ES,AX (중략) MOV AH,3E INT 21 MOV AH,4F JMP 0113 SUB CH,[6F63] DB 6D ADD BL,AL

(중간은 생략했지만, 필요한 부분은 실습 관련 자료를 보면서 짚어볼 것이기 때문에 걱정하지 마세요.)

ⓐ Mini-100 바이러스의 동작 중 실제 파일을 감염시키는 동작을 확인하였다. 그럼 파일을 찾을 수 없을 때의 동작은 어떻게 될 것인가?

일단 이 내용에 해당하는 분기문부터 살펴보겠습니다.

이 내용이 가장 중요한 부분이라고 말할 수 있습니다. 왜 그럴까요 ? 19E0:0113 INT 21을 실행시키는 것이 의미하는 바는 무엇일까요? 인터럽트 21h에서 DS:DX 값을 확인하므로 DS:015E인 .com 확장자 값을 찾고 있다는 것을 알 수 있습니다. 바로 이 명령어 실행 때문에 이 바이러스가 com 확장자를 추적할 수 있다는 것을 알 수 있습니다. 확장자를 가진 파일을 성공적으로 찾게 되면, CF = 0, AX = 0000이 됩니다.
바로 그 다음 명령어는 JNB 012D 이고 CF = 0이기 때문에 이 명령어가 실행되어 012D로 점프하는 것을 알 수 있습니다.
012D로 점프하면 XCHG DX,AX MOV AX,3D02 MOV DL,9E 이렇게 자연스럽게 실행되는 것을 발견할 수 있죠. 이 부분이 이 질문에 해당하는 중요한 분기문이라는 것을 쉽게 알 수 있습니다. 012D로 점프해서 그 다음 내용을 진행하는 것은 지금 이 첫 번째 질문과는 상관이 없으니 일단 한쪽으로 제쳐두겠습니다. 이 질문은 ‘파일을 찾을 수 없을 때 이후의 동작’에 대해서 묻고 있으니 그 쪽으로 조금 더 깊게 파고들어가 보겠습니다.

이 함수가 실패하게 되면 CF = 1, AX = 3(에러 번호)가 뜹니다. 따라서 점프문이 실행되지 않고 그 다음 명령어로 자연스럽게 이어서 실행되는 것을 알 수 있습니다. 점프문이 실행되지 않을 경우 다음 명령어는 다음과 같습니다. PUSH SI PUSH ES PUSH CS POP ES

한 칸 씩 실행해보면 위와 같은 결과가 나오는 것을 한 눈에 파악할 수 있습니다. 그 다음 명령어도 어렵지 않고 아주 쉽죠.

XCHG DI,SI MOV CX,FE9B 즉 DI와 SI의 값을 교환하고 CX에 FE9B 값을 넣는 것을 알 수 있습니다.

그 다음 명령어는 다음과 같습니다.
MOV AX,0125 PUSH AX
AX에 125값을 넣고 PUSH 명령어로 그 값을 메모리에 저장하는 것을 알 수 있습니다.

바로 그 다음 실행명령어는 RETF로 스택에서 두 개의 워드를 꺼내 하나는 IP에 하나는 CS에 넣습니다. 그리고 그 다음 실행흐름이 REPZ로 이어지는 것을 알 수 있습니다. REPZ MOVSB REPZ에 의해 CS에 저장된 값만큼 MOVSB 명령어가 반복 실행됩니다.

그 다음에 실행되는 명령어는 POP SI PUSH ES

스택에 저장되어 있던 0100값이 추출되어서 SI는 0100이 되고 ES에 저장되어 있던 19E0이 스택에 저장됩니다. PUSH ES POP DS PUSH SI RETF 이런 식으로 실행흐름이 이어집니다. ES에 해당하는 19E0 값이 한 번 더 스택에 저장되고 19E0 값이 DS로 저장되어집니다. 그리고 0100값을 스택에 저장합니다. 그리고 위에서 보았던 RETF 명령어를 한 번 더 실행하여 두 가지 워드를 스택에서 꺼내서 IP와 CS에 저장합니다. 최종적으로 1AE0:012C에서 19E0:0100으로 실행 흐름이 변경되고 끝이 납니다.

Title : Basic Lectures for White Hackers

a publishing house : Bookk Publisher

isbn : 9791137283008

Author : ME
