   0x080486cb <+0>:     lea    ecx,[esp+0x4]
   0x080486cf <+4>:     and    esp,0xfffffff0
   0x080486d2 <+7>:     push   DWORD PTR [ecx-0x4]
   0x080486d5 <+10>:    push   ebp
   0x080486d6 <+11>:    mov    ebp,esp
   0x080486d8 <+13>:    push   ecx
   0x080486d9 <+14>:    sub    esp,0x14
   0x080486dc <+17>:    mov    eax,gs:0x14
   0x080486e2 <+23>:    mov    DWORD PTR [ebp-0xc],eax
   0x080486e5 <+26>:    xor    eax,eax
   0x080486e7 <+28>:    call   0x804867b <initialize>
   0x080486ec <+33>:    sub    esp,0xc
   0x080486ef <+36>:    push   0x8048811
   0x080486f4 <+41>:    call   0x80484b0 <printf@plt>
   0x080486f9 <+46>:    add    esp,0x10
   0x080486fc <+49>:    sub    esp,0x4
   0x080486ff <+52>:    push   0x10
   0x08048701 <+54>:    push   0x804a0ac
   0x08048706 <+59>:    push   0x0
   0x08048708 <+61>:    call   0x80484a0 <read@plt>
   0x0804870d <+66>:    add    esp,0x10
   0x08048710 <+69>:    sub    esp,0xc
   0x08048713 <+72>:    push   0x804881e
   0x08048718 <+77>:    call   0x80484b0 <printf@plt>
   0x0804871d <+82>:    add    esp,0x10
   0x08048720 <+85>:    sub    esp,0x8
   0x08048723 <+88>:    lea    eax,[ebp-0x10]
   0x08048726 <+91>:    push   eax
   0x08048727 <+92>:    push   0x8048832
   0x0804872c <+97>:    call   0x8048540 <__isoc99_scanf@plt>
   0x08048731 <+102>:   add    esp,0x10
   0x08048734 <+105>:   mov    eax,DWORD PTR [ebp-0x10]
   0x08048737 <+108>:   mov    eax,DWORD PTR [eax*4+0x804a060]
   0x0804873e <+115>:   sub    esp,0xc
   0x08048741 <+118>:   push   eax
   0x08048742 <+119>:   call   0x8048500 <system@plt>
   0x08048747 <+124>:   add    esp,0x10
   0x0804874a <+127>:   mov    eax,0x0
   0x0804874f <+132>:   mov    edx,DWORD PTR [ebp-0xc]
   0x08048752 <+135>:   xor    edx,DWORD PTR gs:0x14
   0x08048759 <+142>:   je     0x8048760 <main+149>
   0x0804875b <+144>:   call   0x80484e0 <__stack_chk_fail@plt>
   0x08048760 <+149>:   mov    ecx,DWORD PTR [ebp-0x4]
   0x08048763 <+152>:   leave
   0x08048764 <+153>:   lea    esp,[ecx-0x4]
   0x08048767 <+156>:   ret
