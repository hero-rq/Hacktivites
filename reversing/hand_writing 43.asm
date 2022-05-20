.LC0:
        .string "TIME OUT"
alarm_handler:
        push    rbp
        mov     rbp, rsp
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        mov     edi, -1
        call    exit
initialize:
        push    rbp
        mov     rbp, rsp
        mov     rax, QWORD PTR stdin[rip]
        mov     ecx, 0
        mov     edx, 2
        mov     esi, 0
        mov     rdi, rax
        call    setvbuf
        mov     rax, QWORD PTR stdout[rip]
        mov     ecx, 0
        mov     edx, 2
        mov     esi, 0
        mov     rdi, rax
        call    setvbuf
        mov     esi, OFFSET FLAT:alarm_handler
        mov     edi, 14
        call    signal
        mov     edi, 30
        call    alarm
        nop
        pop     rbp
        ret
.LC1:
        .string "cat /flag"
read_flag:
        push    rbp
        mov     rbp, rsp
        mov     edi, OFFSET FLAT:.LC1
        call    system
        nop
        pop     rbp
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 144
        mov     DWORD PTR [rbp-132], edi
        mov     QWORD PTR [rbp-144], rsi
        mov     eax, 0
        call    initialize
        lea     rax, [rbp-128]
        mov     rdi, rax
        mov     eax, 0
        call    gets
        mov     eax, 0
        leave
        ret
