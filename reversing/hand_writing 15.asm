00007FFB033B11A0 | 40:57                    | push rdi                                       |
00007FFB033B11A2 | 48:81EC F0020000         | sub rsp,2F0                                    |
00007FFB033B11A9 | 48:8B05 582E0000         | mov rax,qword ptr ds:[7FFB033B4008]            | rax:EntryPoint
00007FFB033B11B0 | 48:33C4                  | xor rax,rsp                                    | rax:EntryPoint
00007FFB033B11B3 | 48:898424 E0020000       | mov qword ptr ss:[rsp+2E0],rax                 | rax:EntryPoint
00007FFB033B11BB | 41:B8 04010000           | mov r8d,104                                    |
00007FFB033B11C1 | 48:8D9424 C0000000       | lea rdx,qword ptr ss:[rsp+C0]                  | [rsp+C0]:EntryPoint
00007FFB033B11C9 | 33C9                     | xor ecx,ecx                                    |
00007FFB033B11CB | FF15 2F1E0000            | call qword ptr ds:[<&GetModuleFileNameA>]      |
00007FFB033B11D1 | 48:8D8C24 C0000000       | lea rcx,qword ptr ss:[rsp+C0]                  | [rsp+C0]:EntryPoint
00007FFB033B11D9 | FF15 A11E0000            | call qword ptr ds:[<&PathFindFileNameA>]       |
00007FFB033B11DF | 48:894424 38             | mov qword ptr ss:[rsp+38],rax                  | rax:EntryPoint
00007FFB033B11E4 | 41:B8 0D000000           | mov r8d,D                                      | D:'\r'
00007FFB033B11EA | 48:8D15 BF1F0000         | lea rdx,qword ptr ds:[7FFB033B31B0]            | 
00007FFB033B11F1 | 48:8B4C24 38             | mov rcx,qword ptr ss:[rsp+38]                  |
00007FFB033B11F6 | FF15 0C1F0000            | call qword ptr ds:[<&strncmp>]                 |
00007FFB033B11FC | 85C0                     | test eax,eax                                   |
00007FFB033B11FE | 74 05                    | je prob_rev.7FFB033B1205                       |
00007FFB033B1200 | E9 67010000              | jmp prob_rev.7FFB033B136C                      |
00007FFB033B1205 | 48:8D8424 80000000       | lea rax,qword ptr ss:[rsp+80]                  | rax:EntryPoint, [rsp+80]
00007FFB033B120D | 48:8BF8                  | mov rdi,rax                                    | rax:EntryPoint
00007FFB033B1210 | 33C0                     | xor eax,eax                                    |
00007FFB033B1212 | B9 40000000              | mov ecx,40                                     | 40:'@'
00007FFB033B1217 | F3:AA                    | rep stosb                                      |
00007FFB033B1219 | 48:C74424 20 00000000    | mov qword ptr ss:[rsp+20],0                    |
00007FFB033B1222 | EB 0D                    | jmp prob_rev.7FFB033B1231                      |
