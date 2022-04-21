.586
.model flat, stdcall
option casemap:none

.code
main proc
push ebp 
mov ebp, esp 
sub esp, 8h 
mov dword ptr [ebp-4],10h
mov dword ptr [ebp-8],20h
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
Start:
inc eax
cmp eax, ebx
je Exit
ja Exit
jmp Start
Exit:
pop ebp
retn
main endp
end main
