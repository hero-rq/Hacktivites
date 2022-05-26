gcc main.c -o main 
objdump -d main

0000000000401000 <_init>:
  401000:   48 83 ec 08             sub    $0x8,%rsp
  401004:   48 8b 05 ed 2f 00 00    mov    0x2fed(%rip),%rax        # 403ff8 <__gmon_start__>
  40100b:   48 85 c0                test   %rax,%rax
  40100e:   74 02                   je     401012 <_init+0x12>
  401010:   ff d0                   callq  *%rax
  401012:   48 83 c4 08             add    $0x8,%rsp
  401016:   c3                      retq   

Disassembly of section .text:

0000000000401020 <main>:
  401020:   e9 fb 00 00 00          jmpq   401120 <func>
  401025:   66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  40102c:   00 00 00 
  40102f:   90                      nop

0000000000401030 <_start>:
  401030:   31 ed                   xor    %ebp,%ebp
  401032:   49 89 d1                mov    %rdx,%r9
  401035:   5e                      pop    %rsi
  401036:   48 89 e2                mov    %rsp,%rdx
  401039:   48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
  40103d:   50                      push   %rax
  40103e:   54                      push   %rsp
  40103f:   49 c7 c0 00 12 40 00    mov    $0x401200,%r8
  401046:   48 c7 c1 a0 11 40 00    mov    $0x4011a0,%rcx
  40104d:   48 c7 c7 20 10 40 00    mov    $0x401020,%rdi
  401054:   ff 15 96 2f 00 00       callq  *0x2f96(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40105a:   f4                      hlt    
  40105b:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)

0000000000401060 <_dl_relocate_static_pie>:
  401060:   c3                      retq   
  401061:   66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  401068:   00 00 00 
  40106b:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)

0000000000401070 <deregister_tm_clones>:
  401070:   b8 10 40 40 00          mov    $0x404010,%eax
  401075:   48 3d 10 40 40 00       cmp    $0x404010,%rax
  40107b:   74 13                   je     401090 <deregister_tm_clones+0x20>
  40107d:   b8 00 00 00 00          mov    $0x0,%eax
  401082:   48 85 c0                test   %rax,%rax
  401085:   74 09                   je     401090 <deregister_tm_clones+0x20>
  401087:   bf 10 40 40 00          mov    $0x404010,%edi
  40108c:   ff e0                   jmpq   *%rax
  40108e:   66 90                   xchg   %ax,%ax
  401090:   c3                      retq   
  401091:   66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
  401098:   00 00 00 00 
  40109c:   0f 1f 40 00             nopl   0x0(%rax)

00000000004010a0 <register_tm_clones>:
  4010a0:   be 10 40 40 00          mov    $0x404010,%esi
  4010a5:   48 81 ee 10 40 40 00    sub    $0x404010,%rsi
  4010ac:   48 89 f0                mov    %rsi,%rax
  4010af:   48 c1 ee 3f             shr    $0x3f,%rsi
  4010b3:   48 c1 f8 03             sar    $0x3,%rax
  4010b7:   48 01 c6                add    %rax,%rsi
  4010ba:   48 d1 fe                sar    %rsi
  4010bd:   74 11                   je     4010d0 <register_tm_clones+0x30>
  4010bf:   b8 00 00 00 00          mov    $0x0,%eax
  4010c4:   48 85 c0                test   %rax,%rax
  4010c7:   74 07                   je     4010d0 <register_tm_clones+0x30>
  4010c9:   bf 10 40 40 00          mov    $0x404010,%edi
  4010ce:   ff e0                   jmpq   *%rax
  4010d0:   c3                      retq   
  4010d1:   66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
  4010d8:   00 00 00 00 
  4010dc:   0f 1f 40 00             nopl   0x0(%rax)

00000000004010e0 <__do_global_dtors_aux>:
  4010e0:   80 3d 29 2f 00 00 00    cmpb   $0x0,0x2f29(%rip)        # 404010 <__TMC_END__>
  4010e7:   75 17                   jne    401100 <__do_global_dtors_aux+0x20>
  4010e9:   55                      push   %rbp
  4010ea:   48 89 e5                mov    %rsp,%rbp
  4010ed:   e8 7e ff ff ff          callq  401070 <deregister_tm_clones>
  4010f2:   c6 05 17 2f 00 00 01    movb   $0x1,0x2f17(%rip)        # 404010 <__TMC_END__>
  4010f9:   5d                      pop    %rbp
  4010fa:   c3                      retq   
  4010fb:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
  401100:   c3                      retq   
  401101:   66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
  401108:   00 00 00 00 
  40110c:   0f 1f 40 00             nopl   0x0(%rax)

0000000000401110 <frame_dummy>:
  401110:   eb 8e                   jmp    4010a0 <register_tm_clones>
  401112:   66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  401119:   00 00 00 
  40111c:   0f 1f 40 00             nopl   0x0(%rax)

