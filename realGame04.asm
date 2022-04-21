.586
.model flat, stdcall
option casemap:none

.code
main proc
push ebp
mov ebp, esp
sub esp, 0ch
mov dword ptr[ebp-4], 0Bh
mov dword ptr[ebp-8], 1Ah
call sumproc
mov dword ptr[ebp-0ch], eax
mov esp, ebp
pop ebp
ret
main endp
sumproc proc
push ebp
mov ebp, esp
sub esp, 08h
mov dword ptr[ebp-4h], 32h
mov dword ptr[ebp-8h], 3ch
mov eax, dword ptr[ebp-4h]
add eax, dword ptr[ebp-8h]
mov dword ptr[ebp-4h], eax
mov esp, ebp
pop ebp
ret
sumproc endp
end main
