.586
.MODEL flat, stdcall
.STACK 4096


.data
var1 DWORD 01234567h
var2 DWORD 89ABCDEFh
.code
main PROC

pushad 

push var1
push var2
push 6A6A4C4Ch
pop eax
pop ebx
pop cx
pop dx

popad
push var1
push var2
pop var1
pop var2
ret
main ENDP
end main