0000000000401120 <func>:
  401120:   8d 57 ff                lea    -0x1(%rdi),%edx
  401123:   49 89 f0                mov    %rsi,%r8
  401126:   83 fa 01                cmp    $0x1,%edx
  401129:   7e 6d                   jle    401198 <func+0x78>
  40112b:   85 ff                   test   %edi,%edi
  40112d:   74 69                   je     401198 <func+0x78>
  40112f:   31 c0                   xor    %eax,%eax
  401131:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
  401138:   48 63 ca                movslq %edx,%rcx
  40113b:   49 8b 0c c8             mov    (%r8,%rcx,8),%rcx
  40113f:   0f be 31                movsbl (%rcx),%esi
  401142:   0f be 49 01             movsbl 0x1(%rcx),%ecx
  401146:   8d 34 b6                lea    (%rsi,%rsi,4),%esi
  401149:   8d b4 71 f0 fd ff ff    lea    -0x210(%rcx,%rsi,2),%esi
  401150:   69 ce ab aa aa aa       imul   $0xaaaaaaab,%esi,%ecx
  401156:   8d 3c 30                lea    (%rax,%rsi,1),%edi
  401159:   8d 04 70                lea    (%rax,%rsi,2),%eax
  40115c:   81 c1 aa aa aa 2a       add    $0x2aaaaaaa,%ecx
  401162:   81 f9 54 55 55 55       cmp    $0x55555554,%ecx
  401168:   0f 46 c7                cmovbe %edi,%eax
  40116b:   83 ea 01                sub    $0x1,%edx
  40116e:   83 fa 01                cmp    $0x1,%edx
  401171:   7f c5                   jg     401138 <func+0x18>
  401173:   4c 63 c0                movslq %eax,%r8
  401176:   99                      cltd   
  401177:   4d 69 c0 1f 85 eb 51    imul   $0x51eb851f,%r8,%r8
  40117e:   49 c1 f8 25             sar    $0x25,%r8
  401182:   41 29 d0                sub    %edx,%r8d
  401185:   41 6b d0 64             imul   $0x64,%r8d,%edx
  401189:   29 d0                   sub    %edx,%eax
  40118b:   41 89 c0                mov    %eax,%r8d
  40118e:   44 89 c0                mov    %r8d,%eax
  401191:   c3                      retq   
  401192:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
  401198:   45 31 c0                xor    %r8d,%r8d
  40119b:   44 89 c0                mov    %r8d,%eax
  40119e:   c3                      retq   
  40119f:   90                      nop

00000000004011a0 <__libc_csu_init>:
  4011a0:   41 57                   push   %r15
  4011a2:   49 89 d7                mov    %rdx,%r15
  4011a5:   41 56                   push   %r14
  4011a7:   49 89 f6                mov    %rsi,%r14
  4011aa:   41 55                   push   %r13
  4011ac:   41 89 fd                mov    %edi,%r13d
  4011af:   41 54                   push   %r12
  4011b1:   4c 8d 25 40 2c 00 00    lea    0x2c40(%rip),%r12        # 403df8 <__frame_dummy_init_array_entry>
  4011b8:   55                      push   %rbp
  4011b9:   48 8d 2d 40 2c 00 00    lea    0x2c40(%rip),%rbp        # 403e00 <__do_global_dtors_aux_fini_array_entry>
  4011c0:   53                      push   %rbx
  4011c1:   4c 29 e5                sub    %r12,%rbp
  4011c4:   48 83 ec 08             sub    $0x8,%rsp
  4011c8:   e8 33 fe ff ff          callq  401000 <_init>
  4011cd:   48 c1 fd 03             sar    $0x3,%rbp
  4011d1:   74 1b                   je     4011ee <__libc_csu_init+0x4e>
  4011d3:   31 db                   xor    %ebx,%ebx
  4011d5:   0f 1f 00                nopl   (%rax)
  4011d8:   4c 89 fa                mov    %r15,%rdx
  4011db:   4c 89 f6                mov    %r14,%rsi
  4011de:   44 89 ef                mov    %r13d,%edi
  4011e1:   41 ff 14 dc             callq  *(%r12,%rbx,8)
  4011e5:   48 83 c3 01             add    $0x1,%rbx
  4011e9:   48 39 dd                cmp    %rbx,%rbp
  4011ec:   75 ea                   jne    4011d8 <__libc_csu_init+0x38>
  4011ee:   48 83 c4 08             add    $0x8,%rsp
  4011f2:   5b                      pop    %rbx
  4011f3:   5d                      pop    %rbp
  4011f4:   41 5c                   pop    %r12
  4011f6:   41 5d                   pop    %r13
  4011f8:   41 5e                   pop    %r14
  4011fa:   41 5f                   pop    %r15
  4011fc:   c3                      retq   
  4011fd:   0f 1f 00                nopl   (%rax)

0000000000401200 <__libc_csu_fini>:
  401200:   c3                      retq   

Disassembly of section .fini:

0000000000401204 <_fini>:
  401204:   48 83 ec 08             sub    $0x8,%rsp
  401208:   48 83 c4 08             add    $0x8,%rsp
  40120c:   c3                      retq  
