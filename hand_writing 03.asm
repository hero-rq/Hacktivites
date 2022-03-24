.586
.model flat, stdcall
option casemap:none
.code 
main proc 
push ebp 
mov ebp, esp 
mov eax, 11223344h
mov ebx, 12345678h
not eax
and eax, ebx 
not ebx
and eax, ebx 
pop ebp 
retn
main endp
end main

.586
.model flat, stdcall
option casemap:none
.code 
main proc 
push ebp 
mov ebp, esp 
mov eax, 11223344h
mov ebx, 12345678h
xor eax, ebx
xor eax, ebx
xor eax, eax
pop ebp 
retn
main endp
end main
