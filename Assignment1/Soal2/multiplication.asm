multiplication.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:   c3                      ret
   140001001:   66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
   140001008:   00 00 00 00
   14000100c:   0f 1f 40 00             nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:   48 83 ec 28             sub    $0x28,%rsp
   140001014:   48 8b 05 15 34 00 00    mov    0x3415(%rip),%rax        # 140004430 <.refptr.__mingw_initltsdrot_force>
   14000101b:   31 c9                   xor    %ecx,%ecx
   14000101d:   c7 00 01 00 00 00       movl   $0x1,(%rax)
   140001023:   48 8b 05 16 34 00 00    mov    0x3416(%rip),%rax        # 140004440 <.refptr.__mingw_initltsdyn_force>
   14000102a:   c7 00 01 00 00 00       movl   $0x1,(%rax)
   140001030:   48 8b 05 19 34 00 00    mov    0x3419(%rip),%rax        # 140004450 <.refptr.__mingw_initltssuo_force>
   140001037:   c7 00 01 00 00 00       movl   $0x1,(%rax)
   14000103d:   48 8b 05 7c 33 00 00    mov    0x337c(%rip),%rax        # 1400043c0 <.refptr.__ImageBase>
   140001044:   66 81 38 4d 5a          cmpw   $0x5a4d,(%rax)
   140001049:   75 0f                   jne    14000105a <pre_c_init+0x4a>
   14000104b:   48 63 50 3c             movslq 0x3c(%rax),%rdx
   14000104f:   48 01 d0                add    %rdx,%rax
   140001052:   81 38 50 45 00 00       cmpl   $0x4550,(%rax)
   140001058:   74 66                   je     1400010c0 <pre_c_init+0xb0>
   14000105a:   48 8b 05 bf 33 00 00    mov    0x33bf(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   140001061:   89 0d a5 5f 00 00       mov    %ecx,0x5fa5(%rip)        # 14000700c <managedapp>
   140001067:   8b 00                   mov    (%rax),%eax
   140001069:   85 c0                   test   %eax,%eax
   14000106b:   74 43                   je     1400010b0 <pre_c_init+0xa0>
   14000106d:   b9 02 00 00 00          mov    $0x2,%ecx
   140001072:   e8 39 18 00 00          call   1400028b0 <__set_app_type>
   140001077:   e8 b4 17 00 00          call   140002830 <__p__fmode>
   14000107c:   48 8b 15 7d 34 00 00    mov    0x347d(%rip),%rdx        # 140004500 <.refptr._fmode>
   140001083:   8b 12                   mov    (%rdx),%edx
   140001085:   89 10                   mov    %edx,(%rax)
   140001087:   e8 9c 17 00 00          call   140002828 <__p__commode>
   14000108c:   48 8b 15 4d 34 00 00    mov    0x344d(%rip),%rdx        # 1400044e0 <.refptr._commode>
   140001093:   8b 12                   mov    (%rdx),%edx
   140001095:   89 10                   mov    %edx,(%rax)
   140001097:   e8 e4 04 00 00          call   140001580 <_setargv>
   14000109c:   48 8b 05 ed 32 00 00    mov    0x32ed(%rip),%rax        # 140004390 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:   83 38 01                cmpl   $0x1,(%rax)
   1400010a6:   74 50                   je     1400010f8 <pre_c_init+0xe8>
   1400010a8:   31 c0                   xor    %eax,%eax
   1400010aa:   48 83 c4 28             add    $0x28,%rsp
   1400010ae:   c3                      ret
   1400010af:   90                      nop
   1400010b0:   b9 01 00 00 00          mov    $0x1,%ecx
   1400010b5:   e8 f6 17 00 00          call   1400028b0 <__set_app_type>
   1400010ba:   eb bb                   jmp    140001077 <pre_c_init+0x67>
   1400010bc:   0f 1f 40 00             nopl   0x0(%rax)
   1400010c0:   0f b7 50 18             movzwl 0x18(%rax),%edx
   1400010c4:   66 81 fa 0b 01          cmp    $0x10b,%dx
   1400010c9:   74 45                   je     140001110 <pre_c_init+0x100>
   1400010cb:   66 81 fa 0b 02          cmp    $0x20b,%dx
   1400010d0:   75 88                   jne    14000105a <pre_c_init+0x4a>
   1400010d2:   83 b8 84 00 00 00 0e    cmpl   $0xe,0x84(%rax)
   1400010d9:   0f 86 7b ff ff ff       jbe    14000105a <pre_c_init+0x4a>
   1400010df:   8b 90 f8 00 00 00       mov    0xf8(%rax),%edx
   1400010e5:   31 c9                   xor    %ecx,%ecx
   1400010e7:   85 d2                   test   %edx,%edx
   1400010e9:   0f 95 c1                setne  %cl
   1400010ec:   e9 69 ff ff ff          jmp    14000105a <pre_c_init+0x4a>
   1400010f1:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   1400010f8:   48 8b 0d 21 34 00 00    mov    0x3421(%rip),%rcx        # 140004520 <.refptr._matherr>
   1400010ff:   e8 ec 0b 00 00          call   140001cf0 <__mingw_setusermatherr>
   140001104:   31 c0                   xor    %eax,%eax
   140001106:   48 83 c4 28             add    $0x28,%rsp
   14000110a:   c3                      ret
   14000110b:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
   140001110:   83 78 74 0e             cmpl   $0xe,0x74(%rax)
   140001114:   0f 86 40 ff ff ff       jbe    14000105a <pre_c_init+0x4a>
   14000111a:   44 8b 80 e8 00 00 00    mov    0xe8(%rax),%r8d
   140001121:   31 c9                   xor    %ecx,%ecx
   140001123:   45 85 c0                test   %r8d,%r8d
   140001126:   0f 95 c1                setne  %cl
   140001129:   e9 2c ff ff ff          jmp    14000105a <pre_c_init+0x4a>
   14000112e:   66 90                   xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:   48 83 ec 38             sub    $0x38,%rsp
   140001134:   48 8b 05 f5 33 00 00    mov    0x33f5(%rip),%rax        # 140004530 <.refptr._newmode>
   14000113b:   4c 8d 05 d6 5e 00 00    lea    0x5ed6(%rip),%r8        # 140007018 <envp>
   140001142:   48 8d 15 d7 5e 00 00    lea    0x5ed7(%rip),%rdx        # 140007020 <argv>
   140001149:   48 8d 0d d8 5e 00 00    lea    0x5ed8(%rip),%rcx        # 140007028 <argc>
   140001150:   8b 00                   mov    (%rax),%eax
   140001152:   89 05 ac 5e 00 00       mov    %eax,0x5eac(%rip)        # 140007004 <startinfo>
   140001158:   48 8b 05 91 33 00 00    mov    0x3391(%rip),%rax        # 1400044f0 <.refptr._dowildcard>
   14000115f:   44 8b 08                mov    (%rax),%r9d
   140001162:   48 8d 05 9b 5e 00 00    lea    0x5e9b(%rip),%rax        # 140007004 <startinfo>
   140001169:   48 89 44 24 20          mov    %rax,0x20(%rsp)
   14000116e:   e8 6d 14 00 00          call   1400025e0 <__getmainargs>
   140001173:   90                      nop
   140001174:   48 83 c4 38             add    $0x38,%rsp
   140001178:   c3                      ret
   140001179:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:   41 54                   push   %r12
   140001182:   55                      push   %rbp
   140001183:   57                      push   %rdi
   140001184:   56                      push   %rsi
   140001185:   53                      push   %rbx
   140001186:   48 83 ec 20             sub    $0x20,%rsp
   14000118a:   48 8b 1d ef 32 00 00    mov    0x32ef(%rip),%rbx        # 140004480 <.refptr.__native_startup_lock>
   140001191:   48 8b 2d 58 71 00 00    mov    0x7158(%rip),%rbp        # 1400082f0 <__imp_Sleep>
   140001198:   31 ff                   xor    %edi,%edi
   14000119a:   65 48 8b 04 25 30 00    mov    %gs:0x30,%rax
   1400011a1:   00 00
   1400011a3:   48 8b 70 08             mov    0x8(%rax),%rsi
   1400011a7:   eb 17                   jmp    1400011c0 <__tmainCRTStartup+0x40>
   1400011a9:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   1400011b0:   48 39 c6                cmp    %rax,%rsi
   1400011b3:   0f 84 67 01 00 00       je     140001320 <__tmainCRTStartup+0x1a0>
   1400011b9:   b9 e8 03 00 00          mov    $0x3e8,%ecx
   1400011be:   ff d5                   call   *%rbp
   1400011c0:   48 89 f8                mov    %rdi,%rax
   1400011c3:   f0 48 0f b1 33          lock cmpxchg %rsi,(%rbx)
   1400011c8:   48 85 c0                test   %rax,%rax
   1400011cb:   75 e3                   jne    1400011b0 <__tmainCRTStartup+0x30>
   1400011cd:   48 8b 35 bc 32 00 00    mov    0x32bc(%rip),%rsi        # 140004490 <.refptr.__native_startup_state>
   1400011d4:   31 ff                   xor    %edi,%edi
   1400011d6:   8b 06                   mov    (%rsi),%eax
   1400011d8:   83 f8 01                cmp    $0x1,%eax
   1400011db:   0f 84 56 01 00 00       je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:   8b 06                   mov    (%rsi),%eax
   1400011e3:   85 c0                   test   %eax,%eax
   1400011e5:   0f 84 b5 01 00 00       je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:   c7 05 13 5e 00 00 01    movl   $0x1,0x5e13(%rip)        # 140007008 <has_cctor>
   1400011f2:   00 00 00
   1400011f5:   8b 06                   mov    (%rsi),%eax
   1400011f7:   83 f8 01                cmp    $0x1,%eax
   1400011fa:   0f 84 4c 01 00 00       je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:   85 ff                   test   %edi,%edi
   140001202:   0f 84 65 01 00 00       je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:   48 8b 05 e1 31 00 00    mov    0x31e1(%rip),%rax        # 1400043f0 <.refptr.__dyn_tls_init_callback>
   14000120f:   48 8b 00                mov    (%rax),%rax
   140001212:   48 85 c0                test   %rax,%rax
   140001215:   74 0c                   je     140001223 <__tmainCRTStartup+0xa3>
   140001217:   45 31 c0                xor    %r8d,%r8d
   14000121a:   ba 02 00 00 00          mov    $0x2,%edx
   14000121f:   31 c9                   xor    %ecx,%ecx
   140001221:   ff d0                   call   *%rax
   140001223:   e8 28 07 00 00          call   140001950 <_pei386_runtime_relocator>
   140001228:   48 8b 0d e1 32 00 00    mov    0x32e1(%rip),%rcx        # 140004510 <.refptr._gnu_exception_handler>
   14000122f:   ff 15 b3 70 00 00       call   *0x70b3(%rip)        # 1400082e8 <__imp_SetUnhandledExceptionFilter>
   140001235:   48 8b 15 34 32 00 00    mov    0x3234(%rip),%rdx        # 140004470 <.refptr.__mingw_oldexcpt_handler>
   14000123c:   48 8d 0d bd fd ff ff    lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:   48 89 02                mov    %rax,(%rdx)
   140001246:   e8 6d 16 00 00          call   1400028b8 <_set_invalid_parameter_handler>
   14000124b:   e8 10 05 00 00          call   140001760 <_fpreset>
   140001250:   8b 1d d2 5d 00 00       mov    0x5dd2(%rip),%ebx        # 140007028 <argc>
   140001256:   8d 7b 01                lea    0x1(%rbx),%edi
   140001259:   48 63 ff                movslq %edi,%rdi
   14000125c:   48 c1 e7 03             shl    $0x3,%rdi
   140001260:   48 89 f9                mov    %rdi,%rcx
   140001263:   e8 b0 16 00 00          call   140002918 <malloc>
   140001268:   4c 8b 25 b1 5d 00 00    mov    0x5db1(%rip),%r12        # 140007020 <argv>
   14000126f:   48 89 c5                mov    %rax,%rbp
   140001272:   85 db                   test   %ebx,%ebx
   140001274:   0f 8e 46 01 00 00       jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:   48 83 ef 08             sub    $0x8,%rdi
   14000127e:   31 db                   xor    %ebx,%ebx
   140001280:   49 8b 0c 1c             mov    (%r12,%rbx,1),%rcx
   140001284:   e8 87 15 00 00          call   140002810 <strlen>
   140001289:   48 8d 70 01             lea    0x1(%rax),%rsi
   14000128d:   48 89 f1                mov    %rsi,%rcx
   140001290:   e8 83 16 00 00          call   140002918 <malloc>
   140001295:   49 89 f0                mov    %rsi,%r8
   140001298:   48 89 44 1d 00          mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:   49 8b 14 1c             mov    (%r12,%rbx,1),%rdx
   1400012a1:   48 89 c1                mov    %rax,%rcx
   1400012a4:   48 83 c3 08             add    $0x8,%rbx
   1400012a8:   e8 3b 16 00 00          call   1400028e8 <memcpy>
   1400012ad:   48 39 df                cmp    %rbx,%rdi
   1400012b0:   75 ce                   jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:   48 01 ef                add    %rbp,%rdi
   1400012b5:   48 c7 07 00 00 00 00    movq   $0x0,(%rdi)
   1400012bc:   48 89 2d 5d 5d 00 00    mov    %rbp,0x5d5d(%rip)        # 140007020 <argv>
   1400012c3:   e8 98 02 00 00          call   140001560 <__main>
   1400012c8:   48 8b 05 31 31 00 00    mov    0x3131(%rip),%rax        # 140004400 <.refptr.__imp___initenv>
   1400012cf:   4c 8b 05 42 5d 00 00    mov    0x5d42(%rip),%r8        # 140007018 <envp>
   1400012d6:   8b 0d 4c 5d 00 00       mov    0x5d4c(%rip),%ecx        # 140007028 <argc>
   1400012dc:   48 8b 00                mov    (%rax),%rax
   1400012df:   4c 89 00                mov    %r8,(%rax)
   1400012e2:   48 8b 15 37 5d 00 00    mov    0x5d37(%rip),%rdx        # 140007020 <argv>
   1400012e9:   e8 62 01 00 00          call   140001450 <main>
   1400012ee:   8b 0d 18 5d 00 00       mov    0x5d18(%rip),%ecx        # 14000700c <managedapp>
   1400012f4:   89 05 16 5d 00 00       mov    %eax,0x5d16(%rip)        # 140007010 <mainret>
   1400012fa:   85 c9                   test   %ecx,%ecx
   1400012fc:   0f 84 c6 00 00 00       je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:   8b 15 00 5d 00 00       mov    0x5d00(%rip),%edx        # 140007008 <has_cctor>
   140001308:   85 d2                   test   %edx,%edx
   14000130a:   74 74                   je     140001380 <__tmainCRTStartup+0x200>
   14000130c:   48 83 c4 20             add    $0x20,%rsp
   140001310:   5b                      pop    %rbx
   140001311:   5e                      pop    %rsi
   140001312:   5f                      pop    %rdi
   140001313:   5d                      pop    %rbp
   140001314:   41 5c                   pop    %r12
   140001316:   c3                      ret
   140001317:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   14000131e:   00 00
   140001320:   48 8b 35 69 31 00 00    mov    0x3169(%rip),%rsi        # 140004490 <.refptr.__native_startup_state>
   140001327:   bf 01 00 00 00          mov    $0x1,%edi
   14000132c:   8b 06                   mov    (%rsi),%eax
   14000132e:   83 f8 01                cmp    $0x1,%eax
   140001331:   0f 85 aa fe ff ff       jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:   b9 1f 00 00 00          mov    $0x1f,%ecx
   14000133c:   e8 bf 13 00 00          call   140002700 <_amsg_exit>
   140001341:   8b 06                   mov    (%rsi),%eax
   140001343:   83 f8 01                cmp    $0x1,%eax
   140001346:   0f 85 b4 fe ff ff       jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:   48 8b 15 5d 31 00 00    mov    0x315d(%rip),%rdx        # 1400044b0 <.refptr.__xc_z>
   140001353:   48 8b 0d 46 31 00 00    mov    0x3146(%rip),%rcx        # 1400044a0 <.refptr.__xc_a>
   14000135a:   e8 49 15 00 00          call   1400028a8 <_initterm>
   14000135f:   c7 06 02 00 00 00       movl   $0x2,(%rsi)
   140001365:   85 ff                   test   %edi,%edi
   140001367:   0f 85 9b fe ff ff       jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:   31 c0                   xor    %eax,%eax
   14000136f:   48 87 03                xchg   %rax,(%rbx)
   140001372:   e9 91 fe ff ff          jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   14000137e:   00 00
   140001380:   e8 e3 14 00 00          call   140002868 <_cexit>
   140001385:   8b 05 85 5c 00 00       mov    0x5c85(%rip),%eax        # 140007010 <mainret>
   14000138b:   48 83 c4 20             add    $0x20,%rsp
   14000138f:   5b                      pop    %rbx
   140001390:   5e                      pop    %rsi
   140001391:   5f                      pop    %rdi
   140001392:   5d                      pop    %rbp
   140001393:   41 5c                   pop    %r12
   140001395:   c3                      ret
   140001396:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
   14000139d:   00 00 00
   1400013a0:   48 8b 15 29 31 00 00    mov    0x3129(%rip),%rdx        # 1400044d0 <.refptr.__xi_z>
   1400013a7:   48 8b 0d 12 31 00 00    mov    0x3112(%rip),%rcx        # 1400044c0 <.refptr.__xi_a>
   1400013ae:   c7 06 01 00 00 00       movl   $0x1,(%rsi)
   1400013b4:   e8 ef 14 00 00          call   1400028a8 <_initterm>
   1400013b9:   e9 37 fe ff ff          jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:   66 90                   xchg   %ax,%ax
   1400013c0:   48 89 c7                mov    %rax,%rdi
   1400013c3:   e9 ed fe ff ff          jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:   89 c1                   mov    %eax,%ecx
   1400013ca:   e8 f9 14 00 00          call   1400028c8 <exit>
   1400013cf:   90                      nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:   48 83 ec 28             sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:   48 8b 05 45 30 00 00    mov    0x3045(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   1400013db:   c7 00 01 00 00 00       movl   $0x1,(%rax)
   1400013e1:   e8 9a fd ff ff          call   140001180 <__tmainCRTStartup>
   1400013e6:   90                      nop

00000001400013e7 <.l_endw>:
   1400013e7:   90                      nop
   1400013e8:   48 83 c4 28             add    $0x28,%rsp
   1400013ec:   c3                      ret
   1400013ed:   0f 1f 00                nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:   48 83 ec 28             sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:   48 8b 05 25 30 00 00    mov    0x3025(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   1400013fb:   c7 00 00 00 00 00       movl   $0x0,(%rax)
   140001401:   e8 7a fd ff ff          call   140001180 <__tmainCRTStartup>
   140001406:   90                      nop

0000000140001407 <.l_end>:
   140001407:   90                      nop
   140001408:   48 83 c4 28             add    $0x28,%rsp
   14000140c:   c3                      ret
   14000140d:   0f 1f 00                nopl   (%rax)

0000000140001410 <atexit>:
   140001410:   48 83 ec 28             sub    $0x28,%rsp
   140001414:   e8 a7 12 00 00          call   1400026c0 <_onexit>
   140001419:   48 83 f8 01             cmp    $0x1,%rax
   14000141d:   19 c0                   sbb    %eax,%eax
   14000141f:   48 83 c4 28             add    $0x28,%rsp
   140001423:   c3                      ret
   140001424:   90                      nop
   140001425:   90                      nop
   140001426:   90                      nop
   140001427:   90                      nop
   140001428:   90                      nop
   140001429:   90                      nop
   14000142a:   90                      nop
   14000142b:   90                      nop
   14000142c:   90                      nop
   14000142d:   90                      nop
   14000142e:   90                      nop
   14000142f:   90                      nop

0000000140001430 <__gcc_register_frame>:
   140001430:   48 8d 0d 09 00 00 00    lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:   e9 d4 ff ff ff          jmp    140001410 <atexit>
   14000143c:   0f 1f 40 00             nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:   c3                      ret
   140001441:   90                      nop
   140001442:   90                      nop
   140001443:   90                      nop
   140001444:   90                      nop
   140001445:   90                      nop
   140001446:   90                      nop
   140001447:   90                      nop
   140001448:   90                      nop
   140001449:   90                      nop
   14000144a:   90                      nop
   14000144b:   90                      nop
   14000144c:   90                      nop
   14000144d:   90                      nop
   14000144e:   90                      nop
   14000144f:   90                      nop

0000000140001450 <main>:
   140001450:   55                      push   %rbp
   140001451:   48 89 e5                mov    %rsp,%rbp
   140001454:   48 83 ec 30             sub    $0x30,%rsp
   140001458:   e8 03 01 00 00          call   140001560 <__main>
   14000145d:   c7 45 fc 05 00 00 00    movl   $0x5,-0x4(%rbp)
   140001464:   c7 45 f8 0a 00 00 00    movl   $0xa,-0x8(%rbp)
   14000146b:   c7 45 f4 00 00 00 00    movl   $0x0,-0xc(%rbp)
   140001472:   8b 45 fc                mov    -0x4(%rbp),%eax
   140001475:   0f af 45 f8             imul   -0x8(%rbp),%eax
   140001479:   89 45 f4                mov    %eax,-0xc(%rbp)
   14000147c:   8b 45 f4                mov    -0xc(%rbp),%eax
   14000147f:   89 c2                   mov    %eax,%edx
   140001481:   48 8b 05 18 2f 00 00    mov    0x2f18(%rip),%rax        # 1400043a0 <__fu0__ZSt4cout>
   140001488:   48 89 c1                mov    %rax,%rcx
   14000148b:   e8 10 00 00 00          call   1400014a0 <_ZNSolsEi>
   140001490:   b8 00 00 00 00          mov    $0x0,%eax
   140001495:   48 83 c4 30             add    $0x30,%rsp
   140001499:   5d                      pop    %rbp
   14000149a:   c3                      ret
   14000149b:   90                      nop
   14000149c:   90                      nop
   14000149d:   90                      nop
   14000149e:   90                      nop
   14000149f:   90                      nop

00000001400014a0 <_ZNSolsEi>:
   1400014a0:   ff 25 e2 6f 00 00       jmp    *0x6fe2(%rip)        # 140008488 <__imp__ZNSolsEi>
   1400014a6:   90                      nop
   1400014a7:   90                      nop
   1400014a8:   0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
   1400014af:   00

00000001400014b0 <__do_global_dtors>:
   1400014b0:   48 83 ec 28             sub    $0x28,%rsp
   1400014b4:   48 8b 05 45 1b 00 00    mov    0x1b45(%rip),%rax        # 140003000 <__data_start__>
   1400014bb:   48 8b 00                mov    (%rax),%rax
   1400014be:   48 85 c0                test   %rax,%rax
   1400014c1:   74 22                   je     1400014e5 <__do_global_dtors+0x35>
   1400014c3:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
   1400014c8:   ff d0                   call   *%rax
   1400014ca:   48 8b 05 2f 1b 00 00    mov    0x1b2f(%rip),%rax        # 140003000 <__data_start__>
   1400014d1:   48 8d 50 08             lea    0x8(%rax),%rdx
   1400014d5:   48 8b 40 08             mov    0x8(%rax),%rax
   1400014d9:   48 89 15 20 1b 00 00    mov    %rdx,0x1b20(%rip)        # 140003000 <__data_start__>
   1400014e0:   48 85 c0                test   %rax,%rax
   1400014e3:   75 e3                   jne    1400014c8 <__do_global_dtors+0x18>
   1400014e5:   48 83 c4 28             add    $0x28,%rsp
   1400014e9:   c3                      ret
   1400014ea:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

00000001400014f0 <__do_global_ctors>:
   1400014f0:   56                      push   %rsi
   1400014f1:   53                      push   %rbx
   1400014f2:   48 83 ec 28             sub    $0x28,%rsp
   1400014f6:   48 8b 15 b3 2e 00 00    mov    0x2eb3(%rip),%rdx        # 1400043b0 <.refptr.__CTOR_LIST__>
   1400014fd:   48 8b 02                mov    (%rdx),%rax
   140001500:   89 c1                   mov    %eax,%ecx
   140001502:   83 f8 ff                cmp    $0xffffffff,%eax
   140001505:   74 39                   je     140001540 <__do_global_ctors+0x50>
   140001507:   85 c9                   test   %ecx,%ecx
   140001509:   74 20                   je     14000152b <__do_global_ctors+0x3b>
   14000150b:   89 c8                   mov    %ecx,%eax
   14000150d:   83 e9 01                sub    $0x1,%ecx
   140001510:   48 8d 1c c2             lea    (%rdx,%rax,8),%rbx
   140001514:   48 29 c8                sub    %rcx,%rax
   140001517:   48 8d 74 c2 f8          lea    -0x8(%rdx,%rax,8),%rsi
   14000151c:   0f 1f 40 00             nopl   0x0(%rax)
   140001520:   ff 13                   call   *(%rbx)
   140001522:   48 83 eb 08             sub    $0x8,%rbx
   140001526:   48 39 f3                cmp    %rsi,%rbx
   140001529:   75 f5                   jne    140001520 <__do_global_ctors+0x30>
   14000152b:   48 8d 0d 7e ff ff ff    lea    -0x82(%rip),%rcx        # 1400014b0 <__do_global_dtors>
   140001532:   48 83 c4 28             add    $0x28,%rsp
   140001536:   5b                      pop    %rbx
   140001537:   5e                      pop    %rsi
   140001538:   e9 d3 fe ff ff          jmp    140001410 <atexit>
   14000153d:   0f 1f 00                nopl   (%rax)
   140001540:   31 c0                   xor    %eax,%eax
   140001542:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
   140001548:   44 8d 40 01             lea    0x1(%rax),%r8d
   14000154c:   89 c1                   mov    %eax,%ecx
   14000154e:   4a 83 3c c2 00          cmpq   $0x0,(%rdx,%r8,8)
   140001553:   4c 89 c0                mov    %r8,%rax
   140001556:   75 f0                   jne    140001548 <__do_global_ctors+0x58>
   140001558:   eb ad                   jmp    140001507 <__do_global_ctors+0x17>
   14000155a:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

0000000140001560 <__main>:
   140001560:   8b 05 ca 5a 00 00       mov    0x5aca(%rip),%eax        # 140007030 <initialized>
   140001566:   85 c0                   test   %eax,%eax
   140001568:   74 06                   je     140001570 <__main+0x10>
   14000156a:   c3                      ret
   14000156b:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
   140001570:   c7 05 b6 5a 00 00 01    movl   $0x1,0x5ab6(%rip)        # 140007030 <initialized>
   140001577:   00 00 00
   14000157a:   e9 71 ff ff ff          jmp    1400014f0 <__do_global_ctors>
   14000157f:   90                      nop

0000000140001580 <_setargv>:
   140001580:   31 c0                   xor    %eax,%eax
   140001582:   c3                      ret
   140001583:   90                      nop
   140001584:   90                      nop
   140001585:   90                      nop
   140001586:   90                      nop
   140001587:   90                      nop
   140001588:   90                      nop
   140001589:   90                      nop
   14000158a:   90                      nop
   14000158b:   90                      nop
   14000158c:   90                      nop
   14000158d:   90                      nop
   14000158e:   90                      nop
   14000158f:   90                      nop

0000000140001590 <__dyn_tls_dtor>:
   140001590:   48 83 ec 28             sub    $0x28,%rsp
   140001594:   83 fa 03                cmp    $0x3,%edx
   140001597:   74 17                   je     1400015b0 <__dyn_tls_dtor+0x20>
   140001599:   85 d2                   test   %edx,%edx
   14000159b:   74 13                   je     1400015b0 <__dyn_tls_dtor+0x20>
   14000159d:   b8 01 00 00 00          mov    $0x1,%eax
   1400015a2:   48 83 c4 28             add    $0x28,%rsp
   1400015a6:   c3                      ret
   1400015a7:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   1400015ae:   00 00
   1400015b0:   e8 7b 0a 00 00          call   140002030 <__mingw_TLScallback>
   1400015b5:   b8 01 00 00 00          mov    $0x1,%eax
   1400015ba:   48 83 c4 28             add    $0x28,%rsp
   1400015be:   c3                      ret
   1400015bf:   90                      nop

00000001400015c0 <__dyn_tls_init>:
   1400015c0:   56                      push   %rsi
   1400015c1:   53                      push   %rbx
   1400015c2:   48 83 ec 28             sub    $0x28,%rsp
   1400015c6:   48 8b 05 b3 2d 00 00    mov    0x2db3(%rip),%rax        # 140004380 <.refptr._CRT_MT>
   1400015cd:   83 38 02                cmpl   $0x2,(%rax)
   1400015d0:   74 06                   je     1400015d8 <__dyn_tls_init+0x18>
   1400015d2:   c7 00 02 00 00 00       movl   $0x2,(%rax)
   1400015d8:   83 fa 02                cmp    $0x2,%edx
   1400015db:   74 13                   je     1400015f0 <__dyn_tls_init+0x30>
   1400015dd:   83 fa 01                cmp    $0x1,%edx
   1400015e0:   74 4e                   je     140001630 <__dyn_tls_init+0x70>
   1400015e2:   b8 01 00 00 00          mov    $0x1,%eax
   1400015e7:   48 83 c4 28             add    $0x28,%rsp
   1400015eb:   5b                      pop    %rbx
   1400015ec:   5e                      pop    %rsi
   1400015ed:   c3                      ret
   1400015ee:   66 90                   xchg   %ax,%ax
   1400015f0:   48 8d 1d 61 7a 00 00    lea    0x7a61(%rip),%rbx        # 140009058 <__xd_z>
   1400015f7:   48 8d 35 5a 7a 00 00    lea    0x7a5a(%rip),%rsi        # 140009058 <__xd_z>
   1400015fe:   48 39 f3                cmp    %rsi,%rbx
   140001601:   74 df                   je     1400015e2 <__dyn_tls_init+0x22>
   140001603:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
   140001608:   48 8b 03                mov    (%rbx),%rax
   14000160b:   48 85 c0                test   %rax,%rax
   14000160e:   74 02                   je     140001612 <__dyn_tls_init+0x52>
   140001610:   ff d0                   call   *%rax
   140001612:   48 83 c3 08             add    $0x8,%rbx
   140001616:   48 39 f3                cmp    %rsi,%rbx
   140001619:   75 ed                   jne    140001608 <__dyn_tls_init+0x48>
   14000161b:   b8 01 00 00 00          mov    $0x1,%eax
   140001620:   48 83 c4 28             add    $0x28,%rsp
   140001624:   5b                      pop    %rbx
   140001625:   5e                      pop    %rsi
   140001626:   c3                      ret
   140001627:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   14000162e:   00 00
   140001630:   e8 fb 09 00 00          call   140002030 <__mingw_TLScallback>
   140001635:   b8 01 00 00 00          mov    $0x1,%eax
   14000163a:   48 83 c4 28             add    $0x28,%rsp
   14000163e:   5b                      pop    %rbx
   14000163f:   5e                      pop    %rsi
   140001640:   c3                      ret
   140001641:   66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
   140001648:   00 00 00 00
   14000164c:   0f 1f 40 00             nopl   0x0(%rax)

0000000140001650 <__tlregdtor>:
   140001650:   31 c0                   xor    %eax,%eax
   140001652:   c3                      ret
   140001653:   90                      nop
   140001654:   90                      nop
   140001655:   90                      nop
   140001656:   90                      nop
   140001657:   90                      nop
   140001658:   90                      nop
   140001659:   90                      nop
   14000165a:   90                      nop
   14000165b:   90                      nop
   14000165c:   90                      nop
   14000165d:   90                      nop
   14000165e:   90                      nop
   14000165f:   90                      nop

0000000140001660 <_matherr>:
   140001660:   56                      push   %rsi
   140001661:   53                      push   %rbx
   140001662:   48 83 ec 78             sub    $0x78,%rsp
   140001666:   0f 11 74 24 40          movups %xmm6,0x40(%rsp)
   14000166b:   0f 11 7c 24 50          movups %xmm7,0x50(%rsp)
   140001670:   44 0f 11 44 24 60       movups %xmm8,0x60(%rsp)
   140001676:   83 39 06                cmpl   $0x6,(%rcx)
   140001679:   0f 87 cd 00 00 00       ja     14000174c <_matherr+0xec>
   14000167f:   8b 01                   mov    (%rcx),%eax
   140001681:   48 8d 15 1c 2b 00 00    lea    0x2b1c(%rip),%rdx        # 1400041a4 <.rdata+0x124>
   140001688:   48 63 04 82             movslq (%rdx,%rax,4),%rax
   14000168c:   48 01 d0                add    %rdx,%rax
   14000168f:   ff e0                   jmp    *%rax
   140001691:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   140001698:   48 8d 1d 00 2a 00 00    lea    0x2a00(%rip),%rbx        # 14000409f <.rdata+0x1f>
   14000169f:   f2 44 0f 10 41 20       movsd  0x20(%rcx),%xmm8
   1400016a5:   f2 0f 10 79 18          movsd  0x18(%rcx),%xmm7
   1400016aa:   f2 0f 10 71 10          movsd  0x10(%rcx),%xmm6
   1400016af:   48 8b 71 08             mov    0x8(%rcx),%rsi
   1400016b3:   b9 02 00 00 00          mov    $0x2,%ecx
   1400016b8:   e8 63 11 00 00          call   140002820 <__acrt_iob_func>
   1400016bd:   f2 44 0f 11 44 24 30    movsd  %xmm8,0x30(%rsp)
   1400016c4:   49 89 d8                mov    %rbx,%r8
   1400016c7:   48 8d 15 aa 2a 00 00    lea    0x2aaa(%rip),%rdx        # 140004178 <.rdata+0xf8>
   1400016ce:   f2 0f 11 7c 24 28       movsd  %xmm7,0x28(%rsp)
   1400016d4:   48 89 c1                mov    %rax,%rcx
   1400016d7:   49 89 f1                mov    %rsi,%r9
   1400016da:   f2 0f 11 74 24 20       movsd  %xmm6,0x20(%rsp)
   1400016e0:   e8 ab 0e 00 00          call   140002590 <fprintf>
   1400016e5:   90                      nop
   1400016e6:   0f 10 74 24 40          movups 0x40(%rsp),%xmm6
   1400016eb:   0f 10 7c 24 50          movups 0x50(%rsp),%xmm7
   1400016f0:   31 c0                   xor    %eax,%eax
   1400016f2:   44 0f 10 44 24 60       movups 0x60(%rsp),%xmm8
   1400016f8:   48 83 c4 78             add    $0x78,%rsp
   1400016fc:   5b                      pop    %rbx
   1400016fd:   5e                      pop    %rsi
   1400016fe:   c3                      ret
   1400016ff:   90                      nop
   140001700:   48 8d 1d 79 29 00 00    lea    0x2979(%rip),%rbx        # 140004080 <.rdata>
   140001707:   eb 96                   jmp    14000169f <_matherr+0x3f>
   140001709:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   140001710:   48 8d 1d c9 29 00 00    lea    0x29c9(%rip),%rbx        # 1400040e0 <.rdata+0x60>
   140001717:   eb 86                   jmp    14000169f <_matherr+0x3f>
   140001719:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   140001720:   48 8d 1d 99 29 00 00    lea    0x2999(%rip),%rbx        # 1400040c0 <.rdata+0x40>
   140001727:   e9 73 ff ff ff          jmp    14000169f <_matherr+0x3f>
   14000172c:   0f 1f 40 00             nopl   0x0(%rax)
   140001730:   48 8d 1d f9 29 00 00    lea    0x29f9(%rip),%rbx        # 140004130 <.rdata+0xb0>
   140001737:   e9 63 ff ff ff          jmp    14000169f <_matherr+0x3f>
   14000173c:   0f 1f 40 00             nopl   0x0(%rax)
   140001740:   48 8d 1d c1 29 00 00    lea    0x29c1(%rip),%rbx        # 140004108 <.rdata+0x88>
   140001747:   e9 53 ff ff ff          jmp    14000169f <_matherr+0x3f>
   14000174c:   48 8d 1d 13 2a 00 00    lea    0x2a13(%rip),%rbx        # 140004166 <.rdata+0xe6>
   140001753:   e9 47 ff ff ff          jmp    14000169f <_matherr+0x3f>
   140001758:   90                      nop
   140001759:   90                      nop
   14000175a:   90                      nop
   14000175b:   90                      nop
   14000175c:   90                      nop
   14000175d:   90                      nop
   14000175e:   90                      nop
   14000175f:   90                      nop

0000000140001760 <_fpreset>:
   140001760:   db e3                   fninit
   140001762:   c3                      ret
   140001763:   90                      nop
   140001764:   90                      nop
   140001765:   90                      nop
   140001766:   90                      nop
   140001767:   90                      nop
   140001768:   90                      nop
   140001769:   90                      nop
   14000176a:   90                      nop
   14000176b:   90                      nop
   14000176c:   90                      nop
   14000176d:   90                      nop
   14000176e:   90                      nop
   14000176f:   90                      nop

0000000140001770 <__report_error>:
   140001770:   56                      push   %rsi
   140001771:   53                      push   %rbx
   140001772:   48 83 ec 38             sub    $0x38,%rsp
   140001776:   48 89 cb                mov    %rcx,%rbx
   140001779:   48 8d 44 24 58          lea    0x58(%rsp),%rax
   14000177e:   b9 02 00 00 00          mov    $0x2,%ecx
   140001783:   48 89 54 24 58          mov    %rdx,0x58(%rsp)
   140001788:   4c 89 44 24 60          mov    %r8,0x60(%rsp)
   14000178d:   4c 89 4c 24 68          mov    %r9,0x68(%rsp)
   140001792:   48 89 44 24 28          mov    %rax,0x28(%rsp)
   140001797:   e8 84 10 00 00          call   140002820 <__acrt_iob_func>
   14000179c:   41 b8 1b 00 00 00       mov    $0x1b,%r8d
   1400017a2:   ba 01 00 00 00          mov    $0x1,%edx
   1400017a7:   48 8d 0d 12 2a 00 00    lea    0x2a12(%rip),%rcx        # 1400041c0 <.rdata>
   1400017ae:   49 89 c1                mov    %rax,%r9
   1400017b1:   e8 92 10 00 00          call   140002848 <fwrite>
   1400017b6:   48 8b 74 24 28          mov    0x28(%rsp),%rsi
   1400017bb:   b9 02 00 00 00          mov    $0x2,%ecx
   1400017c0:   e8 5b 10 00 00          call   140002820 <__acrt_iob_func>
   1400017c5:   48 89 da                mov    %rbx,%rdx
   1400017c8:   48 89 c1                mov    %rax,%rcx
   1400017cb:   49 89 f0                mov    %rsi,%r8
   1400017ce:   e8 9d 0d 00 00          call   140002570 <vfprintf>
   1400017d3:   e8 e8 10 00 00          call   1400028c0 <abort>
   1400017d8:   90                      nop
   1400017d9:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)

00000001400017e0 <mark_section_writable>:
   1400017e0:   57                      push   %rdi
   1400017e1:   56                      push   %rsi
   1400017e2:   53                      push   %rbx
   1400017e3:   48 83 ec 50             sub    $0x50,%rsp
   1400017e7:   48 63 35 a6 58 00 00    movslq 0x58a6(%rip),%rsi        # 140007094 <maxSections>
   1400017ee:   48 89 cb                mov    %rcx,%rbx
   1400017f1:   85 f6                   test   %esi,%esi
   1400017f3:   0f 8e 17 01 00 00       jle    140001910 <mark_section_writable+0x130>
   1400017f9:   48 8b 05 98 58 00 00    mov    0x5898(%rip),%rax        # 140007098 <the_secs>
   140001800:   45 31 c9                xor    %r9d,%r9d
   140001803:   48 83 c0 18             add    $0x18,%rax
   140001807:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   14000180e:   00 00
   140001810:   4c 8b 00                mov    (%rax),%r8
   140001813:   4c 39 c3                cmp    %r8,%rbx
   140001816:   72 13                   jb     14000182b <mark_section_writable+0x4b>
   140001818:   48 8b 50 08             mov    0x8(%rax),%rdx
   14000181c:   8b 52 08                mov    0x8(%rdx),%edx
   14000181f:   49 01 d0                add    %rdx,%r8
   140001822:   4c 39 c3                cmp    %r8,%rbx
   140001825:   0f 82 8a 00 00 00       jb     1400018b5 <mark_section_writable+0xd5>
   14000182b:   41 83 c1 01             add    $0x1,%r9d
   14000182f:   48 83 c0 28             add    $0x28,%rax
   140001833:   41 39 f1                cmp    %esi,%r9d
   140001836:   75 d8                   jne    140001810 <mark_section_writable+0x30>
   140001838:   48 89 d9                mov    %rbx,%rcx
   14000183b:   e8 10 0a 00 00          call   140002250 <__mingw_GetSectionForAddress>
   140001840:   48 89 c7                mov    %rax,%rdi
   140001843:   48 85 c0                test   %rax,%rax
   140001846:   0f 84 e6 00 00 00       je     140001932 <mark_section_writable+0x152>
   14000184c:   48 8b 05 45 58 00 00    mov    0x5845(%rip),%rax        # 140007098 <the_secs>
   140001853:   48 8d 1c b6             lea    (%rsi,%rsi,4),%rbx
   140001857:   48 c1 e3 03             shl    $0x3,%rbx
   14000185b:   48 01 d8                add    %rbx,%rax
   14000185e:   48 89 78 20             mov    %rdi,0x20(%rax)
   140001862:   c7 00 00 00 00 00       movl   $0x0,(%rax)
   140001868:   e8 23 0b 00 00          call   140002390 <_GetPEImageBase>
   14000186d:   8b 57 0c                mov    0xc(%rdi),%edx
   140001870:   41 b8 30 00 00 00       mov    $0x30,%r8d
   140001876:   48 8d 0c 10             lea    (%rax,%rdx,1),%rcx
   14000187a:   48 8b 05 17 58 00 00    mov    0x5817(%rip),%rax        # 140007098 <the_secs>
   140001881:   48 8d 54 24 20          lea    0x20(%rsp),%rdx
   140001886:   48 89 4c 18 18          mov    %rcx,0x18(%rax,%rbx,1)
   14000188b:   ff 15 77 6a 00 00       call   *0x6a77(%rip)        # 140008308 <__imp_VirtualQuery>
   140001891:   48 85 c0                test   %rax,%rax
   140001894:   0f 84 7d 00 00 00       je     140001917 <mark_section_writable+0x137>
   14000189a:   8b 44 24 44             mov    0x44(%rsp),%eax
   14000189e:   8d 50 fc                lea    -0x4(%rax),%edx
   1400018a1:   83 e2 fb                and    $0xfffffffb,%edx
   1400018a4:   74 08                   je     1400018ae <mark_section_writable+0xce>
   1400018a6:   8d 50 c0                lea    -0x40(%rax),%edx
   1400018a9:   83 e2 bf                and    $0xffffffbf,%edx
   1400018ac:   75 12                   jne    1400018c0 <mark_section_writable+0xe0>
   1400018ae:   83 05 df 57 00 00 01    addl   $0x1,0x57df(%rip)        # 140007094 <maxSections>
   1400018b5:   48 83 c4 50             add    $0x50,%rsp
   1400018b9:   5b                      pop    %rbx
   1400018ba:   5e                      pop    %rsi
   1400018bb:   5f                      pop    %rdi
   1400018bc:   c3                      ret
   1400018bd:   0f 1f 00                nopl   (%rax)
   1400018c0:   83 f8 02                cmp    $0x2,%eax
   1400018c3:   48 8b 4c 24 20          mov    0x20(%rsp),%rcx
   1400018c8:   48 8b 54 24 38          mov    0x38(%rsp),%rdx
   1400018cd:   41 b8 40 00 00 00       mov    $0x40,%r8d
   1400018d3:   b8 04 00 00 00          mov    $0x4,%eax
   1400018d8:   44 0f 44 c0             cmove  %eax,%r8d
   1400018dc:   48 03 1d b5 57 00 00    add    0x57b5(%rip),%rbx        # 140007098 <the_secs>
   1400018e3:   48 89 4b 08             mov    %rcx,0x8(%rbx)
   1400018e7:   49 89 d9                mov    %rbx,%r9
   1400018ea:   48 89 53 10             mov    %rdx,0x10(%rbx)
   1400018ee:   ff 15 0c 6a 00 00       call   *0x6a0c(%rip)        # 140008300 <__imp_VirtualProtect>
   1400018f4:   85 c0                   test   %eax,%eax
   1400018f6:   75 b6                   jne    1400018ae <mark_section_writable+0xce>
   1400018f8:   ff 15 d2 69 00 00       call   *0x69d2(%rip)        # 1400082d0 <__imp_GetLastError>
   1400018fe:   48 8d 0d 33 29 00 00    lea    0x2933(%rip),%rcx        # 140004238 <.rdata+0x78>
   140001905:   89 c2                   mov    %eax,%edx
   140001907:   e8 64 fe ff ff          call   140001770 <__report_error>
   14000190c:   0f 1f 40 00             nopl   0x0(%rax)
   140001910:   31 f6                   xor    %esi,%esi
   140001912:   e9 21 ff ff ff          jmp    140001838 <mark_section_writable+0x58>
   140001917:   48 8b 05 7a 57 00 00    mov    0x577a(%rip),%rax        # 140007098 <the_secs>
   14000191e:   8b 57 08                mov    0x8(%rdi),%edx
   140001921:   48 8d 0d d8 28 00 00    lea    0x28d8(%rip),%rcx        # 140004200 <.rdata+0x40>
   140001928:   4c 8b 44 18 18          mov    0x18(%rax,%rbx,1),%r8
   14000192d:   e8 3e fe ff ff          call   140001770 <__report_error>
   140001932:   48 89 da                mov    %rbx,%rdx
   140001935:   48 8d 0d a4 28 00 00    lea    0x28a4(%rip),%rcx        # 1400041e0 <.rdata+0x20>
   14000193c:   e8 2f fe ff ff          call   140001770 <__report_error>
   140001941:   90                      nop
   140001942:   66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
   140001949:   00 00 00 00
   14000194d:   0f 1f 00                nopl   (%rax)

0000000140001950 <_pei386_runtime_relocator>:
   140001950:   55                      push   %rbp
   140001951:   41 57                   push   %r15
   140001953:   41 56                   push   %r14
   140001955:   41 55                   push   %r13
   140001957:   41 54                   push   %r12
   140001959:   57                      push   %rdi
   14000195a:   56                      push   %rsi
   14000195b:   53                      push   %rbx
   14000195c:   48 83 ec 48             sub    $0x48,%rsp
   140001960:   48 8d 6c 24 40          lea    0x40(%rsp),%rbp
   140001965:   44 8b 25 24 57 00 00    mov    0x5724(%rip),%r12d        # 140007090 <was_init.0>
   14000196c:   45 85 e4                test   %r12d,%r12d
   14000196f:   74 17                   je     140001988 <_pei386_runtime_relocator+0x38>
   140001971:   48 8d 65 08             lea    0x8(%rbp),%rsp
   140001975:   5b                      pop    %rbx
   140001976:   5e                      pop    %rsi
   140001977:   5f                      pop    %rdi
   140001978:   41 5c                   pop    %r12
   14000197a:   41 5d                   pop    %r13
   14000197c:   41 5e                   pop    %r14
   14000197e:   41 5f                   pop    %r15
   140001980:   5d                      pop    %rbp
   140001981:   c3                      ret
   140001982:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
   140001988:   c7 05 fe 56 00 00 01    movl   $0x1,0x56fe(%rip)        # 140007090 <was_init.0>
   14000198f:   00 00 00
   140001992:   e8 39 09 00 00          call   1400022d0 <__mingw_GetSectionCount>
   140001997:   48 98                   cltq
   140001999:   48 8d 04 80             lea    (%rax,%rax,4),%rax
   14000199d:   48 8d 04 c5 0f 00 00    lea    0xf(,%rax,8),%rax
   1400019a4:   00
   1400019a5:   48 83 e0 f0             and    $0xfffffffffffffff0,%rax
   1400019a9:   e8 82 0b 00 00          call   140002530 <___chkstk_ms>
   1400019ae:   4c 8b 2d 1b 2a 00 00    mov    0x2a1b(%rip),%r13        # 1400043d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400019b5:   48 8b 1d 24 2a 00 00    mov    0x2a24(%rip),%rbx        # 1400043e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400019bc:   c7 05 ce 56 00 00 00    movl   $0x0,0x56ce(%rip)        # 140007094 <maxSections>
   1400019c3:   00 00 00
   1400019c6:   48 29 c4                sub    %rax,%rsp
   1400019c9:   48 8d 44 24 30          lea    0x30(%rsp),%rax
   1400019ce:   48 89 05 c3 56 00 00    mov    %rax,0x56c3(%rip)        # 140007098 <the_secs>
   1400019d5:   4c 89 e8                mov    %r13,%rax
   1400019d8:   48 29 d8                sub    %rbx,%rax
   1400019db:   48 83 f8 07             cmp    $0x7,%rax
   1400019df:   7e 90                   jle    140001971 <_pei386_runtime_relocator+0x21>
   1400019e1:   8b 13                   mov    (%rbx),%edx
   1400019e3:   48 83 f8 0b             cmp    $0xb,%rax
   1400019e7:   0f 8f 03 01 00 00       jg     140001af0 <_pei386_runtime_relocator+0x1a0>
   1400019ed:   8b 03                   mov    (%rbx),%eax
   1400019ef:   85 c0                   test   %eax,%eax
   1400019f1:   0f 85 69 02 00 00       jne    140001c60 <_pei386_runtime_relocator+0x310>
   1400019f7:   8b 43 04                mov    0x4(%rbx),%eax
   1400019fa:   85 c0                   test   %eax,%eax
   1400019fc:   0f 85 5e 02 00 00       jne    140001c60 <_pei386_runtime_relocator+0x310>
   140001a02:   8b 53 08                mov    0x8(%rbx),%edx
   140001a05:   83 fa 01                cmp    $0x1,%edx
   140001a08:   0f 85 92 02 00 00       jne    140001ca0 <_pei386_runtime_relocator+0x350>
   140001a0e:   48 83 c3 0c             add    $0xc,%rbx
   140001a12:   4c 39 eb                cmp    %r13,%rbx
   140001a15:   0f 83 56 ff ff ff       jae    140001971 <_pei386_runtime_relocator+0x21>
   140001a1b:   4c 8b 35 9e 29 00 00    mov    0x299e(%rip),%r14        # 1400043c0 <.refptr.__ImageBase>
   140001a22:   41 bf ff ff ff ff       mov    $0xffffffff,%r15d
   140001a28:   eb 65                   jmp    140001a8f <_pei386_runtime_relocator+0x13f>
   140001a2a:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
   140001a30:   83 f9 08                cmp    $0x8,%ecx
   140001a33:   0f 84 d7 00 00 00       je     140001b10 <_pei386_runtime_relocator+0x1c0>
   140001a39:   83 f9 10                cmp    $0x10,%ecx
   140001a3c:   0f 85 50 02 00 00       jne    140001c92 <_pei386_runtime_relocator+0x342>
   140001a42:   0f b7 37                movzwl (%rdi),%esi
   140001a45:   81 e2 c0 00 00 00       and    $0xc0,%edx
   140001a4b:   66 85 f6                test   %si,%si
   140001a4e:   0f 89 cc 01 00 00       jns    140001c20 <_pei386_runtime_relocator+0x2d0>
   140001a54:   48 81 ce 00 00 ff ff    or     $0xffffffffffff0000,%rsi
   140001a5b:   48 29 c6                sub    %rax,%rsi
   140001a5e:   4c 01 ce                add    %r9,%rsi
   140001a61:   85 d2                   test   %edx,%edx
   140001a63:   75 12                   jne    140001a77 <_pei386_runtime_relocator+0x127>
   140001a65:   48 81 fe 00 80 ff ff    cmp    $0xffffffffffff8000,%rsi
   140001a6c:   7c 65                   jl     140001ad3 <_pei386_runtime_relocator+0x183>
   140001a6e:   48 81 fe ff ff 00 00    cmp    $0xffff,%rsi
   140001a75:   7f 5c                   jg     140001ad3 <_pei386_runtime_relocator+0x183>
   140001a77:   48 89 f9                mov    %rdi,%rcx
   140001a7a:   e8 61 fd ff ff          call   1400017e0 <mark_section_writable>
   140001a7f:   66 89 37                mov    %si,(%rdi)
   140001a82:   48 83 c3 0c             add    $0xc,%rbx
   140001a86:   4c 39 eb                cmp    %r13,%rbx
   140001a89:   0f 83 d1 00 00 00       jae    140001b60 <_pei386_runtime_relocator+0x210>
   140001a8f:   8b 03                   mov    (%rbx),%eax
   140001a91:   8b 53 08                mov    0x8(%rbx),%edx
   140001a94:   8b 7b 04                mov    0x4(%rbx),%edi
   140001a97:   4c 01 f0                add    %r14,%rax
   140001a9a:   0f b6 ca                movzbl %dl,%ecx
   140001a9d:   4c 8b 08                mov    (%rax),%r9
   140001aa0:   4c 01 f7                add    %r14,%rdi
   140001aa3:   83 f9 20                cmp    $0x20,%ecx
   140001aa6:   0f 84 0c 01 00 00       je     140001bb8 <_pei386_runtime_relocator+0x268>
   140001aac:   76 82                   jbe    140001a30 <_pei386_runtime_relocator+0xe0>
   140001aae:   83 f9 40                cmp    $0x40,%ecx
   140001ab1:   0f 85 db 01 00 00       jne    140001c92 <_pei386_runtime_relocator+0x342>
   140001ab7:   48 8b 37                mov    (%rdi),%rsi
   140001aba:   89 d1                   mov    %edx,%ecx
   140001abc:   48 29 c6                sub    %rax,%rsi
   140001abf:   4c 01 ce                add    %r9,%rsi
   140001ac2:   81 e1 c0 00 00 00       and    $0xc0,%ecx
   140001ac8:   0f 85 42 01 00 00       jne    140001c10 <_pei386_runtime_relocator+0x2c0>
   140001ace:   48 85 f6                test   %rsi,%rsi
   140001ad1:   78 af                   js     140001a82 <_pei386_runtime_relocator+0x132>
   140001ad3:   48 89 74 24 20          mov    %rsi,0x20(%rsp)
   140001ad8:   89 ca                   mov    %ecx,%edx
   140001ada:   49 89 f8                mov    %rdi,%r8
   140001add:   48 8d 0d e4 27 00 00    lea    0x27e4(%rip),%rcx        # 1400042c8 <.rdata+0x108>
   140001ae4:   e8 87 fc ff ff          call   140001770 <__report_error>
   140001ae9:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   140001af0:   85 d2                   test   %edx,%edx
   140001af2:   0f 85 68 01 00 00       jne    140001c60 <_pei386_runtime_relocator+0x310>
   140001af8:   8b 43 04                mov    0x4(%rbx),%eax
   140001afb:   89 c2                   mov    %eax,%edx
   140001afd:   0b 53 08                or     0x8(%rbx),%edx
   140001b00:   0f 85 f4 fe ff ff       jne    1400019fa <_pei386_runtime_relocator+0xaa>
   140001b06:   48 83 c3 0c             add    $0xc,%rbx
   140001b0a:   e9 de fe ff ff          jmp    1400019ed <_pei386_runtime_relocator+0x9d>
   140001b0f:   90                      nop
   140001b10:   0f b6 37                movzbl (%rdi),%esi
   140001b13:   81 e2 c0 00 00 00       and    $0xc0,%edx
   140001b19:   40 84 f6                test   %sil,%sil
   140001b1c:   0f 89 26 01 00 00       jns    140001c48 <_pei386_runtime_relocator+0x2f8>
   140001b22:   48 81 ce 00 ff ff ff    or     $0xffffffffffffff00,%rsi
   140001b29:   48 29 c6                sub    %rax,%rsi
   140001b2c:   4c 01 ce                add    %r9,%rsi
   140001b2f:   85 d2                   test   %edx,%edx
   140001b31:   75 0f                   jne    140001b42 <_pei386_runtime_relocator+0x1f2>
   140001b33:   48 81 fe ff 00 00 00    cmp    $0xff,%rsi
   140001b3a:   7f 97                   jg     140001ad3 <_pei386_runtime_relocator+0x183>
   140001b3c:   48 83 fe 80             cmp    $0xffffffffffffff80,%rsi
   140001b40:   7c 91                   jl     140001ad3 <_pei386_runtime_relocator+0x183>
   140001b42:   48 89 f9                mov    %rdi,%rcx
   140001b45:   48 83 c3 0c             add    $0xc,%rbx
   140001b49:   e8 92 fc ff ff          call   1400017e0 <mark_section_writable>
   140001b4e:   40 88 37                mov    %sil,(%rdi)
   140001b51:   4c 39 eb                cmp    %r13,%rbx
   140001b54:   0f 82 35 ff ff ff       jb     140001a8f <_pei386_runtime_relocator+0x13f>
   140001b5a:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
   140001b60:   8b 15 2e 55 00 00       mov    0x552e(%rip),%edx        # 140007094 <maxSections>
   140001b66:   85 d2                   test   %edx,%edx
   140001b68:   0f 8e 03 fe ff ff       jle    140001971 <_pei386_runtime_relocator+0x21>
   140001b6e:   48 8b 35 8b 67 00 00    mov    0x678b(%rip),%rsi        # 140008300 <__imp_VirtualProtect>
   140001b75:   31 db                   xor    %ebx,%ebx
   140001b77:   48 8d 7d fc             lea    -0x4(%rbp),%rdi
   140001b7b:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
   140001b80:   48 8b 05 11 55 00 00    mov    0x5511(%rip),%rax        # 140007098 <the_secs>
   140001b87:   48 01 d8                add    %rbx,%rax
   140001b8a:   44 8b 00                mov    (%rax),%r8d
   140001b8d:   45 85 c0                test   %r8d,%r8d
   140001b90:   74 0d                   je     140001b9f <_pei386_runtime_relocator+0x24f>
   140001b92:   48 8b 50 10             mov    0x10(%rax),%rdx
   140001b96:   48 8b 48 08             mov    0x8(%rax),%rcx
   140001b9a:   49 89 f9                mov    %rdi,%r9
   140001b9d:   ff d6                   call   *%rsi
   140001b9f:   41 83 c4 01             add    $0x1,%r12d
   140001ba3:   48 83 c3 28             add    $0x28,%rbx
   140001ba7:   44 3b 25 e6 54 00 00    cmp    0x54e6(%rip),%r12d        # 140007094 <maxSections>
   140001bae:   7c d0                   jl     140001b80 <_pei386_runtime_relocator+0x230>
   140001bb0:   e9 bc fd ff ff          jmp    140001971 <_pei386_runtime_relocator+0x21>
   140001bb5:   0f 1f 00                nopl   (%rax)
   140001bb8:   8b 37                   mov    (%rdi),%esi
   140001bba:   81 e2 c0 00 00 00       and    $0xc0,%edx
   140001bc0:   85 f6                   test   %esi,%esi
   140001bc2:   79 74                   jns    140001c38 <_pei386_runtime_relocator+0x2e8>
   140001bc4:   49 bb 00 00 00 00 ff    movabs $0xffffffff00000000,%r11
   140001bcb:   ff ff ff
   140001bce:   4c 09 de                or     %r11,%rsi
   140001bd1:   48 29 c6                sub    %rax,%rsi
   140001bd4:   4c 01 ce                add    %r9,%rsi
   140001bd7:   85 d2                   test   %edx,%edx
   140001bd9:   75 1c                   jne    140001bf7 <_pei386_runtime_relocator+0x2a7>
   140001bdb:   4c 39 fe                cmp    %r15,%rsi
   140001bde:   0f 8f ef fe ff ff       jg     140001ad3 <_pei386_runtime_relocator+0x183>
   140001be4:   48 b8 ff ff ff 7f ff    movabs $0xffffffff7fffffff,%rax
   140001beb:   ff ff ff
   140001bee:   48 39 c6                cmp    %rax,%rsi
   140001bf1:   0f 8e dc fe ff ff       jle    140001ad3 <_pei386_runtime_relocator+0x183>
   140001bf7:   48 89 f9                mov    %rdi,%rcx
   140001bfa:   e8 e1 fb ff ff          call   1400017e0 <mark_section_writable>
   140001bff:   89 37                   mov    %esi,(%rdi)
   140001c01:   e9 7c fe ff ff          jmp    140001a82 <_pei386_runtime_relocator+0x132>
   140001c06:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
   140001c0d:   00 00 00
   140001c10:   48 89 f9                mov    %rdi,%rcx
   140001c13:   e8 c8 fb ff ff          call   1400017e0 <mark_section_writable>
   140001c18:   48 89 37                mov    %rsi,(%rdi)
   140001c1b:   e9 62 fe ff ff          jmp    140001a82 <_pei386_runtime_relocator+0x132>
   140001c20:   48 29 c6                sub    %rax,%rsi
   140001c23:   4c 01 ce                add    %r9,%rsi
   140001c26:   85 d2                   test   %edx,%edx
   140001c28:   0f 84 37 fe ff ff       je     140001a65 <_pei386_runtime_relocator+0x115>
   140001c2e:   e9 44 fe ff ff          jmp    140001a77 <_pei386_runtime_relocator+0x127>
   140001c33:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
   140001c38:   48 29 c6                sub    %rax,%rsi
   140001c3b:   4c 01 ce                add    %r9,%rsi
   140001c3e:   85 d2                   test   %edx,%edx
   140001c40:   74 99                   je     140001bdb <_pei386_runtime_relocator+0x28b>
   140001c42:   eb b3                   jmp    140001bf7 <_pei386_runtime_relocator+0x2a7>
   140001c44:   0f 1f 40 00             nopl   0x0(%rax)
   140001c48:   48 29 c6                sub    %rax,%rsi
   140001c4b:   4c 01 ce                add    %r9,%rsi
   140001c4e:   85 d2                   test   %edx,%edx
   140001c50:   0f 84 dd fe ff ff       je     140001b33 <_pei386_runtime_relocator+0x1e3>
   140001c56:   e9 e7 fe ff ff          jmp    140001b42 <_pei386_runtime_relocator+0x1f2>
   140001c5b:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
   140001c60:   4c 39 eb                cmp    %r13,%rbx
   140001c63:   0f 83 08 fd ff ff       jae    140001971 <_pei386_runtime_relocator+0x21>
   140001c69:   4c 8b 35 50 27 00 00    mov    0x2750(%rip),%r14        # 1400043c0 <.refptr.__ImageBase>
   140001c70:   8b 73 04                mov    0x4(%rbx),%esi
   140001c73:   8b 3b                   mov    (%rbx),%edi
   140001c75:   48 83 c3 08             add    $0x8,%rbx
   140001c79:   4c 01 f6                add    %r14,%rsi
   140001c7c:   03 3e                   add    (%rsi),%edi
   140001c7e:   48 89 f1                mov    %rsi,%rcx
   140001c81:   e8 5a fb ff ff          call   1400017e0 <mark_section_writable>
   140001c86:   89 3e                   mov    %edi,(%rsi)
   140001c88:   4c 39 eb                cmp    %r13,%rbx
   140001c8b:   72 e3                   jb     140001c70 <_pei386_runtime_relocator+0x320>
   140001c8d:   e9 ce fe ff ff          jmp    140001b60 <_pei386_runtime_relocator+0x210>
   140001c92:   89 ca                   mov    %ecx,%edx
   140001c94:   48 8d 0d fd 25 00 00    lea    0x25fd(%rip),%rcx        # 140004298 <.rdata+0xd8>
   140001c9b:   e8 d0 fa ff ff          call   140001770 <__report_error>
   140001ca0:   48 8d 0d b9 25 00 00    lea    0x25b9(%rip),%rcx        # 140004260 <.rdata+0xa0>
   140001ca7:   e8 c4 fa ff ff          call   140001770 <__report_error>
   140001cac:   90                      nop
   140001cad:   90                      nop
   140001cae:   90                      nop
   140001caf:   90                      nop

0000000140001cb0 <__mingw_raise_matherr>:
   140001cb0:   48 83 ec 58             sub    $0x58,%rsp
   140001cb4:   48 8b 05 e5 53 00 00    mov    0x53e5(%rip),%rax        # 1400070a0 <stUserMathErr>
   140001cbb:   66 0f 14 d3             unpcklpd %xmm3,%xmm2
   140001cbf:   48 85 c0                test   %rax,%rax
   140001cc2:   74 25                   je     140001ce9 <__mingw_raise_matherr+0x39>
   140001cc4:   f2 0f 10 84 24 80 00    movsd  0x80(%rsp),%xmm0
   140001ccb:   00 00
   140001ccd:   89 4c 24 20             mov    %ecx,0x20(%rsp)
   140001cd1:   48 8d 4c 24 20          lea    0x20(%rsp),%rcx
   140001cd6:   48 89 54 24 28          mov    %rdx,0x28(%rsp)
   140001cdb:   0f 11 54 24 30          movups %xmm2,0x30(%rsp)
   140001ce0:   f2 0f 11 44 24 40       movsd  %xmm0,0x40(%rsp)
   140001ce6:   ff d0                   call   *%rax
   140001ce8:   90                      nop
   140001ce9:   48 83 c4 58             add    $0x58,%rsp
   140001ced:   c3                      ret
   140001cee:   66 90                   xchg   %ax,%ax

0000000140001cf0 <__mingw_setusermatherr>:
   140001cf0:   48 89 0d a9 53 00 00    mov    %rcx,0x53a9(%rip)        # 1400070a0 <stUserMathErr>
   140001cf7:   e9 f4 0b 00 00          jmp    1400028f0 <__setusermatherr>
   140001cfc:   90                      nop
   140001cfd:   90                      nop
   140001cfe:   90                      nop
   140001cff:   90                      nop

0000000140001d00 <_gnu_exception_handler>:
   140001d00:   53                      push   %rbx
   140001d01:   48 83 ec 20             sub    $0x20,%rsp
   140001d05:   48 8b 11                mov    (%rcx),%rdx
   140001d08:   8b 02                   mov    (%rdx),%eax
   140001d0a:   48 89 cb                mov    %rcx,%rbx
   140001d0d:   89 c1                   mov    %eax,%ecx
   140001d0f:   81 e1 ff ff ff 20       and    $0x20ffffff,%ecx
   140001d15:   81 f9 43 43 47 20       cmp    $0x20474343,%ecx
   140001d1b:   0f 84 bf 00 00 00       je     140001de0 <_gnu_exception_handler+0xe0>
   140001d21:   3d 96 00 00 c0          cmp    $0xc0000096,%eax
   140001d26:   77 47                   ja     140001d6f <_gnu_exception_handler+0x6f>
   140001d28:   3d 8b 00 00 c0          cmp    $0xc000008b,%eax
   140001d2d:   76 61                   jbe    140001d90 <_gnu_exception_handler+0x90>
   140001d2f:   05 73 ff ff 3f          add    $0x3fffff73,%eax
   140001d34:   83 f8 09                cmp    $0x9,%eax
   140001d37:   0f 87 93 00 00 00       ja     140001dd0 <_gnu_exception_handler+0xd0>
   140001d3d:   48 8d 15 dc 25 00 00    lea    0x25dc(%rip),%rdx        # 140004320 <.rdata>
   140001d44:   48 63 04 82             movslq (%rdx,%rax,4),%rax
   140001d48:   48 01 d0                add    %rdx,%rax
   140001d4b:   ff e0                   jmp    *%rax
   140001d4d:   0f 1f 00                nopl   (%rax)
   140001d50:   31 d2                   xor    %edx,%edx
   140001d52:   b9 08 00 00 00          mov    $0x8,%ecx
   140001d57:   e8 74 0b 00 00          call   1400028d0 <signal>
   140001d5c:   48 83 f8 01             cmp    $0x1,%rax
   140001d60:   0f 84 3e 01 00 00       je     140001ea4 <_gnu_exception_handler+0x1a4>
   140001d66:   48 85 c0                test   %rax,%rax
   140001d69:   0f 85 01 01 00 00       jne    140001e70 <_gnu_exception_handler+0x170>
   140001d6f:   48 8b 05 4a 53 00 00    mov    0x534a(%rip),%rax        # 1400070c0 <__mingw_oldexcpt_handler>
   140001d76:   48 85 c0                test   %rax,%rax
   140001d79:   74 75                   je     140001df0 <_gnu_exception_handler+0xf0>
   140001d7b:   48 89 d9                mov    %rbx,%rcx
   140001d7e:   48 83 c4 20             add    $0x20,%rsp
   140001d82:   5b                      pop    %rbx
   140001d83:   48 ff e0                rex.W jmp *%rax
   140001d86:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
   140001d8d:   00 00 00
   140001d90:   3d 05 00 00 c0          cmp    $0xc0000005,%eax
   140001d95:   0f 84 a5 00 00 00       je     140001e40 <_gnu_exception_handler+0x140>
   140001d9b:   76 63                   jbe    140001e00 <_gnu_exception_handler+0x100>
   140001d9d:   3d 08 00 00 c0          cmp    $0xc0000008,%eax
   140001da2:   74 2c                   je     140001dd0 <_gnu_exception_handler+0xd0>
   140001da4:   3d 1d 00 00 c0          cmp    $0xc000001d,%eax
   140001da9:   75 c4                   jne    140001d6f <_gnu_exception_handler+0x6f>
   140001dab:   31 d2                   xor    %edx,%edx
   140001dad:   b9 04 00 00 00          mov    $0x4,%ecx
   140001db2:   e8 19 0b 00 00          call   1400028d0 <signal>
   140001db7:   48 83 f8 01             cmp    $0x1,%rax
   140001dbb:   0f 84 cf 00 00 00       je     140001e90 <_gnu_exception_handler+0x190>
   140001dc1:   48 85 c0                test   %rax,%rax
   140001dc4:   74 a9                   je     140001d6f <_gnu_exception_handler+0x6f>
   140001dc6:   b9 04 00 00 00          mov    $0x4,%ecx
   140001dcb:   ff d0                   call   *%rax
   140001dcd:   0f 1f 00                nopl   (%rax)
   140001dd0:   b8 ff ff ff ff          mov    $0xffffffff,%eax
   140001dd5:   eb 1b                   jmp    140001df2 <_gnu_exception_handler+0xf2>
   140001dd7:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   140001dde:   00 00
   140001de0:   f6 42 04 01             testb  $0x1,0x4(%rdx)
   140001de4:   0f 85 37 ff ff ff       jne    140001d21 <_gnu_exception_handler+0x21>
   140001dea:   eb e4                   jmp    140001dd0 <_gnu_exception_handler+0xd0>
   140001dec:   0f 1f 40 00             nopl   0x0(%rax)
   140001df0:   31 c0                   xor    %eax,%eax
   140001df2:   48 83 c4 20             add    $0x20,%rsp
   140001df6:   5b                      pop    %rbx
   140001df7:   c3                      ret
   140001df8:   0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
   140001dff:   00
   140001e00:   3d 02 00 00 80          cmp    $0x80000002,%eax
   140001e05:   0f 85 64 ff ff ff       jne    140001d6f <_gnu_exception_handler+0x6f>
   140001e0b:   eb c3                   jmp    140001dd0 <_gnu_exception_handler+0xd0>
   140001e0d:   0f 1f 00                nopl   (%rax)
   140001e10:   31 d2                   xor    %edx,%edx
   140001e12:   b9 08 00 00 00          mov    $0x8,%ecx
   140001e17:   e8 b4 0a 00 00          call   1400028d0 <signal>
   140001e1c:   48 83 f8 01             cmp    $0x1,%rax
   140001e20:   0f 85 40 ff ff ff       jne    140001d66 <_gnu_exception_handler+0x66>
   140001e26:   ba 01 00 00 00          mov    $0x1,%edx
   140001e2b:   b9 08 00 00 00          mov    $0x8,%ecx
   140001e30:   e8 9b 0a 00 00          call   1400028d0 <signal>
   140001e35:   eb 99                   jmp    140001dd0 <_gnu_exception_handler+0xd0>
   140001e37:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   140001e3e:   00 00
   140001e40:   31 d2                   xor    %edx,%edx
   140001e42:   b9 0b 00 00 00          mov    $0xb,%ecx
   140001e47:   e8 84 0a 00 00          call   1400028d0 <signal>
   140001e4c:   48 83 f8 01             cmp    $0x1,%rax
   140001e50:   74 2a                   je     140001e7c <_gnu_exception_handler+0x17c>
   140001e52:   48 85 c0                test   %rax,%rax
   140001e55:   0f 84 14 ff ff ff       je     140001d6f <_gnu_exception_handler+0x6f>
   140001e5b:   b9 0b 00 00 00          mov    $0xb,%ecx
   140001e60:   ff d0                   call   *%rax
   140001e62:   e9 69 ff ff ff          jmp    140001dd0 <_gnu_exception_handler+0xd0>
   140001e67:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   140001e6e:   00 00
   140001e70:   b9 08 00 00 00          mov    $0x8,%ecx
   140001e75:   ff d0                   call   *%rax
   140001e77:   e9 54 ff ff ff          jmp    140001dd0 <_gnu_exception_handler+0xd0>
   140001e7c:   ba 01 00 00 00          mov    $0x1,%edx
   140001e81:   b9 0b 00 00 00          mov    $0xb,%ecx
   140001e86:   e8 45 0a 00 00          call   1400028d0 <signal>
   140001e8b:   e9 40 ff ff ff          jmp    140001dd0 <_gnu_exception_handler+0xd0>
   140001e90:   ba 01 00 00 00          mov    $0x1,%edx
   140001e95:   b9 04 00 00 00          mov    $0x4,%ecx
   140001e9a:   e8 31 0a 00 00          call   1400028d0 <signal>
   140001e9f:   e9 2c ff ff ff          jmp    140001dd0 <_gnu_exception_handler+0xd0>
   140001ea4:   ba 01 00 00 00          mov    $0x1,%edx
   140001ea9:   b9 08 00 00 00          mov    $0x8,%ecx
   140001eae:   e8 1d 0a 00 00          call   1400028d0 <signal>
   140001eb3:   e8 a8 f8 ff ff          call   140001760 <_fpreset>
   140001eb8:   e9 13 ff ff ff          jmp    140001dd0 <_gnu_exception_handler+0xd0>
   140001ebd:   90                      nop
   140001ebe:   90                      nop
   140001ebf:   90                      nop

0000000140001ec0 <__mingwthr_run_key_dtors.part.0>:
   140001ec0:   41 54                   push   %r12
   140001ec2:   55                      push   %rbp
   140001ec3:   57                      push   %rdi
   140001ec4:   56                      push   %rsi
   140001ec5:   53                      push   %rbx
   140001ec6:   48 83 ec 20             sub    $0x20,%rsp
   140001eca:   4c 8d 25 2f 52 00 00    lea    0x522f(%rip),%r12        # 140007100 <__mingwthr_cs>
   140001ed1:   4c 89 e1                mov    %r12,%rcx
   140001ed4:   ff 15 ee 63 00 00       call   *0x63ee(%rip)        # 1400082c8 <__imp_EnterCriticalSection>
   140001eda:   48 8b 1d ff 51 00 00    mov    0x51ff(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001ee1:   48 85 db                test   %rbx,%rbx
   140001ee4:   74 36                   je     140001f1c <__mingwthr_run_key_dtors.part.0+0x5c>
   140001ee6:   48 8b 2d 0b 64 00 00    mov    0x640b(%rip),%rbp        # 1400082f8 <__imp_TlsGetValue>
   140001eed:   48 8b 3d dc 63 00 00    mov    0x63dc(%rip),%rdi        # 1400082d0 <__imp_GetLastError>
   140001ef4:   0f 1f 40 00             nopl   0x0(%rax)
   140001ef8:   8b 0b                   mov    (%rbx),%ecx
   140001efa:   ff d5                   call   *%rbp
   140001efc:   48 89 c6                mov    %rax,%rsi
   140001eff:   ff d7                   call   *%rdi
   140001f01:   48 85 f6                test   %rsi,%rsi
   140001f04:   74 0d                   je     140001f13 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f06:   85 c0                   test   %eax,%eax
   140001f08:   75 09                   jne    140001f13 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f0a:   48 8b 43 08             mov    0x8(%rbx),%rax
   140001f0e:   48 89 f1                mov    %rsi,%rcx
   140001f11:   ff d0                   call   *%rax
   140001f13:   48 8b 5b 10             mov    0x10(%rbx),%rbx
   140001f17:   48 85 db                test   %rbx,%rbx
   140001f1a:   75 dc                   jne    140001ef8 <__mingwthr_run_key_dtors.part.0+0x38>
   140001f1c:   4c 89 e1                mov    %r12,%rcx
   140001f1f:   48 83 c4 20             add    $0x20,%rsp
   140001f23:   5b                      pop    %rbx
   140001f24:   5e                      pop    %rsi
   140001f25:   5f                      pop    %rdi
   140001f26:   5d                      pop    %rbp
   140001f27:   41 5c                   pop    %r12
   140001f29:   48 ff 25 b0 63 00 00    rex.W jmp *0x63b0(%rip)        # 1400082e0 <__imp_LeaveCriticalSection>

0000000140001f30 <___w64_mingwthr_add_key_dtor>:
   140001f30:   57                      push   %rdi
   140001f31:   56                      push   %rsi
   140001f32:   53                      push   %rbx
   140001f33:   48 83 ec 20             sub    $0x20,%rsp
   140001f37:   8b 05 ab 51 00 00       mov    0x51ab(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001f3d:   89 cf                   mov    %ecx,%edi
   140001f3f:   48 89 d6                mov    %rdx,%rsi
   140001f42:   85 c0                   test   %eax,%eax
   140001f44:   75 0a                   jne    140001f50 <___w64_mingwthr_add_key_dtor+0x20>
   140001f46:   31 c0                   xor    %eax,%eax
   140001f48:   48 83 c4 20             add    $0x20,%rsp
   140001f4c:   5b                      pop    %rbx
   140001f4d:   5e                      pop    %rsi
   140001f4e:   5f                      pop    %rdi
   140001f4f:   c3                      ret
   140001f50:   ba 18 00 00 00          mov    $0x18,%edx
   140001f55:   b9 01 00 00 00          mov    $0x1,%ecx
   140001f5a:   e8 a9 09 00 00          call   140002908 <calloc>
   140001f5f:   48 89 c3                mov    %rax,%rbx
   140001f62:   48 85 c0                test   %rax,%rax
   140001f65:   74 33                   je     140001f9a <___w64_mingwthr_add_key_dtor+0x6a>
   140001f67:   48 89 70 08             mov    %rsi,0x8(%rax)
   140001f6b:   48 8d 35 8e 51 00 00    lea    0x518e(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001f72:   89 38                   mov    %edi,(%rax)
   140001f74:   48 89 f1                mov    %rsi,%rcx
   140001f77:   ff 15 4b 63 00 00       call   *0x634b(%rip)        # 1400082c8 <__imp_EnterCriticalSection>
   140001f7d:   48 8b 05 5c 51 00 00    mov    0x515c(%rip),%rax        # 1400070e0 <key_dtor_list>
   140001f84:   48 89 f1                mov    %rsi,%rcx
   140001f87:   48 89 1d 52 51 00 00    mov    %rbx,0x5152(%rip)        # 1400070e0 <key_dtor_list>
   140001f8e:   48 89 43 10             mov    %rax,0x10(%rbx)
   140001f92:   ff 15 48 63 00 00       call   *0x6348(%rip)        # 1400082e0 <__imp_LeaveCriticalSection>
   140001f98:   eb ac                   jmp    140001f46 <___w64_mingwthr_add_key_dtor+0x16>
   140001f9a:   83 c8 ff                or     $0xffffffff,%eax
   140001f9d:   eb a9                   jmp    140001f48 <___w64_mingwthr_add_key_dtor+0x18>
   140001f9f:   90                      nop

0000000140001fa0 <___w64_mingwthr_remove_key_dtor>:
   140001fa0:   56                      push   %rsi
   140001fa1:   53                      push   %rbx
   140001fa2:   48 83 ec 28             sub    $0x28,%rsp
   140001fa6:   8b 05 3c 51 00 00       mov    0x513c(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001fac:   89 cb                   mov    %ecx,%ebx
   140001fae:   85 c0                   test   %eax,%eax
   140001fb0:   75 0e                   jne    140001fc0 <___w64_mingwthr_remove_key_dtor+0x20>
   140001fb2:   31 c0                   xor    %eax,%eax
   140001fb4:   48 83 c4 28             add    $0x28,%rsp
   140001fb8:   5b                      pop    %rbx
   140001fb9:   5e                      pop    %rsi
   140001fba:   c3                      ret
   140001fbb:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
   140001fc0:   48 8d 35 39 51 00 00    lea    0x5139(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001fc7:   48 89 f1                mov    %rsi,%rcx
   140001fca:   ff 15 f8 62 00 00       call   *0x62f8(%rip)        # 1400082c8 <__imp_EnterCriticalSection>
   140001fd0:   48 8b 0d 09 51 00 00    mov    0x5109(%rip),%rcx        # 1400070e0 <key_dtor_list>
   140001fd7:   48 85 c9                test   %rcx,%rcx
   140001fda:   74 27                   je     140002003 <___w64_mingwthr_remove_key_dtor+0x63>
   140001fdc:   31 d2                   xor    %edx,%edx
   140001fde:   eb 0b                   jmp    140001feb <___w64_mingwthr_remove_key_dtor+0x4b>
   140001fe0:   48 89 ca                mov    %rcx,%rdx
   140001fe3:   48 85 c0                test   %rax,%rax
   140001fe6:   74 1b                   je     140002003 <___w64_mingwthr_remove_key_dtor+0x63>
   140001fe8:   48 89 c1                mov    %rax,%rcx
   140001feb:   8b 01                   mov    (%rcx),%eax
   140001fed:   39 d8                   cmp    %ebx,%eax
   140001fef:   48 8b 41 10             mov    0x10(%rcx),%rax
   140001ff3:   75 eb                   jne    140001fe0 <___w64_mingwthr_remove_key_dtor+0x40>
   140001ff5:   48 85 d2                test   %rdx,%rdx
   140001ff8:   74 1e                   je     140002018 <___w64_mingwthr_remove_key_dtor+0x78>
   140001ffa:   48 89 42 10             mov    %rax,0x10(%rdx)
   140001ffe:   e8 0d 09 00 00          call   140002910 <free>
   140002003:   48 89 f1                mov    %rsi,%rcx
   140002006:   ff 15 d4 62 00 00       call   *0x62d4(%rip)        # 1400082e0 <__imp_LeaveCriticalSection>
   14000200c:   31 c0                   xor    %eax,%eax
   14000200e:   48 83 c4 28             add    $0x28,%rsp
   140002012:   5b                      pop    %rbx
   140002013:   5e                      pop    %rsi
   140002014:   c3                      ret
   140002015:   0f 1f 00                nopl   (%rax)
   140002018:   48 89 05 c1 50 00 00    mov    %rax,0x50c1(%rip)        # 1400070e0 <key_dtor_list>
   14000201f:   eb dd                   jmp    140001ffe <___w64_mingwthr_remove_key_dtor+0x5e>
   140002021:   66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
   140002028:   00 00 00 00
   14000202c:   0f 1f 40 00             nopl   0x0(%rax)

0000000140002030 <__mingw_TLScallback>:
   140002030:   53                      push   %rbx
   140002031:   48 83 ec 20             sub    $0x20,%rsp
   140002035:   83 fa 02                cmp    $0x2,%edx
   140002038:   0f 84 b2 00 00 00       je     1400020f0 <__mingw_TLScallback+0xc0>
   14000203e:   77 30                   ja     140002070 <__mingw_TLScallback+0x40>
   140002040:   85 d2                   test   %edx,%edx
   140002042:   74 4c                   je     140002090 <__mingw_TLScallback+0x60>
   140002044:   8b 05 9e 50 00 00       mov    0x509e(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000204a:   85 c0                   test   %eax,%eax
   14000204c:   0f 84 be 00 00 00       je     140002110 <__mingw_TLScallback+0xe0>
   140002052:   c7 05 8c 50 00 00 01    movl   $0x1,0x508c(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002059:   00 00 00
   14000205c:   b8 01 00 00 00          mov    $0x1,%eax
   140002061:   48 83 c4 20             add    $0x20,%rsp
   140002065:   5b                      pop    %rbx
   140002066:   c3                      ret
   140002067:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   14000206e:   00 00
   140002070:   83 fa 03                cmp    $0x3,%edx
   140002073:   75 e7                   jne    14000205c <__mingw_TLScallback+0x2c>
   140002075:   8b 05 6d 50 00 00       mov    0x506d(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000207b:   85 c0                   test   %eax,%eax
   14000207d:   74 dd                   je     14000205c <__mingw_TLScallback+0x2c>
   14000207f:   e8 3c fe ff ff          call   140001ec0 <__mingwthr_run_key_dtors.part.0>
   140002084:   eb d6                   jmp    14000205c <__mingw_TLScallback+0x2c>
   140002086:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
   14000208d:   00 00 00
   140002090:   8b 05 52 50 00 00       mov    0x5052(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002096:   85 c0                   test   %eax,%eax
   140002098:   75 66                   jne    140002100 <__mingw_TLScallback+0xd0>
   14000209a:   8b 05 48 50 00 00       mov    0x5048(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020a0:   83 f8 01                cmp    $0x1,%eax
   1400020a3:   75 b7                   jne    14000205c <__mingw_TLScallback+0x2c>
   1400020a5:   48 8b 1d 34 50 00 00    mov    0x5034(%rip),%rbx        # 1400070e0 <key_dtor_list>
   1400020ac:   48 85 db                test   %rbx,%rbx
   1400020af:   74 18                   je     1400020c9 <__mingw_TLScallback+0x99>
   1400020b1:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   1400020b8:   48 89 d9                mov    %rbx,%rcx
   1400020bb:   48 8b 5b 10             mov    0x10(%rbx),%rbx
   1400020bf:   e8 4c 08 00 00          call   140002910 <free>
   1400020c4:   48 85 db                test   %rbx,%rbx
   1400020c7:   75 ef                   jne    1400020b8 <__mingw_TLScallback+0x88>
   1400020c9:   48 8d 0d 30 50 00 00    lea    0x5030(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400020d0:   48 c7 05 05 50 00 00    movq   $0x0,0x5005(%rip)        # 1400070e0 <key_dtor_list>
   1400020d7:   00 00 00 00
   1400020db:   c7 05 03 50 00 00 00    movl   $0x0,0x5003(%rip)        # 1400070e8 <__mingwthr_cs_init>
   1400020e2:   00 00 00
   1400020e5:   ff 15 d5 61 00 00       call   *0x61d5(%rip)        # 1400082c0 <__IAT_start__>
   1400020eb:   e9 6c ff ff ff          jmp    14000205c <__mingw_TLScallback+0x2c>
   1400020f0:   e8 6b f6 ff ff          call   140001760 <_fpreset>
   1400020f5:   b8 01 00 00 00          mov    $0x1,%eax
   1400020fa:   48 83 c4 20             add    $0x20,%rsp
   1400020fe:   5b                      pop    %rbx
   1400020ff:   c3                      ret
   140002100:   e8 bb fd ff ff          call   140001ec0 <__mingwthr_run_key_dtors.part.0>
   140002105:   eb 93                   jmp    14000209a <__mingw_TLScallback+0x6a>
   140002107:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   14000210e:   00 00
   140002110:   48 8d 0d e9 4f 00 00    lea    0x4fe9(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002117:   ff 15 bb 61 00 00       call   *0x61bb(%rip)        # 1400082d8 <__imp_InitializeCriticalSection>
   14000211d:   e9 30 ff ff ff          jmp    140002052 <__mingw_TLScallback+0x22>
   140002122:   90                      nop
   140002123:   90                      nop
   140002124:   90                      nop
   140002125:   90                      nop
   140002126:   90                      nop
   140002127:   90                      nop
   140002128:   90                      nop
   140002129:   90                      nop
   14000212a:   90                      nop
   14000212b:   90                      nop
   14000212c:   90                      nop
   14000212d:   90                      nop
   14000212e:   90                      nop
   14000212f:   90                      nop

0000000140002130 <_ValidateImageBase>:
   140002130:   31 c0                   xor    %eax,%eax
   140002132:   66 81 39 4d 5a          cmpw   $0x5a4d,(%rcx)
   140002137:   75 0f                   jne    140002148 <_ValidateImageBase+0x18>
   140002139:   48 63 51 3c             movslq 0x3c(%rcx),%rdx
   14000213d:   48 01 d1                add    %rdx,%rcx
   140002140:   81 39 50 45 00 00       cmpl   $0x4550,(%rcx)
   140002146:   74 08                   je     140002150 <_ValidateImageBase+0x20>
   140002148:   c3                      ret
   140002149:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   140002150:   31 c0                   xor    %eax,%eax
   140002152:   66 81 79 18 0b 02       cmpw   $0x20b,0x18(%rcx)
   140002158:   0f 94 c0                sete   %al
   14000215b:   c3                      ret
   14000215c:   0f 1f 40 00             nopl   0x0(%rax)

0000000140002160 <_FindPESection>:
   140002160:   48 63 41 3c             movslq 0x3c(%rcx),%rax
   140002164:   48 01 c1                add    %rax,%rcx
   140002167:   0f b7 41 14             movzwl 0x14(%rcx),%eax
   14000216b:   44 0f b7 41 06          movzwl 0x6(%rcx),%r8d
   140002170:   48 8d 44 01 18          lea    0x18(%rcx,%rax,1),%rax
   140002175:   66 45 85 c0             test   %r8w,%r8w
   140002179:   74 32                   je     1400021ad <_FindPESection+0x4d>
   14000217b:   41 8d 48 ff             lea    -0x1(%r8),%ecx
   14000217f:   48 8d 0c 89             lea    (%rcx,%rcx,4),%rcx
   140002183:   4c 8d 4c c8 28          lea    0x28(%rax,%rcx,8),%r9
   140002188:   0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
   14000218f:   00
   140002190:   44 8b 40 0c             mov    0xc(%rax),%r8d
   140002194:   4c 89 c1                mov    %r8,%rcx
   140002197:   4c 39 c2                cmp    %r8,%rdx
   14000219a:   72 08                   jb     1400021a4 <_FindPESection+0x44>
   14000219c:   03 48 08                add    0x8(%rax),%ecx
   14000219f:   48 39 ca                cmp    %rcx,%rdx
   1400021a2:   72 0b                   jb     1400021af <_FindPESection+0x4f>
   1400021a4:   48 83 c0 28             add    $0x28,%rax
   1400021a8:   4c 39 c8                cmp    %r9,%rax
   1400021ab:   75 e3                   jne    140002190 <_FindPESection+0x30>
   1400021ad:   31 c0                   xor    %eax,%eax
   1400021af:   c3                      ret

00000001400021b0 <_FindPESectionByName>:
   1400021b0:   57                      push   %rdi
   1400021b1:   56                      push   %rsi
   1400021b2:   53                      push   %rbx
   1400021b3:   48 83 ec 20             sub    $0x20,%rsp
   1400021b7:   48 89 ce                mov    %rcx,%rsi
   1400021ba:   e8 51 06 00 00          call   140002810 <strlen>
   1400021bf:   48 83 f8 08             cmp    $0x8,%rax
   1400021c3:   77 7b                   ja     140002240 <_FindPESectionByName+0x90>
   1400021c5:   48 8b 15 f4 21 00 00    mov    0x21f4(%rip),%rdx        # 1400043c0 <.refptr.__ImageBase>
   1400021cc:   31 db                   xor    %ebx,%ebx
   1400021ce:   66 81 3a 4d 5a          cmpw   $0x5a4d,(%rdx)
   1400021d3:   75 59                   jne    14000222e <_FindPESectionByName+0x7e>
   1400021d5:   48 63 42 3c             movslq 0x3c(%rdx),%rax
   1400021d9:   48 01 d0                add    %rdx,%rax
   1400021dc:   81 38 50 45 00 00       cmpl   $0x4550,(%rax)
   1400021e2:   75 4a                   jne    14000222e <_FindPESectionByName+0x7e>
   1400021e4:   66 81 78 18 0b 02       cmpw   $0x20b,0x18(%rax)
   1400021ea:   75 42                   jne    14000222e <_FindPESectionByName+0x7e>
   1400021ec:   0f b7 50 14             movzwl 0x14(%rax),%edx
   1400021f0:   48 8d 5c 10 18          lea    0x18(%rax,%rdx,1),%rbx
   1400021f5:   0f b7 50 06             movzwl 0x6(%rax),%edx
   1400021f9:   66 85 d2                test   %dx,%dx
   1400021fc:   74 42                   je     140002240 <_FindPESectionByName+0x90>
   1400021fe:   8d 42 ff                lea    -0x1(%rdx),%eax
   140002201:   48 8d 04 80             lea    (%rax,%rax,4),%rax
   140002205:   48 8d 7c c3 28          lea    0x28(%rbx,%rax,8),%rdi
   14000220a:   eb 0d                   jmp    140002219 <_FindPESectionByName+0x69>
   14000220c:   0f 1f 40 00             nopl   0x0(%rax)
   140002210:   48 83 c3 28             add    $0x28,%rbx
   140002214:   48 39 fb                cmp    %rdi,%rbx
   140002217:   74 27                   je     140002240 <_FindPESectionByName+0x90>
   140002219:   41 b8 08 00 00 00       mov    $0x8,%r8d
   14000221f:   48 89 f2                mov    %rsi,%rdx
   140002222:   48 89 d9                mov    %rbx,%rcx
   140002225:   e8 ee 05 00 00          call   140002818 <strncmp>
   14000222a:   85 c0                   test   %eax,%eax
   14000222c:   75 e2                   jne    140002210 <_FindPESectionByName+0x60>
   14000222e:   48 89 d8                mov    %rbx,%rax
   140002231:   48 83 c4 20             add    $0x20,%rsp
   140002235:   5b                      pop    %rbx
   140002236:   5e                      pop    %rsi
   140002237:   5f                      pop    %rdi
   140002238:   c3                      ret
   140002239:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   140002240:   31 db                   xor    %ebx,%ebx
   140002242:   48 89 d8                mov    %rbx,%rax
   140002245:   48 83 c4 20             add    $0x20,%rsp
   140002249:   5b                      pop    %rbx
   14000224a:   5e                      pop    %rsi
   14000224b:   5f                      pop    %rdi
   14000224c:   c3                      ret
   14000224d:   0f 1f 00                nopl   (%rax)

0000000140002250 <__mingw_GetSectionForAddress>:
   140002250:   48 8b 15 69 21 00 00    mov    0x2169(%rip),%rdx        # 1400043c0 <.refptr.__ImageBase>
   140002257:   31 c0                   xor    %eax,%eax
   140002259:   66 81 3a 4d 5a          cmpw   $0x5a4d,(%rdx)
   14000225e:   75 10                   jne    140002270 <__mingw_GetSectionForAddress+0x20>
   140002260:   4c 63 42 3c             movslq 0x3c(%rdx),%r8
   140002264:   49 01 d0                add    %rdx,%r8
   140002267:   41 81 38 50 45 00 00    cmpl   $0x4550,(%r8)
   14000226e:   74 08                   je     140002278 <__mingw_GetSectionForAddress+0x28>
   140002270:   c3                      ret
   140002271:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   140002278:   66 41 81 78 18 0b 02    cmpw   $0x20b,0x18(%r8)
   14000227f:   75 ef                   jne    140002270 <__mingw_GetSectionForAddress+0x20>
   140002281:   41 0f b7 40 14          movzwl 0x14(%r8),%eax
   140002286:   48 29 d1                sub    %rdx,%rcx
   140002289:   49 8d 44 00 18          lea    0x18(%r8,%rax,1),%rax
   14000228e:   45 0f b7 40 06          movzwl 0x6(%r8),%r8d
   140002293:   66 45 85 c0             test   %r8w,%r8w
   140002297:   74 34                   je     1400022cd <__mingw_GetSectionForAddress+0x7d>
   140002299:   41 8d 50 ff             lea    -0x1(%r8),%edx
   14000229d:   48 8d 14 92             lea    (%rdx,%rdx,4),%rdx
   1400022a1:   4c 8d 4c d0 28          lea    0x28(%rax,%rdx,8),%r9
   1400022a6:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
   1400022ad:   00 00 00
   1400022b0:   44 8b 40 0c             mov    0xc(%rax),%r8d
   1400022b4:   4c 89 c2                mov    %r8,%rdx
   1400022b7:   4c 39 c1                cmp    %r8,%rcx
   1400022ba:   72 08                   jb     1400022c4 <__mingw_GetSectionForAddress+0x74>
   1400022bc:   03 50 08                add    0x8(%rax),%edx
   1400022bf:   48 39 d1                cmp    %rdx,%rcx
   1400022c2:   72 ac                   jb     140002270 <__mingw_GetSectionForAddress+0x20>
   1400022c4:   48 83 c0 28             add    $0x28,%rax
   1400022c8:   4c 39 c8                cmp    %r9,%rax
   1400022cb:   75 e3                   jne    1400022b0 <__mingw_GetSectionForAddress+0x60>
   1400022cd:   31 c0                   xor    %eax,%eax
   1400022cf:   c3                      ret

00000001400022d0 <__mingw_GetSectionCount>:
   1400022d0:   48 8b 05 e9 20 00 00    mov    0x20e9(%rip),%rax        # 1400043c0 <.refptr.__ImageBase>
   1400022d7:   31 c9                   xor    %ecx,%ecx
   1400022d9:   66 81 38 4d 5a          cmpw   $0x5a4d,(%rax)
   1400022de:   75 0f                   jne    1400022ef <__mingw_GetSectionCount+0x1f>
   1400022e0:   48 63 50 3c             movslq 0x3c(%rax),%rdx
   1400022e4:   48 01 d0                add    %rdx,%rax
   1400022e7:   81 38 50 45 00 00       cmpl   $0x4550,(%rax)
   1400022ed:   74 09                   je     1400022f8 <__mingw_GetSectionCount+0x28>
   1400022ef:   89 c8                   mov    %ecx,%eax
   1400022f1:   c3                      ret
   1400022f2:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
   1400022f8:   66 81 78 18 0b 02       cmpw   $0x20b,0x18(%rax)
   1400022fe:   75 ef                   jne    1400022ef <__mingw_GetSectionCount+0x1f>
   140002300:   0f b7 48 06             movzwl 0x6(%rax),%ecx
   140002304:   89 c8                   mov    %ecx,%eax
   140002306:   c3                      ret
   140002307:   66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
   14000230e:   00 00

0000000140002310 <_FindPESectionExec>:
   140002310:   4c 8b 05 a9 20 00 00    mov    0x20a9(%rip),%r8        # 1400043c0 <.refptr.__ImageBase>
   140002317:   31 c0                   xor    %eax,%eax
   140002319:   66 41 81 38 4d 5a       cmpw   $0x5a4d,(%r8)
   14000231f:   75 0f                   jne    140002330 <_FindPESectionExec+0x20>
   140002321:   49 63 50 3c             movslq 0x3c(%r8),%rdx
   140002325:   4c 01 c2                add    %r8,%rdx
   140002328:   81 3a 50 45 00 00       cmpl   $0x4550,(%rdx)
   14000232e:   74 08                   je     140002338 <_FindPESectionExec+0x28>
   140002330:   c3                      ret
   140002331:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   140002338:   66 81 7a 18 0b 02       cmpw   $0x20b,0x18(%rdx)
   14000233e:   75 f0                   jne    140002330 <_FindPESectionExec+0x20>
   140002340:   0f b7 42 14             movzwl 0x14(%rdx),%eax
   140002344:   44 0f b7 42 06          movzwl 0x6(%rdx),%r8d
   140002349:   48 8d 44 02 18          lea    0x18(%rdx,%rax,1),%rax
   14000234e:   66 45 85 c0             test   %r8w,%r8w
   140002352:   74 2c                   je     140002380 <_FindPESectionExec+0x70>
   140002354:   41 8d 50 ff             lea    -0x1(%r8),%edx
   140002358:   48 8d 14 92             lea    (%rdx,%rdx,4),%rdx
   14000235c:   48 8d 54 d0 28          lea    0x28(%rax,%rdx,8),%rdx
   140002361:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   140002368:   f6 40 27 20             testb  $0x20,0x27(%rax)
   14000236c:   74 09                   je     140002377 <_FindPESectionExec+0x67>
   14000236e:   48 85 c9                test   %rcx,%rcx
   140002371:   74 bd                   je     140002330 <_FindPESectionExec+0x20>
   140002373:   48 83 e9 01             sub    $0x1,%rcx
   140002377:   48 83 c0 28             add    $0x28,%rax
   14000237b:   48 39 c2                cmp    %rax,%rdx
   14000237e:   75 e8                   jne    140002368 <_FindPESectionExec+0x58>
   140002380:   31 c0                   xor    %eax,%eax
   140002382:   c3                      ret
   140002383:   66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
   14000238a:   00 00 00 00
   14000238e:   66 90                   xchg   %ax,%ax

0000000140002390 <_GetPEImageBase>:
   140002390:   48 8b 05 29 20 00 00    mov    0x2029(%rip),%rax        # 1400043c0 <.refptr.__ImageBase>
   140002397:   31 d2                   xor    %edx,%edx
   140002399:   66 81 38 4d 5a          cmpw   $0x5a4d,(%rax)
   14000239e:   75 0f                   jne    1400023af <_GetPEImageBase+0x1f>
   1400023a0:   48 63 48 3c             movslq 0x3c(%rax),%rcx
   1400023a4:   48 01 c1                add    %rax,%rcx
   1400023a7:   81 39 50 45 00 00       cmpl   $0x4550,(%rcx)
   1400023ad:   74 09                   je     1400023b8 <_GetPEImageBase+0x28>
   1400023af:   48 89 d0                mov    %rdx,%rax
   1400023b2:   c3                      ret
   1400023b3:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
   1400023b8:   66 81 79 18 0b 02       cmpw   $0x20b,0x18(%rcx)
   1400023be:   48 0f 44 d0             cmove  %rax,%rdx
   1400023c2:   48 89 d0                mov    %rdx,%rax
   1400023c5:   c3                      ret
   1400023c6:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
   1400023cd:   00 00 00

00000001400023d0 <_IsNonwritableInCurrentImage>:
   1400023d0:   48 8b 15 e9 1f 00 00    mov    0x1fe9(%rip),%rdx        # 1400043c0 <.refptr.__ImageBase>
   1400023d7:   31 c0                   xor    %eax,%eax
   1400023d9:   66 81 3a 4d 5a          cmpw   $0x5a4d,(%rdx)
   1400023de:   75 10                   jne    1400023f0 <_IsNonwritableInCurrentImage+0x20>
   1400023e0:   4c 63 42 3c             movslq 0x3c(%rdx),%r8
   1400023e4:   49 01 d0                add    %rdx,%r8
   1400023e7:   41 81 38 50 45 00 00    cmpl   $0x4550,(%r8)
   1400023ee:   74 08                   je     1400023f8 <_IsNonwritableInCurrentImage+0x28>
   1400023f0:   c3                      ret
   1400023f1:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)
   1400023f8:   66 41 81 78 18 0b 02    cmpw   $0x20b,0x18(%r8)
   1400023ff:   75 ef                   jne    1400023f0 <_IsNonwritableInCurrentImage+0x20>
   140002401:   48 29 d1                sub    %rdx,%rcx
   140002404:   45 0f b7 48 06          movzwl 0x6(%r8),%r9d
   140002409:   41 0f b7 50 14          movzwl 0x14(%r8),%edx
   14000240e:   49 8d 54 10 18          lea    0x18(%r8,%rdx,1),%rdx
   140002413:   66 45 85 c9             test   %r9w,%r9w
   140002417:   74 d7                   je     1400023f0 <_IsNonwritableInCurrentImage+0x20>
   140002419:   41 8d 41 ff             lea    -0x1(%r9),%eax
   14000241d:   48 8d 04 80             lea    (%rax,%rax,4),%rax
   140002421:   4c 8d 4c c2 28          lea    0x28(%rdx,%rax,8),%r9
   140002426:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
   14000242d:   00 00 00
   140002430:   44 8b 42 0c             mov    0xc(%rdx),%r8d
   140002434:   4c 89 c0                mov    %r8,%rax
   140002437:   4c 39 c1                cmp    %r8,%rcx
   14000243a:   72 08                   jb     140002444 <_IsNonwritableInCurrentImage+0x74>
   14000243c:   03 42 08                add    0x8(%rdx),%eax
   14000243f:   48 39 c1                cmp    %rax,%rcx
   140002442:   72 0c                   jb     140002450 <_IsNonwritableInCurrentImage+0x80>
   140002444:   48 83 c2 28             add    $0x28,%rdx
   140002448:   4c 39 ca                cmp    %r9,%rdx
   14000244b:   75 e3                   jne    140002430 <_IsNonwritableInCurrentImage+0x60>
   14000244d:   31 c0                   xor    %eax,%eax
   14000244f:   c3                      ret
   140002450:   8b 42 24                mov    0x24(%rdx),%eax
   140002453:   f7 d0                   not    %eax
   140002455:   c1 e8 1f                shr    $0x1f,%eax
   140002458:   c3                      ret
   140002459:   0f 1f 80 00 00 00 00    nopl   0x0(%rax)

0000000140002460 <__mingw_enum_import_library_names>:
   140002460:   4c 8b 1d 59 1f 00 00    mov    0x1f59(%rip),%r11        # 1400043c0 <.refptr.__ImageBase>
   140002467:   45 31 c9                xor    %r9d,%r9d
   14000246a:   66 41 81 3b 4d 5a       cmpw   $0x5a4d,(%r11)
   140002470:   75 10                   jne    140002482 <__mingw_enum_import_library_names+0x22>
   140002472:   4d 63 43 3c             movslq 0x3c(%r11),%r8
   140002476:   4d 01 d8                add    %r11,%r8
   140002479:   41 81 38 50 45 00 00    cmpl   $0x4550,(%r8)
   140002480:   74 0e                   je     140002490 <__mingw_enum_import_library_names+0x30>
   140002482:   4c 89 c8                mov    %r9,%rax
   140002485:   c3                      ret
   140002486:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
   14000248d:   00 00 00
   140002490:   66 41 81 78 18 0b 02    cmpw   $0x20b,0x18(%r8)
   140002497:   75 e9                   jne    140002482 <__mingw_enum_import_library_names+0x22>
   140002499:   41 8b 80 90 00 00 00    mov    0x90(%r8),%eax
   1400024a0:   85 c0                   test   %eax,%eax
   1400024a2:   74 de                   je     140002482 <__mingw_enum_import_library_names+0x22>
   1400024a4:   41 0f b7 50 14          movzwl 0x14(%r8),%edx
   1400024a9:   45 0f b7 50 06          movzwl 0x6(%r8),%r10d
   1400024ae:   49 8d 54 10 18          lea    0x18(%r8,%rdx,1),%rdx
   1400024b3:   66 45 85 d2             test   %r10w,%r10w
   1400024b7:   74 c9                   je     140002482 <__mingw_enum_import_library_names+0x22>
   1400024b9:   45 8d 42 ff             lea    -0x1(%r10),%r8d
   1400024bd:   4f 8d 04 80             lea    (%r8,%r8,4),%r8
   1400024c1:   4e 8d 54 c2 28          lea    0x28(%rdx,%r8,8),%r10
   1400024c6:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
   1400024cd:   00 00 00
   1400024d0:   44 8b 4a 0c             mov    0xc(%rdx),%r9d
   1400024d4:   4d 89 c8                mov    %r9,%r8
   1400024d7:   4c 39 c8                cmp    %r9,%rax
   1400024da:   72 09                   jb     1400024e5 <__mingw_enum_import_library_names+0x85>
   1400024dc:   44 03 42 08             add    0x8(%rdx),%r8d
   1400024e0:   4c 39 c0                cmp    %r8,%rax
   1400024e3:   72 13                   jb     1400024f8 <__mingw_enum_import_library_names+0x98>
   1400024e5:   48 83 c2 28             add    $0x28,%rdx
   1400024e9:   49 39 d2                cmp    %rdx,%r10
   1400024ec:   75 e2                   jne    1400024d0 <__mingw_enum_import_library_names+0x70>
   1400024ee:   45 31 c9                xor    %r9d,%r9d
   1400024f1:   4c 89 c8                mov    %r9,%rax
   1400024f4:   c3                      ret
   1400024f5:   0f 1f 00                nopl   (%rax)
   1400024f8:   4c 01 d8                add    %r11,%rax
   1400024fb:   eb 0a                   jmp    140002507 <__mingw_enum_import_library_names+0xa7>
   1400024fd:   0f 1f 00                nopl   (%rax)
   140002500:   83 e9 01                sub    $0x1,%ecx
   140002503:   48 83 c0 14             add    $0x14,%rax
   140002507:   44 8b 40 04             mov    0x4(%rax),%r8d
   14000250b:   45 85 c0                test   %r8d,%r8d
   14000250e:   75 07                   jne    140002517 <__mingw_enum_import_library_names+0xb7>
   140002510:   8b 50 0c                mov    0xc(%rax),%edx
   140002513:   85 d2                   test   %edx,%edx
   140002515:   74 d7                   je     1400024ee <__mingw_enum_import_library_names+0x8e>
   140002517:   85 c9                   test   %ecx,%ecx
   140002519:   7f e5                   jg     140002500 <__mingw_enum_import_library_names+0xa0>
   14000251b:   44 8b 48 0c             mov    0xc(%rax),%r9d
   14000251f:   4d 01 d9                add    %r11,%r9
   140002522:   4c 89 c8                mov    %r9,%rax
   140002525:   c3                      ret
   140002526:   90                      nop
   140002527:   90                      nop
   140002528:   90                      nop
   140002529:   90                      nop
   14000252a:   90                      nop
   14000252b:   90                      nop
   14000252c:   90                      nop
   14000252d:   90                      nop
   14000252e:   90                      nop
   14000252f:   90                      nop

0000000140002530 <___chkstk_ms>:
   140002530:   51                      push   %rcx
   140002531:   50                      push   %rax
   140002532:   48 3d 00 10 00 00       cmp    $0x1000,%rax
   140002538:   48 8d 4c 24 18          lea    0x18(%rsp),%rcx
   14000253d:   72 19                   jb     140002558 <___chkstk_ms+0x28>
   14000253f:   48 81 e9 00 10 00 00    sub    $0x1000,%rcx
   140002546:   48 83 09 00             orq    $0x0,(%rcx)
   14000254a:   48 2d 00 10 00 00       sub    $0x1000,%rax
   140002550:   48 3d 00 10 00 00       cmp    $0x1000,%rax
   140002556:   77 e7                   ja     14000253f <___chkstk_ms+0xf>
   140002558:   48 29 c1                sub    %rax,%rcx
   14000255b:   48 83 09 00             orq    $0x0,(%rcx)
   14000255f:   58                      pop    %rax
   140002560:   59                      pop    %rcx
   140002561:   c3                      ret
   140002562:   90                      nop
   140002563:   90                      nop
   140002564:   90                      nop
   140002565:   90                      nop
   140002566:   90                      nop
   140002567:   90                      nop
   140002568:   90                      nop
   140002569:   90                      nop
   14000256a:   90                      nop
   14000256b:   90                      nop
   14000256c:   90                      nop
   14000256d:   90                      nop
   14000256e:   90                      nop
   14000256f:   90                      nop

0000000140002570 <vfprintf>:
   140002570:   48 83 ec 38             sub    $0x38,%rsp
   140002574:   45 31 c9                xor    %r9d,%r9d
   140002577:   4c 89 44 24 20          mov    %r8,0x20(%rsp)
   14000257c:   49 89 d0                mov    %rdx,%r8
   14000257f:   48 89 ca                mov    %rcx,%rdx
   140002582:   31 c9                   xor    %ecx,%ecx
   140002584:   e8 af 02 00 00          call   140002838 <__stdio_common_vfprintf>
   140002589:   48 83 c4 38             add    $0x38,%rsp
   14000258d:   c3                      ret
   14000258e:   90                      nop
   14000258f:   90                      nop

0000000140002590 <fprintf>:
   140002590:   48 83 ec 48             sub    $0x48,%rsp
   140002594:   48 8d 44 24 60          lea    0x60(%rsp),%rax
   140002599:   4c 89 44 24 60          mov    %r8,0x60(%rsp)
   14000259e:   49 89 d0                mov    %rdx,%r8
   1400025a1:   48 89 ca                mov    %rcx,%rdx
   1400025a4:   48 89 44 24 20          mov    %rax,0x20(%rsp)
   1400025a9:   31 c9                   xor    %ecx,%ecx
   1400025ab:   4c 89 4c 24 68          mov    %r9,0x68(%rsp)
   1400025b0:   45 31 c9                xor    %r9d,%r9d
   1400025b3:   48 89 44 24 38          mov    %rax,0x38(%rsp)
   1400025b8:   e8 7b 02 00 00          call   140002838 <__stdio_common_vfprintf>
   1400025bd:   48 83 c4 48             add    $0x48,%rsp
   1400025c1:   c3                      ret
   1400025c2:   90                      nop
   1400025c3:   90                      nop
   1400025c4:   90                      nop
   1400025c5:   90                      nop
   1400025c6:   90                      nop
   1400025c7:   90                      nop
   1400025c8:   90                      nop
   1400025c9:   90                      nop
   1400025ca:   90                      nop
   1400025cb:   90                      nop
   1400025cc:   90                      nop
   1400025cd:   90                      nop
   1400025ce:   90                      nop
   1400025cf:   90                      nop

00000001400025d0 <_get_output_format>:
   1400025d0:   31 c0                   xor    %eax,%eax
   1400025d2:   c3                      ret
   1400025d3:   66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
   1400025da:   00 00 00 00
   1400025de:   66 90                   xchg   %ax,%ax

00000001400025e0 <__getmainargs>:
   1400025e0:   41 54                   push   %r12
   1400025e2:   55                      push   %rbp
   1400025e3:   57                      push   %rdi
   1400025e4:   56                      push   %rsi
   1400025e5:   53                      push   %rbx
   1400025e6:   48 83 ec 20             sub    $0x20,%rsp
   1400025ea:   4c 8b 64 24 70          mov    0x70(%rsp),%r12
   1400025ef:   44 89 cd                mov    %r9d,%ebp
   1400025f2:   48 89 d6                mov    %rdx,%rsi
   1400025f5:   4c 89 c3                mov    %r8,%rbx
   1400025f8:   48 89 cf                mov    %rcx,%rdi
   1400025fb:   e8 98 02 00 00          call   140002898 <_initialize_narrow_environment>
   140002600:   83 fd 01                cmp    $0x1,%ebp
   140002603:   b9 01 00 00 00          mov    $0x1,%ecx
   140002608:   83 d9 ff                sbb    $0xffffffff,%ecx
   14000260b:   e8 60 02 00 00          call   140002870 <_configure_narrow_argv>
   140002610:   e8 3b 02 00 00          call   140002850 <__p___argc>
   140002615:   8b 00                   mov    (%rax),%eax
   140002617:   89 07                   mov    %eax,(%rdi)
   140002619:   e8 3a 02 00 00          call   140002858 <__p___argv>
   14000261e:   48 8b 00                mov    (%rax),%rax
   140002621:   48 89 06                mov    %rax,(%rsi)
   140002624:   e8 f7 02 00 00          call   140002920 <__p__environ>
   140002629:   48 8b 00                mov    (%rax),%rax
   14000262c:   48 89 03                mov    %rax,(%rbx)
   14000262f:   4d 85 e4                test   %r12,%r12
   140002632:   74 09                   je     14000263d <__getmainargs+0x5d>
   140002634:   41 8b 0c 24             mov    (%r12),%ecx
   140002638:   e8 c3 02 00 00          call   140002900 <_set_new_mode>
   14000263d:   31 c0                   xor    %eax,%eax
   14000263f:   48 83 c4 20             add    $0x20,%rsp
   140002643:   5b                      pop    %rbx
   140002644:   5e                      pop    %rsi
   140002645:   5f                      pop    %rdi
   140002646:   5d                      pop    %rbp
   140002647:   41 5c                   pop    %r12
   140002649:   c3                      ret
   14000264a:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

0000000140002650 <__wgetmainargs>:
   140002650:   41 54                   push   %r12
   140002652:   55                      push   %rbp
   140002653:   57                      push   %rdi
   140002654:   56                      push   %rsi
   140002655:   53                      push   %rbx
   140002656:   48 83 ec 20             sub    $0x20,%rsp
   14000265a:   4c 8b 64 24 70          mov    0x70(%rsp),%r12
   14000265f:   44 89 cd                mov    %r9d,%ebp
   140002662:   48 89 d6                mov    %rdx,%rsi
   140002665:   4c 89 c3                mov    %r8,%rbx
   140002668:   48 89 cf                mov    %rcx,%rdi
   14000266b:   e8 30 02 00 00          call   1400028a0 <_initialize_wide_environment>
   140002670:   83 fd 01                cmp    $0x1,%ebp
   140002673:   b9 01 00 00 00          mov    $0x1,%ecx
   140002678:   83 d9 ff                sbb    $0xffffffff,%ecx
   14000267b:   e8 f8 01 00 00          call   140002878 <_configure_wide_argv>
   140002680:   e8 cb 01 00 00          call   140002850 <__p___argc>
   140002685:   8b 00                   mov    (%rax),%eax
   140002687:   89 07                   mov    %eax,(%rdi)
   140002689:   e8 d2 01 00 00          call   140002860 <__p___wargv>
   14000268e:   48 8b 00                mov    (%rax),%rax
   140002691:   48 89 06                mov    %rax,(%rsi)
   140002694:   e8 8f 02 00 00          call   140002928 <__p__wenviron>
   140002699:   48 8b 00                mov    (%rax),%rax
   14000269c:   48 89 03                mov    %rax,(%rbx)
   14000269f:   4d 85 e4                test   %r12,%r12
   1400026a2:   74 09                   je     1400026ad <__wgetmainargs+0x5d>
   1400026a4:   41 8b 0c 24             mov    (%r12),%ecx
   1400026a8:   e8 53 02 00 00          call   140002900 <_set_new_mode>
   1400026ad:   31 c0                   xor    %eax,%eax
   1400026af:   48 83 c4 20             add    $0x20,%rsp
   1400026b3:   5b                      pop    %rbx
   1400026b4:   5e                      pop    %rsi
   1400026b5:   5f                      pop    %rdi
   1400026b6:   5d                      pop    %rbp
   1400026b7:   41 5c                   pop    %r12
   1400026b9:   c3                      ret
   1400026ba:   66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

00000001400026c0 <_onexit>:
   1400026c0:   53                      push   %rbx
   1400026c1:   48 83 ec 20             sub    $0x20,%rsp
   1400026c5:   48 89 cb                mov    %rcx,%rbx
   1400026c8:   e8 bb 01 00 00          call   140002888 <_crt_atexit>
   1400026cd:   85 c0                   test   %eax,%eax
   1400026cf:   b8 00 00 00 00          mov    $0x0,%eax
   1400026d4:   48 0f 44 c3             cmove  %rbx,%rax
   1400026d8:   48 83 c4 20             add    $0x20,%rsp
   1400026dc:   5b                      pop    %rbx
   1400026dd:   c3                      ret
   1400026de:   66 90                   xchg   %ax,%ax

00000001400026e0 <at_quick_exit>:
   1400026e0:   48 8b 05 79 1d 00 00    mov    0x1d79(%rip),%rax        # 140004460 <.refptr.__mingw_module_is_dll>
   1400026e7:   80 38 00                cmpb   $0x0,(%rax)
   1400026ea:   74 04                   je     1400026f0 <at_quick_exit+0x10>
   1400026ec:   31 c0                   xor    %eax,%eax
   1400026ee:   c3                      ret
   1400026ef:   90                      nop
   1400026f0:   e9 8b 01 00 00          jmp    140002880 <_crt_at_quick_exit>
   1400026f5:   66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
   1400026fc:   00 00 00 00

0000000140002700 <_amsg_exit>:
   140002700:   53                      push   %rbx
   140002701:   48 83 ec 20             sub    $0x20,%rsp
   140002705:   89 cb                   mov    %ecx,%ebx
   140002707:   b9 02 00 00 00          mov    $0x2,%ecx
   14000270c:   e8 0f 01 00 00          call   140002820 <__acrt_iob_func>
   140002711:   41 89 d8                mov    %ebx,%r8d
   140002714:   48 8d 15 35 1c 00 00    lea    0x1c35(%rip),%rdx        # 140004350 <.rdata>
   14000271b:   48 89 c1                mov    %rax,%rcx
   14000271e:   e8 6d fe ff ff          call   140002590 <fprintf>
   140002723:   b9 ff 00 00 00          mov    $0xff,%ecx
   140002728:   e8 63 01 00 00          call   140002890 <_exit>
   14000272d:   90                      nop
   14000272e:   66 90                   xchg   %ax,%ax

0000000140002730 <__ms_fwprintf>:
   140002730:   48 83 ec 48             sub    $0x48,%rsp
   140002734:   48 8d 44 24 60          lea    0x60(%rsp),%rax
   140002739:   4c 89 44 24 60          mov    %r8,0x60(%rsp)
   14000273e:   49 89 d0                mov    %rdx,%r8
   140002741:   48 89 ca                mov    %rcx,%rdx
   140002744:   48 89 44 24 20          mov    %rax,0x20(%rsp)
   140002749:   b9 04 00 00 00          mov    $0x4,%ecx
   14000274e:   4c 89 4c 24 68          mov    %r9,0x68(%rsp)
   140002753:   45 31 c9                xor    %r9d,%r9d
   140002756:   48 89 44 24 38          mov    %rax,0x38(%rsp)
   14000275b:   e8 e0 00 00 00          call   140002840 <__stdio_common_vfwprintf>
   140002760:   48 83 c4 48             add    $0x48,%rsp
   140002764:   c3                      ret
   140002765:   66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
   14000276c:   00 00 00 00

0000000140002770 <tzset>:
   140002770:   48 83 ec 28             sub    $0x28,%rsp
   140002774:   48 8b 05 95 1c 00 00    mov    0x1c95(%rip),%rax        # 140004410 <.refptr.__imp__tzset>
   14000277b:   ff 10                   call   *(%rax)
   14000277d:   e8 7e 00 00 00          call   140002800 <__tzname>
   140002782:   48 89 05 37 09 00 00    mov    %rax,0x937(%rip)        # 1400030c0 <__imp_tzname>
   140002789:   e8 6a 00 00 00          call   1400027f8 <__timezone>
   14000278e:   48 89 05 23 09 00 00    mov    %rax,0x923(%rip)        # 1400030b8 <__imp_timezone>
   140002795:   e8 56 00 00 00          call   1400027f0 <__daylight>
   14000279a:   48 89 05 0f 09 00 00    mov    %rax,0x90f(%rip)        # 1400030b0 <__imp_daylight>
   1400027a1:   48 83 c4 28             add    $0x28,%rsp
   1400027a5:   c3                      ret
   1400027a6:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
   1400027ad:   00 00 00

00000001400027b0 <_tzset>:
   1400027b0:   48 83 ec 28             sub    $0x28,%rsp
   1400027b4:   48 8b 05 55 1c 00 00    mov    0x1c55(%rip),%rax        # 140004410 <.refptr.__imp__tzset>
   1400027bb:   ff 10                   call   *(%rax)
   1400027bd:   e8 3e 00 00 00          call   140002800 <__tzname>
   1400027c2:   48 89 05 f7 08 00 00    mov    %rax,0x8f7(%rip)        # 1400030c0 <__imp_tzname>
   1400027c9:   e8 2a 00 00 00          call   1400027f8 <__timezone>
   1400027ce:   48 89 05 e3 08 00 00    mov    %rax,0x8e3(%rip)        # 1400030b8 <__imp_timezone>
   1400027d5:   e8 16 00 00 00          call   1400027f0 <__daylight>
   1400027da:   48 89 05 cf 08 00 00    mov    %rax,0x8cf(%rip)        # 1400030b0 <__imp_daylight>
   1400027e1:   48 83 c4 28             add    $0x28,%rsp
   1400027e5:   c3                      ret
   1400027e6:   90                      nop
   1400027e7:   90                      nop
   1400027e8:   90                      nop
   1400027e9:   90                      nop
   1400027ea:   90                      nop
   1400027eb:   90                      nop
   1400027ec:   90                      nop
   1400027ed:   90                      nop
   1400027ee:   90                      nop
   1400027ef:   90                      nop

00000001400027f0 <__daylight>:
   1400027f0:   ff 25 6a 5c 00 00       jmp    *0x5c6a(%rip)        # 140008460 <__imp___daylight>
   1400027f6:   90                      nop
   1400027f7:   90                      nop

00000001400027f8 <__timezone>:
   1400027f8:   ff 25 6a 5c 00 00       jmp    *0x5c6a(%rip)        # 140008468 <__imp___timezone>
   1400027fe:   90                      nop
   1400027ff:   90                      nop

0000000140002800 <__tzname>:
   140002800:   ff 25 6a 5c 00 00       jmp    *0x5c6a(%rip)        # 140008470 <__imp___tzname>
   140002806:   90                      nop
   140002807:   90                      nop

0000000140002808 <.text>:
   140002808:   0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
   14000280f:   00

0000000140002810 <strlen>:
   140002810:   ff 25 32 5c 00 00       jmp    *0x5c32(%rip)        # 140008448 <__imp_strlen>
   140002816:   90                      nop
   140002817:   90                      nop

0000000140002818 <strncmp>:
   140002818:   ff 25 32 5c 00 00       jmp    *0x5c32(%rip)        # 140008450 <__imp_strncmp>
   14000281e:   90                      nop
   14000281f:   90                      nop

0000000140002820 <__acrt_iob_func>:
   140002820:   ff 25 ea 5b 00 00       jmp    *0x5bea(%rip)        # 140008410 <__imp___acrt_iob_func>
   140002826:   90                      nop
   140002827:   90                      nop

0000000140002828 <__p__commode>:
   140002828:   ff 25 ea 5b 00 00       jmp    *0x5bea(%rip)        # 140008418 <__imp___p__commode>
   14000282e:   90                      nop
   14000282f:   90                      nop

0000000140002830 <__p__fmode>:
   140002830:   ff 25 ea 5b 00 00       jmp    *0x5bea(%rip)        # 140008420 <__imp___p__fmode>
   140002836:   90                      nop
   140002837:   90                      nop

0000000140002838 <__stdio_common_vfprintf>:
   140002838:   ff 25 ea 5b 00 00       jmp    *0x5bea(%rip)        # 140008428 <__imp___stdio_common_vfprintf>
   14000283e:   90                      nop
   14000283f:   90                      nop

0000000140002840 <__stdio_common_vfwprintf>:
   140002840:   ff 25 ea 5b 00 00       jmp    *0x5bea(%rip)        # 140008430 <__imp___stdio_common_vfwprintf>
   140002846:   90                      nop
   140002847:   90                      nop

0000000140002848 <fwrite>:
   140002848:   ff 25 ea 5b 00 00       jmp    *0x5bea(%rip)        # 140008438 <__imp_fwrite>
   14000284e:   90                      nop
   14000284f:   90                      nop

0000000140002850 <__p___argc>:
   140002850:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 140008380 <__imp___p___argc>
   140002856:   90                      nop
   140002857:   90                      nop

0000000140002858 <__p___argv>:
   140002858:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 140008388 <__imp___p___argv>
   14000285e:   90                      nop
   14000285f:   90                      nop

0000000140002860 <__p___wargv>:
   140002860:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 140008390 <__imp___p___wargv>
   140002866:   90                      nop
   140002867:   90                      nop

0000000140002868 <_cexit>:
   140002868:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 140008398 <__imp__cexit>
   14000286e:   90                      nop
   14000286f:   90                      nop

0000000140002870 <_configure_narrow_argv>:
   140002870:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083a0 <__imp__configure_narrow_argv>
   140002876:   90                      nop
   140002877:   90                      nop

0000000140002878 <_configure_wide_argv>:
   140002878:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083a8 <__imp__configure_wide_argv>
   14000287e:   90                      nop
   14000287f:   90                      nop

0000000140002880 <_crt_at_quick_exit>:
   140002880:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083b0 <__imp__crt_at_quick_exit>
   140002886:   90                      nop
   140002887:   90                      nop

0000000140002888 <_crt_atexit>:
   140002888:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083b8 <__imp__crt_atexit>
   14000288e:   90                      nop
   14000288f:   90                      nop

0000000140002890 <_exit>:
   140002890:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083c0 <__imp__exit>
   140002896:   90                      nop
   140002897:   90                      nop

0000000140002898 <_initialize_narrow_environment>:
   140002898:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083c8 <__imp__initialize_narrow_environment>
   14000289e:   90                      nop
   14000289f:   90                      nop

00000001400028a0 <_initialize_wide_environment>:
   1400028a0:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083d0 <__imp__initialize_wide_environment>
   1400028a6:   90                      nop
   1400028a7:   90                      nop

00000001400028a8 <_initterm>:
   1400028a8:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083d8 <__imp__initterm>
   1400028ae:   90                      nop
   1400028af:   90                      nop

00000001400028b0 <__set_app_type>:
   1400028b0:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083e0 <__imp___set_app_type>
   1400028b6:   90                      nop
   1400028b7:   90                      nop

00000001400028b8 <_set_invalid_parameter_handler>:
   1400028b8:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083e8 <__imp__set_invalid_parameter_handler>
   1400028be:   90                      nop
   1400028bf:   90                      nop

00000001400028c0 <abort>:
   1400028c0:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083f0 <__imp_abort>
   1400028c6:   90                      nop
   1400028c7:   90                      nop

00000001400028c8 <exit>:
   1400028c8:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 1400083f8 <__imp_exit>
   1400028ce:   90                      nop
   1400028cf:   90                      nop

00000001400028d0 <signal>:
   1400028d0:   ff 25 2a 5b 00 00       jmp    *0x5b2a(%rip)        # 140008400 <__imp_signal>
   1400028d6:   90                      nop
   1400028d7:   90                      nop
   1400028d8:   0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
   1400028df:   00

00000001400028e0 <__C_specific_handler>:
   1400028e0:   ff 25 82 5a 00 00       jmp    *0x5a82(%rip)        # 140008368 <__imp___C_specific_handler>
   1400028e6:   90                      nop
   1400028e7:   90                      nop

00000001400028e8 <memcpy>:
   1400028e8:   ff 25 82 5a 00 00       jmp    *0x5a82(%rip)        # 140008370 <__imp_memcpy>
   1400028ee:   90                      nop
   1400028ef:   90                      nop

00000001400028f0 <__setusermatherr>:
   1400028f0:   ff 25 62 5a 00 00       jmp    *0x5a62(%rip)        # 140008358 <__imp___setusermatherr>
   1400028f6:   90                      nop
   1400028f7:   90                      nop
   1400028f8:   0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
   1400028ff:   00

0000000140002900 <_set_new_mode>:
   140002900:   ff 25 2a 5a 00 00       jmp    *0x5a2a(%rip)        # 140008330 <__imp__set_new_mode>
   140002906:   90                      nop
   140002907:   90                      nop

0000000140002908 <calloc>:
   140002908:   ff 25 2a 5a 00 00       jmp    *0x5a2a(%rip)        # 140008338 <__imp_calloc>
   14000290e:   90                      nop
   14000290f:   90                      nop

0000000140002910 <free>:
   140002910:   ff 25 2a 5a 00 00       jmp    *0x5a2a(%rip)        # 140008340 <__imp_free>
   140002916:   90                      nop
   140002917:   90                      nop

0000000140002918 <malloc>:
   140002918:   ff 25 2a 5a 00 00       jmp    *0x5a2a(%rip)        # 140008348 <__imp_malloc>
   14000291e:   90                      nop
   14000291f:   90                      nop

0000000140002920 <__p__environ>:
   140002920:   ff 25 f2 59 00 00       jmp    *0x59f2(%rip)        # 140008318 <__imp___p__environ>
   140002926:   90                      nop
   140002927:   90                      nop

0000000140002928 <__p__wenviron>:
   140002928:   ff 25 f2 59 00 00       jmp    *0x59f2(%rip)        # 140008320 <__imp___p__wenviron>
   14000292e:   90                      nop
   14000292f:   90                      nop

0000000140002930 <VirtualQuery>:
   140002930:   ff 25 d2 59 00 00       jmp    *0x59d2(%rip)        # 140008308 <__imp_VirtualQuery>
   140002936:   90                      nop
   140002937:   90                      nop

0000000140002938 <VirtualProtect>:
   140002938:   ff 25 c2 59 00 00       jmp    *0x59c2(%rip)        # 140008300 <__imp_VirtualProtect>
   14000293e:   90                      nop
   14000293f:   90                      nop

0000000140002940 <TlsGetValue>:
   140002940:   ff 25 b2 59 00 00       jmp    *0x59b2(%rip)        # 1400082f8 <__imp_TlsGetValue>
   140002946:   90                      nop
   140002947:   90                      nop

0000000140002948 <Sleep>:
   140002948:   ff 25 a2 59 00 00       jmp    *0x59a2(%rip)        # 1400082f0 <__imp_Sleep>
   14000294e:   90                      nop
   14000294f:   90                      nop

0000000140002950 <SetUnhandledExceptionFilter>:
   140002950:   ff 25 92 59 00 00       jmp    *0x5992(%rip)        # 1400082e8 <__imp_SetUnhandledExceptionFilter>
   140002956:   90                      nop
   140002957:   90                      nop

0000000140002958 <LeaveCriticalSection>:
   140002958:   ff 25 82 59 00 00       jmp    *0x5982(%rip)        # 1400082e0 <__imp_LeaveCriticalSection>
   14000295e:   90                      nop
   14000295f:   90                      nop

0000000140002960 <InitializeCriticalSection>:
   140002960:   ff 25 72 59 00 00       jmp    *0x5972(%rip)        # 1400082d8 <__imp_InitializeCriticalSection>
   140002966:   90                      nop
   140002967:   90                      nop

0000000140002968 <GetLastError>:
   140002968:   ff 25 62 59 00 00       jmp    *0x5962(%rip)        # 1400082d0 <__imp_GetLastError>
   14000296e:   90                      nop
   14000296f:   90                      nop

0000000140002970 <EnterCriticalSection>:
   140002970:   ff 25 52 59 00 00       jmp    *0x5952(%rip)        # 1400082c8 <__imp_EnterCriticalSection>
   140002976:   90                      nop
   140002977:   90                      nop

0000000140002978 <DeleteCriticalSection>:
   140002978:   ff 25 42 59 00 00       jmp    *0x5942(%rip)        # 1400082c0 <__IAT_start__>
   14000297e:   90                      nop
   14000297f:   90                      nop

0000000140002980 <register_frame_ctor>:
   140002980:   e9 ab ea ff ff          jmp    140001430 <__gcc_register_frame>
   140002985:   90                      nop
   140002986:   90                      nop
   140002987:   90                      nop
   140002988:   90                      nop
   140002989:   90                      nop
   14000298a:   90                      nop
   14000298b:   90                      nop
   14000298c:   90                      nop
   14000298d:   90                      nop
   14000298e:   90                      nop
   14000298f:   90                      nop

0000000140002990 <__CTOR_LIST__>:
   140002990:   ff                      (bad)
   140002991:   ff                      (bad)
   140002992:   ff                      (bad)
   140002993:   ff                      (bad)
   140002994:   ff                      (bad)
   140002995:   ff                      (bad)
   140002996:   ff                      (bad)
   140002997:   ff                      .byte 0xff

0000000140002998 <.ctors.65535>:
   140002998:   80 29 00                subb   $0x0,(%rcx)
   14000299b:   40 01 00                rex add %eax,(%rax)
        ...

00000001400029a8 <__DTOR_LIST__>:
   1400029a8:   ff                      (bad)
   1400029a9:   ff                      (bad)
   1400029aa:   ff                      (bad)
   1400029ab:   ff                      (bad)
   1400029ac:   ff                      (bad)
   1400029ad:   ff                      (bad)
   1400029ae:   ff                      (bad)
   1400029af:   ff 00                   incl   (%rax)
   1400029b1:   00 00                   add    %al,(%rax)
   1400029b3:   00 00                   add    %al,(%rax)
   1400029b5:   00 00                   add    %al,(%rax)
        ...