.586
.model flat, stdcall
option casemap:none
.code
main proc
push ebp
mov ebp, esp
mov eax, 2h
inc eax
mov ecx, 3h
loop_label:
dec ecx
loop loop_label
mov esp, ebp
pop ebp
ret
main endp
end main

.586
.model flat, stdcall
option casemap:none
.code 
main proc 
push ebp 
mov ebp, esp 
mov eax, 10
mov ebx, 11 
add eax, ebx; 
test eax, ebx 
jz Exit
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
