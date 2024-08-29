
add_numbers.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 45 34 00 00 	mov    0x3445(%rip),%rax        # 140004460 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 46 34 00 00 	mov    0x3446(%rip),%rax        # 140004470 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 49 34 00 00 	mov    0x3449(%rip),%rax        # 140004480 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 bc 33 00 00 	mov    0x33bc(%rip),%rax        # 140004400 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 ef 33 00 00 	mov    0x33ef(%rip),%rax        # 140004450 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 5f 00 00    	mov    %ecx,0x5fa5(%rip)        # 14000700c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 51 18 00 00       	call   1400028c8 <__set_app_type>
   140001077:	e8 d4 17 00 00       	call   140002850 <__p__fmode>
   14000107c:	48 8b 15 ad 34 00 00 	mov    0x34ad(%rip),%rdx        # 140004530 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 bc 17 00 00       	call   140002848 <__p__commode>
   14000108c:	48 8b 15 7d 34 00 00 	mov    0x347d(%rip),%rdx        # 140004510 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 f4 04 00 00       	call   140001590 <_setargv>
   14000109c:	48 8b 05 ed 32 00 00 	mov    0x32ed(%rip),%rax        # 140004390 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 0e 18 00 00       	call   1400028c8 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 51 34 00 00 	mov    0x3451(%rip),%rcx        # 140004550 <.refptr._matherr>
   1400010ff:	e8 fc 0b 00 00       	call   140001d00 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 25 34 00 00 	mov    0x3425(%rip),%rax        # 140004560 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 140007018 <envp>
   140001142:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 140007020 <argv>
   140001149:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 140007028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac 5e 00 00    	mov    %eax,0x5eac(%rip)        # 140007004 <startinfo>
   140001158:	48 8b 05 c1 33 00 00 	mov    0x33c1(%rip),%rax        # 140004520 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b 5e 00 00 	lea    0x5e9b(%rip),%rax        # 140007004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 7d 14 00 00       	call   1400025f0 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   %r12
   140001182:	55                   	push   %rbp
   140001183:	57                   	push   %rdi
   140001184:	56                   	push   %rsi
   140001185:	53                   	push   %rbx
   140001186:	48 83 ec 20          	sub    $0x20,%rsp
   14000118a:	48 8b 1d 1f 33 00 00 	mov    0x331f(%rip),%rbx        # 1400044b0 <.refptr.__native_startup_lock>
   140001191:	31 ff                	xor    %edi,%edi
   140001193:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   14000119a:	00 00 
   14000119c:	48 8b 2d 59 71 00 00 	mov    0x7159(%rip),%rbp        # 1400082fc <__imp_Sleep>
   1400011a3:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011a7:	eb 17                	jmp    1400011c0 <__tmainCRTStartup+0x40>
   1400011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400011b0:	48 39 c6             	cmp    %rax,%rsi
   1400011b3:	0f 84 67 01 00 00    	je     140001320 <__tmainCRTStartup+0x1a0>
   1400011b9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011be:	ff d5                	call   *%rbp
   1400011c0:	48 89 f8             	mov    %rdi,%rax
   1400011c3:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011c8:	48 85 c0             	test   %rax,%rax
   1400011cb:	75 e3                	jne    1400011b0 <__tmainCRTStartup+0x30>
   1400011cd:	48 8b 35 ec 32 00 00 	mov    0x32ec(%rip),%rsi        # 1400044c0 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 5e 00 00 01 	movl   $0x1,0x5e13(%rip)        # 140007008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 e1 31 00 00 	mov    0x31e1(%rip),%rax        # 1400043f0 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 38 07 00 00       	call   140001960 <_pei386_runtime_relocator>
   140001228:	48 8b 0d 11 33 00 00 	mov    0x3311(%rip),%rcx        # 140004540 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 bf 70 00 00    	call   *0x70bf(%rip)        # 1400082f4 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 64 32 00 00 	mov    0x3264(%rip),%rdx        # 1400044a0 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 85 16 00 00       	call   1400028d0 <_set_invalid_parameter_handler>
   14000124b:	e8 20 05 00 00       	call   140001770 <_fpreset>
   140001250:	8b 1d d2 5d 00 00    	mov    0x5dd2(%rip),%ebx        # 140007028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 c0 16 00 00       	call   140002928 <malloc>
   140001268:	85 db                	test   %ebx,%ebx
   14000126a:	48 8b 2d af 5d 00 00 	mov    0x5daf(%rip),%rbp        # 140007020 <argv>
   140001271:	49 89 c4             	mov    %rax,%r12
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	48 8b 4c 1d 00       	mov    0x0(%rbp,%rbx,1),%rcx
   140001285:	e8 a6 15 00 00       	call   140002830 <strlen>
   14000128a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128e:	48 89 f1             	mov    %rsi,%rcx
   140001291:	e8 92 16 00 00       	call   140002928 <malloc>
   140001296:	49 89 f0             	mov    %rsi,%r8
   140001299:	49 89 04 1c          	mov    %rax,(%r12,%rbx,1)
   14000129d:	48 8b 54 1d 00       	mov    0x0(%rbp,%rbx,1),%rdx
   1400012a2:	48 89 c1             	mov    %rax,%rcx
   1400012a5:	48 83 c3 08          	add    $0x8,%rbx
   1400012a9:	e8 4a 16 00 00       	call   1400028f8 <memcpy>
   1400012ae:	48 39 df             	cmp    %rbx,%rdi
   1400012b1:	75 cd                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b3:	4c 01 e7             	add    %r12,%rdi
   1400012b6:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bd:	4c 89 25 5c 5d 00 00 	mov    %r12,0x5d5c(%rip)        # 140007020 <argv>
   1400012c4:	e8 a7 02 00 00       	call   140001570 <__main>
   1400012c9:	48 8b 05 40 31 00 00 	mov    0x3140(%rip),%rax        # 140004410 <.refptr.__imp___initenv>
   1400012d0:	4c 8b 05 41 5d 00 00 	mov    0x5d41(%rip),%r8        # 140007018 <envp>
   1400012d7:	8b 0d 4b 5d 00 00    	mov    0x5d4b(%rip),%ecx        # 140007028 <argc>
   1400012dd:	48 8b 00             	mov    (%rax),%rax
   1400012e0:	4c 89 00             	mov    %r8,(%rax)
   1400012e3:	48 8b 15 36 5d 00 00 	mov    0x5d36(%rip),%rdx        # 140007020 <argv>
   1400012ea:	e8 61 01 00 00       	call   140001450 <main>
   1400012ef:	8b 0d 17 5d 00 00    	mov    0x5d17(%rip),%ecx        # 14000700c <managedapp>
   1400012f5:	89 05 15 5d 00 00    	mov    %eax,0x5d15(%rip)        # 140007010 <mainret>
   1400012fb:	85 c9                	test   %ecx,%ecx
   1400012fd:	0f 84 c5 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001303:	8b 15 ff 5c 00 00    	mov    0x5cff(%rip),%edx        # 140007008 <has_cctor>
   140001309:	85 d2                	test   %edx,%edx
   14000130b:	74 73                	je     140001380 <__tmainCRTStartup+0x200>
   14000130d:	48 83 c4 20          	add    $0x20,%rsp
   140001311:	5b                   	pop    %rbx
   140001312:	5e                   	pop    %rsi
   140001313:	5f                   	pop    %rdi
   140001314:	5d                   	pop    %rbp
   140001315:	41 5c                	pop    %r12
   140001317:	c3                   	ret
   140001318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000131f:	00 
   140001320:	48 8b 35 99 31 00 00 	mov    0x3199(%rip),%rsi        # 1400044c0 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 cf 13 00 00       	call   140002710 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 8d 31 00 00 	mov    0x318d(%rip),%rdx        # 1400044e0 <.refptr.__xc_z>
   140001353:	48 8b 0d 76 31 00 00 	mov    0x3176(%rip),%rcx        # 1400044d0 <.refptr.__xc_a>
   14000135a:	e8 61 15 00 00       	call   1400028c0 <_initterm>
   14000135f:	85 ff                	test   %edi,%edi
   140001361:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 03 15 00 00       	call   140002888 <_cexit>
   140001385:	8b 05 85 5c 00 00    	mov    0x5c85(%rip),%eax        # 140007010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 59 31 00 00 	mov    0x3159(%rip),%rdx        # 140004500 <.refptr.__xi_z>
   1400013a7:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013ad:	48 8b 0d 3c 31 00 00 	mov    0x313c(%rip),%rcx        # 1400044f0 <.refptr.__xi_a>
   1400013b4:	e8 07 15 00 00       	call   1400028c0 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ee fe ff ff       	jmp    1400012b6 <__tmainCRTStartup+0x136>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 51 0d 00 00       	call   140002120 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 75 30 00 00 	mov    0x3075(%rip),%rax        # 140004450 <.refptr.__mingw_app_type>
   1400013db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013e1:	e8 9a fd ff ff       	call   140001180 <__tmainCRTStartup>
   1400013e6:	90                   	nop

00000001400013e7 <.l_endw>:
   1400013e7:	90                   	nop
   1400013e8:	48 83 c4 28          	add    $0x28,%rsp
   1400013ec:	c3                   	ret
   1400013ed:	0f 1f 00             	nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:	48 8b 05 55 30 00 00 	mov    0x3055(%rip),%rax        # 140004450 <.refptr.__mingw_app_type>
   1400013fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001401:	e8 7a fd ff ff       	call   140001180 <__tmainCRTStartup>
   140001406:	90                   	nop

0000000140001407 <.l_end>:
   140001407:	90                   	nop
   140001408:	48 83 c4 28          	add    $0x28,%rsp
   14000140c:	c3                   	ret
   14000140d:	0f 1f 00             	nopl   (%rax)

0000000140001410 <atexit>:
   140001410:	48 83 ec 28          	sub    $0x28,%rsp
   140001414:	e8 b7 12 00 00       	call   1400026d0 <_onexit>
   140001419:	48 83 f8 01          	cmp    $0x1,%rax
   14000141d:	19 c0                	sbb    %eax,%eax
   14000141f:	48 83 c4 28          	add    $0x28,%rsp
   140001423:	c3                   	ret
   140001424:	90                   	nop
   140001425:	90                   	nop
   140001426:	90                   	nop
   140001427:	90                   	nop
   140001428:	90                   	nop
   140001429:	90                   	nop
   14000142a:	90                   	nop
   14000142b:	90                   	nop
   14000142c:	90                   	nop
   14000142d:	90                   	nop
   14000142e:	90                   	nop
   14000142f:	90                   	nop

0000000140001430 <__gcc_register_frame>:
   140001430:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:	e9 d4 ff ff ff       	jmp    140001410 <atexit>
   14000143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:	c3                   	ret
   140001441:	90                   	nop
   140001442:	90                   	nop
   140001443:	90                   	nop
   140001444:	90                   	nop
   140001445:	90                   	nop
   140001446:	90                   	nop
   140001447:	90                   	nop
   140001448:	90                   	nop
   140001449:	90                   	nop
   14000144a:	90                   	nop
   14000144b:	90                   	nop
   14000144c:	90                   	nop
   14000144d:	90                   	nop
   14000144e:	90                   	nop
   14000144f:	90                   	nop

0000000140001450 <main>:
   140001450:	55                   	push   %rbp
   140001451:	48 89 e5             	mov    %rsp,%rbp
   140001454:	48 83 ec 30          	sub    $0x30,%rsp
   140001458:	e8 13 01 00 00       	call   140001570 <__main>
   14000145d:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001461:	48 89 c2             	mov    %rax,%rdx
   140001464:	48 8b 05 35 2f 00 00 	mov    0x2f35(%rip),%rax        # 1400043a0 <__fu1__ZSt3cin>
   14000146b:	48 89 c1             	mov    %rax,%rcx
   14000146e:	e8 45 00 00 00       	call   1400014b8 <_ZNSirsERi>
   140001473:	48 89 c1             	mov    %rax,%rcx
   140001476:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   14000147a:	48 89 c2             	mov    %rax,%rdx
   14000147d:	e8 36 00 00 00       	call   1400014b8 <_ZNSirsERi>
   140001482:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140001485:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140001488:	01 d0                	add    %edx,%eax
   14000148a:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000148d:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001490:	89 c2                	mov    %eax,%edx
   140001492:	48 8b 05 17 2f 00 00 	mov    0x2f17(%rip),%rax        # 1400043b0 <__fu0__ZSt4cout>
   140001499:	48 89 c1             	mov    %rax,%rcx
   14000149c:	e8 0f 00 00 00       	call   1400014b0 <_ZNSolsEi>
   1400014a1:	b8 00 00 00 00       	mov    $0x0,%eax
   1400014a6:	48 83 c4 30          	add    $0x30,%rsp
   1400014aa:	5d                   	pop    %rbp
   1400014ab:	c3                   	ret
   1400014ac:	90                   	nop
   1400014ad:	90                   	nop
   1400014ae:	90                   	nop
   1400014af:	90                   	nop

00000001400014b0 <_ZNSolsEi>:
   1400014b0:	ff 25 e6 6f 00 00    	jmp    *0x6fe6(%rip)        # 14000849c <__imp__ZNSolsEi>
   1400014b6:	90                   	nop
   1400014b7:	90                   	nop

00000001400014b8 <_ZNSirsERi>:
   1400014b8:	ff 25 d6 6f 00 00    	jmp    *0x6fd6(%rip)        # 140008494 <__imp__ZNSirsERi>
   1400014be:	90                   	nop
   1400014bf:	90                   	nop

00000001400014c0 <__do_global_dtors>:
   1400014c0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014c4:	48 8b 05 35 1b 00 00 	mov    0x1b35(%rip),%rax        # 140003000 <__data_start__>
   1400014cb:	48 8b 00             	mov    (%rax),%rax
   1400014ce:	48 85 c0             	test   %rax,%rax
   1400014d1:	74 22                	je     1400014f5 <__do_global_dtors+0x35>
   1400014d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400014d8:	ff d0                	call   *%rax
   1400014da:	48 8b 05 1f 1b 00 00 	mov    0x1b1f(%rip),%rax        # 140003000 <__data_start__>
   1400014e1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400014e5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400014e9:	48 89 15 10 1b 00 00 	mov    %rdx,0x1b10(%rip)        # 140003000 <__data_start__>
   1400014f0:	48 85 c0             	test   %rax,%rax
   1400014f3:	75 e3                	jne    1400014d8 <__do_global_dtors+0x18>
   1400014f5:	48 83 c4 28          	add    $0x28,%rsp
   1400014f9:	c3                   	ret
   1400014fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001500 <__do_global_ctors>:
   140001500:	56                   	push   %rsi
   140001501:	53                   	push   %rbx
   140001502:	48 83 ec 28          	sub    $0x28,%rsp
   140001506:	48 8b 15 b3 2e 00 00 	mov    0x2eb3(%rip),%rdx        # 1400043c0 <.refptr.__CTOR_LIST__>
   14000150d:	48 8b 02             	mov    (%rdx),%rax
   140001510:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001513:	89 c1                	mov    %eax,%ecx
   140001515:	74 39                	je     140001550 <__do_global_ctors+0x50>
   140001517:	85 c9                	test   %ecx,%ecx
   140001519:	74 20                	je     14000153b <__do_global_ctors+0x3b>
   14000151b:	89 c8                	mov    %ecx,%eax
   14000151d:	83 e9 01             	sub    $0x1,%ecx
   140001520:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001524:	48 29 c8             	sub    %rcx,%rax
   140001527:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000152c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001530:	ff 13                	call   *(%rbx)
   140001532:	48 83 eb 08          	sub    $0x8,%rbx
   140001536:	48 39 f3             	cmp    %rsi,%rbx
   140001539:	75 f5                	jne    140001530 <__do_global_ctors+0x30>
   14000153b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 1400014c0 <__do_global_dtors>
   140001542:	48 83 c4 28          	add    $0x28,%rsp
   140001546:	5b                   	pop    %rbx
   140001547:	5e                   	pop    %rsi
   140001548:	e9 c3 fe ff ff       	jmp    140001410 <atexit>
   14000154d:	0f 1f 00             	nopl   (%rax)
   140001550:	31 c0                	xor    %eax,%eax
   140001552:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001558:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000155c:	89 c1                	mov    %eax,%ecx
   14000155e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001563:	4c 89 c0             	mov    %r8,%rax
   140001566:	75 f0                	jne    140001558 <__do_global_ctors+0x58>
   140001568:	eb ad                	jmp    140001517 <__do_global_ctors+0x17>
   14000156a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001570 <__main>:
   140001570:	8b 05 ba 5a 00 00    	mov    0x5aba(%rip),%eax        # 140007030 <initialized>
   140001576:	85 c0                	test   %eax,%eax
   140001578:	74 06                	je     140001580 <__main+0x10>
   14000157a:	c3                   	ret
   14000157b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001580:	c7 05 a6 5a 00 00 01 	movl   $0x1,0x5aa6(%rip)        # 140007030 <initialized>
   140001587:	00 00 00 
   14000158a:	e9 71 ff ff ff       	jmp    140001500 <__do_global_ctors>
   14000158f:	90                   	nop

0000000140001590 <_setargv>:
   140001590:	31 c0                	xor    %eax,%eax
   140001592:	c3                   	ret
   140001593:	90                   	nop
   140001594:	90                   	nop
   140001595:	90                   	nop
   140001596:	90                   	nop
   140001597:	90                   	nop
   140001598:	90                   	nop
   140001599:	90                   	nop
   14000159a:	90                   	nop
   14000159b:	90                   	nop
   14000159c:	90                   	nop
   14000159d:	90                   	nop
   14000159e:	90                   	nop
   14000159f:	90                   	nop

00000001400015a0 <__dyn_tls_dtor>:
   1400015a0:	48 83 ec 28          	sub    $0x28,%rsp
   1400015a4:	83 fa 03             	cmp    $0x3,%edx
   1400015a7:	74 17                	je     1400015c0 <__dyn_tls_dtor+0x20>
   1400015a9:	85 d2                	test   %edx,%edx
   1400015ab:	74 13                	je     1400015c0 <__dyn_tls_dtor+0x20>
   1400015ad:	b8 01 00 00 00       	mov    $0x1,%eax
   1400015b2:	48 83 c4 28          	add    $0x28,%rsp
   1400015b6:	c3                   	ret
   1400015b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400015be:	00 00 
   1400015c0:	e8 5b 0a 00 00       	call   140002020 <__mingw_TLScallback>
   1400015c5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400015ca:	48 83 c4 28          	add    $0x28,%rsp
   1400015ce:	c3                   	ret
   1400015cf:	90                   	nop

00000001400015d0 <__dyn_tls_init>:
   1400015d0:	56                   	push   %rsi
   1400015d1:	53                   	push   %rbx
   1400015d2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015d6:	48 8b 05 a3 2d 00 00 	mov    0x2da3(%rip),%rax        # 140004380 <.refptr._CRT_MT>
   1400015dd:	83 38 02             	cmpl   $0x2,(%rax)
   1400015e0:	74 06                	je     1400015e8 <__dyn_tls_init+0x18>
   1400015e2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400015e8:	83 fa 02             	cmp    $0x2,%edx
   1400015eb:	74 13                	je     140001600 <__dyn_tls_init+0x30>
   1400015ed:	83 fa 01             	cmp    $0x1,%edx
   1400015f0:	74 4e                	je     140001640 <__dyn_tls_init+0x70>
   1400015f2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400015f7:	48 83 c4 28          	add    $0x28,%rsp
   1400015fb:	5b                   	pop    %rbx
   1400015fc:	5e                   	pop    %rsi
   1400015fd:	c3                   	ret
   1400015fe:	66 90                	xchg   %ax,%ax
   140001600:	48 8d 1d 51 7a 00 00 	lea    0x7a51(%rip),%rbx        # 140009058 <__xd_z>
   140001607:	48 8d 35 4a 7a 00 00 	lea    0x7a4a(%rip),%rsi        # 140009058 <__xd_z>
   14000160e:	48 39 de             	cmp    %rbx,%rsi
   140001611:	74 df                	je     1400015f2 <__dyn_tls_init+0x22>
   140001613:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001618:	48 8b 03             	mov    (%rbx),%rax
   14000161b:	48 85 c0             	test   %rax,%rax
   14000161e:	74 02                	je     140001622 <__dyn_tls_init+0x52>
   140001620:	ff d0                	call   *%rax
   140001622:	48 83 c3 08          	add    $0x8,%rbx
   140001626:	48 39 de             	cmp    %rbx,%rsi
   140001629:	75 ed                	jne    140001618 <__dyn_tls_init+0x48>
   14000162b:	b8 01 00 00 00       	mov    $0x1,%eax
   140001630:	48 83 c4 28          	add    $0x28,%rsp
   140001634:	5b                   	pop    %rbx
   140001635:	5e                   	pop    %rsi
   140001636:	c3                   	ret
   140001637:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000163e:	00 00 
   140001640:	e8 db 09 00 00       	call   140002020 <__mingw_TLScallback>
   140001645:	b8 01 00 00 00       	mov    $0x1,%eax
   14000164a:	48 83 c4 28          	add    $0x28,%rsp
   14000164e:	5b                   	pop    %rbx
   14000164f:	5e                   	pop    %rsi
   140001650:	c3                   	ret
   140001651:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001658:	00 00 00 00 
   14000165c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001660 <__tlregdtor>:
   140001660:	31 c0                	xor    %eax,%eax
   140001662:	c3                   	ret
   140001663:	90                   	nop
   140001664:	90                   	nop
   140001665:	90                   	nop
   140001666:	90                   	nop
   140001667:	90                   	nop
   140001668:	90                   	nop
   140001669:	90                   	nop
   14000166a:	90                   	nop
   14000166b:	90                   	nop
   14000166c:	90                   	nop
   14000166d:	90                   	nop
   14000166e:	90                   	nop
   14000166f:	90                   	nop

0000000140001670 <_matherr>:
   140001670:	56                   	push   %rsi
   140001671:	53                   	push   %rbx
   140001672:	48 83 ec 78          	sub    $0x78,%rsp
   140001676:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   14000167b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140001680:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140001686:	83 39 06             	cmpl   $0x6,(%rcx)
   140001689:	0f 87 cd 00 00 00    	ja     14000175c <_matherr+0xec>
   14000168f:	8b 01                	mov    (%rcx),%eax
   140001691:	48 8d 15 0c 2b 00 00 	lea    0x2b0c(%rip),%rdx        # 1400041a4 <.rdata+0x124>
   140001698:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000169c:	48 01 d0             	add    %rdx,%rax
   14000169f:	ff e0                	jmp    *%rax
   1400016a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400016a8:	48 8d 1d f0 29 00 00 	lea    0x29f0(%rip),%rbx        # 14000409f <.rdata+0x1f>
   1400016af:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400016b3:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400016b9:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400016be:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400016c3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400016c8:	e8 73 11 00 00       	call   140002840 <__acrt_iob_func>
   1400016cd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400016d4:	49 89 f1             	mov    %rsi,%r9
   1400016d7:	49 89 d8             	mov    %rbx,%r8
   1400016da:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400016e0:	48 89 c1             	mov    %rax,%rcx
   1400016e3:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400016e9:	48 8d 15 88 2a 00 00 	lea    0x2a88(%rip),%rdx        # 140004178 <.rdata+0xf8>
   1400016f0:	e8 ab 0e 00 00       	call   1400025a0 <fprintf>
   1400016f5:	90                   	nop
   1400016f6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   1400016fb:	31 c0                	xor    %eax,%eax
   1400016fd:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   140001702:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   140001708:	48 83 c4 78          	add    $0x78,%rsp
   14000170c:	5b                   	pop    %rbx
   14000170d:	5e                   	pop    %rsi
   14000170e:	c3                   	ret
   14000170f:	90                   	nop
   140001710:	48 8d 1d 69 29 00 00 	lea    0x2969(%rip),%rbx        # 140004080 <.rdata>
   140001717:	eb 96                	jmp    1400016af <_matherr+0x3f>
   140001719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001720:	48 8d 1d b9 29 00 00 	lea    0x29b9(%rip),%rbx        # 1400040e0 <.rdata+0x60>
   140001727:	eb 86                	jmp    1400016af <_matherr+0x3f>
   140001729:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001730:	48 8d 1d 89 29 00 00 	lea    0x2989(%rip),%rbx        # 1400040c0 <.rdata+0x40>
   140001737:	e9 73 ff ff ff       	jmp    1400016af <_matherr+0x3f>
   14000173c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001740:	48 8d 1d e9 29 00 00 	lea    0x29e9(%rip),%rbx        # 140004130 <.rdata+0xb0>
   140001747:	e9 63 ff ff ff       	jmp    1400016af <_matherr+0x3f>
   14000174c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001750:	48 8d 1d b1 29 00 00 	lea    0x29b1(%rip),%rbx        # 140004108 <.rdata+0x88>
   140001757:	e9 53 ff ff ff       	jmp    1400016af <_matherr+0x3f>
   14000175c:	48 8d 1d 03 2a 00 00 	lea    0x2a03(%rip),%rbx        # 140004166 <.rdata+0xe6>
   140001763:	e9 47 ff ff ff       	jmp    1400016af <_matherr+0x3f>
   140001768:	90                   	nop
   140001769:	90                   	nop
   14000176a:	90                   	nop
   14000176b:	90                   	nop
   14000176c:	90                   	nop
   14000176d:	90                   	nop
   14000176e:	90                   	nop
   14000176f:	90                   	nop

0000000140001770 <_fpreset>:
   140001770:	db e3                	fninit
   140001772:	c3                   	ret
   140001773:	90                   	nop
   140001774:	90                   	nop
   140001775:	90                   	nop
   140001776:	90                   	nop
   140001777:	90                   	nop
   140001778:	90                   	nop
   140001779:	90                   	nop
   14000177a:	90                   	nop
   14000177b:	90                   	nop
   14000177c:	90                   	nop
   14000177d:	90                   	nop
   14000177e:	90                   	nop
   14000177f:	90                   	nop

0000000140001780 <__report_error>:
   140001780:	56                   	push   %rsi
   140001781:	53                   	push   %rbx
   140001782:	48 83 ec 38          	sub    $0x38,%rsp
   140001786:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000178b:	48 89 cb             	mov    %rcx,%rbx
   14000178e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001793:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001798:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000179d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400017a2:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400017a7:	e8 94 10 00 00       	call   140002840 <__acrt_iob_func>
   1400017ac:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   1400017b2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400017b7:	48 8d 0d 02 2a 00 00 	lea    0x2a02(%rip),%rcx        # 1400041c0 <.rdata>
   1400017be:	49 89 c1             	mov    %rax,%r9
   1400017c1:	e8 a2 10 00 00       	call   140002868 <fwrite>
   1400017c6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   1400017cb:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400017d0:	e8 6b 10 00 00       	call   140002840 <__acrt_iob_func>
   1400017d5:	48 89 da             	mov    %rbx,%rdx
   1400017d8:	48 89 c1             	mov    %rax,%rcx
   1400017db:	49 89 f0             	mov    %rsi,%r8
   1400017de:	e8 9d 0d 00 00       	call   140002580 <vfprintf>
   1400017e3:	e8 f0 10 00 00       	call   1400028d8 <abort>
   1400017e8:	90                   	nop
   1400017e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400017f0 <mark_section_writable>:
   1400017f0:	57                   	push   %rdi
   1400017f1:	56                   	push   %rsi
   1400017f2:	53                   	push   %rbx
   1400017f3:	48 83 ec 50          	sub    $0x50,%rsp
   1400017f7:	48 63 35 96 58 00 00 	movslq 0x5896(%rip),%rsi        # 140007094 <maxSections>
   1400017fe:	85 f6                	test   %esi,%esi
   140001800:	48 89 cb             	mov    %rcx,%rbx
   140001803:	0f 8e 17 01 00 00    	jle    140001920 <mark_section_writable+0x130>
   140001809:	48 8b 05 88 58 00 00 	mov    0x5888(%rip),%rax        # 140007098 <the_secs>
   140001810:	45 31 c9             	xor    %r9d,%r9d
   140001813:	48 83 c0 18          	add    $0x18,%rax
   140001817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000181e:	00 00 
   140001820:	4c 8b 00             	mov    (%rax),%r8
   140001823:	4c 39 c3             	cmp    %r8,%rbx
   140001826:	72 13                	jb     14000183b <mark_section_writable+0x4b>
   140001828:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000182c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000182f:	49 01 d0             	add    %rdx,%r8
   140001832:	4c 39 c3             	cmp    %r8,%rbx
   140001835:	0f 82 8a 00 00 00    	jb     1400018c5 <mark_section_writable+0xd5>
   14000183b:	41 83 c1 01          	add    $0x1,%r9d
   14000183f:	48 83 c0 28          	add    $0x28,%rax
   140001843:	41 39 f1             	cmp    %esi,%r9d
   140001846:	75 d8                	jne    140001820 <mark_section_writable+0x30>
   140001848:	48 89 d9             	mov    %rbx,%rcx
   14000184b:	e8 10 0a 00 00       	call   140002260 <__mingw_GetSectionForAddress>
   140001850:	48 85 c0             	test   %rax,%rax
   140001853:	48 89 c7             	mov    %rax,%rdi
   140001856:	0f 84 e6 00 00 00    	je     140001942 <mark_section_writable+0x152>
   14000185c:	48 8b 05 35 58 00 00 	mov    0x5835(%rip),%rax        # 140007098 <the_secs>
   140001863:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140001867:	48 c1 e3 03          	shl    $0x3,%rbx
   14000186b:	48 01 d8             	add    %rbx,%rax
   14000186e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140001872:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001878:	e8 23 0b 00 00       	call   1400023a0 <_GetPEImageBase>
   14000187d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140001880:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001886:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000188a:	48 8b 05 07 58 00 00 	mov    0x5807(%rip),%rax        # 140007098 <the_secs>
   140001891:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001896:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000189b:	ff 15 73 6a 00 00    	call   *0x6a73(%rip)        # 140008314 <__imp_VirtualQuery>
   1400018a1:	48 85 c0             	test   %rax,%rax
   1400018a4:	0f 84 7d 00 00 00    	je     140001927 <mark_section_writable+0x137>
   1400018aa:	8b 44 24 44          	mov    0x44(%rsp),%eax
   1400018ae:	8d 50 c0             	lea    -0x40(%rax),%edx
   1400018b1:	83 e2 bf             	and    $0xffffffbf,%edx
   1400018b4:	74 08                	je     1400018be <mark_section_writable+0xce>
   1400018b6:	8d 50 fc             	lea    -0x4(%rax),%edx
   1400018b9:	83 e2 fb             	and    $0xfffffffb,%edx
   1400018bc:	75 12                	jne    1400018d0 <mark_section_writable+0xe0>
   1400018be:	83 05 cf 57 00 00 01 	addl   $0x1,0x57cf(%rip)        # 140007094 <maxSections>
   1400018c5:	48 83 c4 50          	add    $0x50,%rsp
   1400018c9:	5b                   	pop    %rbx
   1400018ca:	5e                   	pop    %rsi
   1400018cb:	5f                   	pop    %rdi
   1400018cc:	c3                   	ret
   1400018cd:	0f 1f 00             	nopl   (%rax)
   1400018d0:	83 f8 02             	cmp    $0x2,%eax
   1400018d3:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   1400018d9:	b8 04 00 00 00       	mov    $0x4,%eax
   1400018de:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400018e3:	44 0f 44 c0          	cmove  %eax,%r8d
   1400018e7:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400018ec:	48 03 1d a5 57 00 00 	add    0x57a5(%rip),%rbx        # 140007098 <the_secs>
   1400018f3:	49 89 d9             	mov    %rbx,%r9
   1400018f6:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400018fa:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400018fe:	ff 15 08 6a 00 00    	call   *0x6a08(%rip)        # 14000830c <__imp_VirtualProtect>
   140001904:	85 c0                	test   %eax,%eax
   140001906:	75 b6                	jne    1400018be <mark_section_writable+0xce>
   140001908:	ff 15 ce 69 00 00    	call   *0x69ce(%rip)        # 1400082dc <__imp_GetLastError>
   14000190e:	48 8d 0d 23 29 00 00 	lea    0x2923(%rip),%rcx        # 140004238 <.rdata+0x78>
   140001915:	89 c2                	mov    %eax,%edx
   140001917:	e8 64 fe ff ff       	call   140001780 <__report_error>
   14000191c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001920:	31 f6                	xor    %esi,%esi
   140001922:	e9 21 ff ff ff       	jmp    140001848 <mark_section_writable+0x58>
   140001927:	48 8b 05 6a 57 00 00 	mov    0x576a(%rip),%rax        # 140007098 <the_secs>
   14000192e:	48 8d 0d cb 28 00 00 	lea    0x28cb(%rip),%rcx        # 140004200 <.rdata+0x40>
   140001935:	8b 57 08             	mov    0x8(%rdi),%edx
   140001938:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000193d:	e8 3e fe ff ff       	call   140001780 <__report_error>
   140001942:	48 8d 0d 97 28 00 00 	lea    0x2897(%rip),%rcx        # 1400041e0 <.rdata+0x20>
   140001949:	48 89 da             	mov    %rbx,%rdx
   14000194c:	e8 2f fe ff ff       	call   140001780 <__report_error>
   140001951:	90                   	nop
   140001952:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001959:	00 00 00 00 
   14000195d:	0f 1f 00             	nopl   (%rax)

0000000140001960 <_pei386_runtime_relocator>:
   140001960:	55                   	push   %rbp
   140001961:	41 57                	push   %r15
   140001963:	41 56                	push   %r14
   140001965:	41 55                	push   %r13
   140001967:	41 54                	push   %r12
   140001969:	57                   	push   %rdi
   14000196a:	56                   	push   %rsi
   14000196b:	53                   	push   %rbx
   14000196c:	48 83 ec 48          	sub    $0x48,%rsp
   140001970:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001975:	8b 3d 15 57 00 00    	mov    0x5715(%rip),%edi        # 140007090 <was_init.0>
   14000197b:	85 ff                	test   %edi,%edi
   14000197d:	74 11                	je     140001990 <_pei386_runtime_relocator+0x30>
   14000197f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001983:	5b                   	pop    %rbx
   140001984:	5e                   	pop    %rsi
   140001985:	5f                   	pop    %rdi
   140001986:	41 5c                	pop    %r12
   140001988:	41 5d                	pop    %r13
   14000198a:	41 5e                	pop    %r14
   14000198c:	41 5f                	pop    %r15
   14000198e:	5d                   	pop    %rbp
   14000198f:	c3                   	ret
   140001990:	c7 05 f6 56 00 00 01 	movl   $0x1,0x56f6(%rip)        # 140007090 <was_init.0>
   140001997:	00 00 00 
   14000199a:	e8 41 09 00 00       	call   1400022e0 <__mingw_GetSectionCount>
   14000199f:	48 98                	cltq
   1400019a1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400019a5:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   1400019ac:	00 
   1400019ad:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400019b1:	e8 8a 0b 00 00       	call   140002540 <___chkstk_ms>
   1400019b6:	4c 8b 2d 13 2a 00 00 	mov    0x2a13(%rip),%r13        # 1400043d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400019bd:	c7 05 cd 56 00 00 00 	movl   $0x0,0x56cd(%rip)        # 140007094 <maxSections>
   1400019c4:	00 00 00 
   1400019c7:	48 8b 1d 12 2a 00 00 	mov    0x2a12(%rip),%rbx        # 1400043e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400019ce:	48 29 c4             	sub    %rax,%rsp
   1400019d1:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400019d6:	48 89 05 bb 56 00 00 	mov    %rax,0x56bb(%rip)        # 140007098 <the_secs>
   1400019dd:	4c 89 e8             	mov    %r13,%rax
   1400019e0:	48 29 d8             	sub    %rbx,%rax
   1400019e3:	48 83 f8 07          	cmp    $0x7,%rax
   1400019e7:	7e 96                	jle    14000197f <_pei386_runtime_relocator+0x1f>
   1400019e9:	48 83 f8 0b          	cmp    $0xb,%rax
   1400019ed:	8b 13                	mov    (%rbx),%edx
   1400019ef:	0f 8f 83 01 00 00    	jg     140001b78 <_pei386_runtime_relocator+0x218>
   1400019f5:	8b 03                	mov    (%rbx),%eax
   1400019f7:	85 c0                	test   %eax,%eax
   1400019f9:	0f 85 71 02 00 00    	jne    140001c70 <_pei386_runtime_relocator+0x310>
   1400019ff:	8b 43 04             	mov    0x4(%rbx),%eax
   140001a02:	85 c0                	test   %eax,%eax
   140001a04:	0f 85 66 02 00 00    	jne    140001c70 <_pei386_runtime_relocator+0x310>
   140001a0a:	8b 53 08             	mov    0x8(%rbx),%edx
   140001a0d:	83 fa 01             	cmp    $0x1,%edx
   140001a10:	0f 85 9c 02 00 00    	jne    140001cb2 <_pei386_runtime_relocator+0x352>
   140001a16:	48 83 c3 0c          	add    $0xc,%rbx
   140001a1a:	4c 39 eb             	cmp    %r13,%rbx
   140001a1d:	0f 83 5c ff ff ff    	jae    14000197f <_pei386_runtime_relocator+0x1f>
   140001a23:	4c 8b 25 d6 29 00 00 	mov    0x29d6(%rip),%r12        # 140004400 <.refptr.__image_base__>
   140001a2a:	49 bf ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r15
   140001a31:	ff ff ff 
   140001a34:	eb 5d                	jmp    140001a93 <_pei386_runtime_relocator+0x133>
   140001a36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001a3d:	00 00 00 
   140001a40:	41 0f b6 36          	movzbl (%r14),%esi
   140001a44:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001a4a:	40 84 f6             	test   %sil,%sil
   140001a4d:	0f 89 05 02 00 00    	jns    140001c58 <_pei386_runtime_relocator+0x2f8>
   140001a53:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140001a5a:	48 29 c6             	sub    %rax,%rsi
   140001a5d:	4c 01 ce             	add    %r9,%rsi
   140001a60:	85 c9                	test   %ecx,%ecx
   140001a62:	75 17                	jne    140001a7b <_pei386_runtime_relocator+0x11b>
   140001a64:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140001a6b:	0f 8f 4e 01 00 00    	jg     140001bbf <_pei386_runtime_relocator+0x25f>
   140001a71:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140001a75:	0f 8c 44 01 00 00    	jl     140001bbf <_pei386_runtime_relocator+0x25f>
   140001a7b:	4c 89 f1             	mov    %r14,%rcx
   140001a7e:	e8 6d fd ff ff       	call   1400017f0 <mark_section_writable>
   140001a83:	41 88 36             	mov    %sil,(%r14)
   140001a86:	48 83 c3 0c          	add    $0xc,%rbx
   140001a8a:	4c 39 eb             	cmp    %r13,%rbx
   140001a8d:	0f 83 8d 00 00 00    	jae    140001b20 <_pei386_runtime_relocator+0x1c0>
   140001a93:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140001a96:	8b 03                	mov    (%rbx),%eax
   140001a98:	44 8b 43 04          	mov    0x4(%rbx),%r8d
   140001a9c:	0f b6 d1             	movzbl %cl,%edx
   140001a9f:	4c 01 e0             	add    %r12,%rax
   140001aa2:	83 fa 20             	cmp    $0x20,%edx
   140001aa5:	4c 8b 08             	mov    (%rax),%r9
   140001aa8:	4f 8d 34 20          	lea    (%r8,%r12,1),%r14
   140001aac:	0f 84 26 01 00 00    	je     140001bd8 <_pei386_runtime_relocator+0x278>
   140001ab2:	0f 87 e8 00 00 00    	ja     140001ba0 <_pei386_runtime_relocator+0x240>
   140001ab8:	83 fa 08             	cmp    $0x8,%edx
   140001abb:	74 83                	je     140001a40 <_pei386_runtime_relocator+0xe0>
   140001abd:	83 fa 10             	cmp    $0x10,%edx
   140001ac0:	0f 85 e0 01 00 00    	jne    140001ca6 <_pei386_runtime_relocator+0x346>
   140001ac6:	41 0f b7 36          	movzwl (%r14),%esi
   140001aca:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001ad0:	66 85 f6             	test   %si,%si
   140001ad3:	0f 89 67 01 00 00    	jns    140001c40 <_pei386_runtime_relocator+0x2e0>
   140001ad9:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140001ae0:	48 29 c6             	sub    %rax,%rsi
   140001ae3:	4c 01 ce             	add    %r9,%rsi
   140001ae6:	85 c9                	test   %ecx,%ecx
   140001ae8:	75 1a                	jne    140001b04 <_pei386_runtime_relocator+0x1a4>
   140001aea:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140001af1:	0f 8c c8 00 00 00    	jl     140001bbf <_pei386_runtime_relocator+0x25f>
   140001af7:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140001afe:	0f 8f bb 00 00 00    	jg     140001bbf <_pei386_runtime_relocator+0x25f>
   140001b04:	4c 89 f1             	mov    %r14,%rcx
   140001b07:	48 83 c3 0c          	add    $0xc,%rbx
   140001b0b:	e8 e0 fc ff ff       	call   1400017f0 <mark_section_writable>
   140001b10:	4c 39 eb             	cmp    %r13,%rbx
   140001b13:	66 41 89 36          	mov    %si,(%r14)
   140001b17:	0f 82 76 ff ff ff    	jb     140001a93 <_pei386_runtime_relocator+0x133>
   140001b1d:	0f 1f 00             	nopl   (%rax)
   140001b20:	8b 15 6e 55 00 00    	mov    0x556e(%rip),%edx        # 140007094 <maxSections>
   140001b26:	85 d2                	test   %edx,%edx
   140001b28:	0f 8e 51 fe ff ff    	jle    14000197f <_pei386_runtime_relocator+0x1f>
   140001b2e:	48 8b 35 d7 67 00 00 	mov    0x67d7(%rip),%rsi        # 14000830c <__imp_VirtualProtect>
   140001b35:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   140001b39:	31 db                	xor    %ebx,%ebx
   140001b3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001b40:	48 8b 05 51 55 00 00 	mov    0x5551(%rip),%rax        # 140007098 <the_secs>
   140001b47:	48 01 d8             	add    %rbx,%rax
   140001b4a:	44 8b 00             	mov    (%rax),%r8d
   140001b4d:	45 85 c0             	test   %r8d,%r8d
   140001b50:	74 0d                	je     140001b5f <_pei386_runtime_relocator+0x1ff>
   140001b52:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001b56:	4d 89 e1             	mov    %r12,%r9
   140001b59:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001b5d:	ff d6                	call   *%rsi
   140001b5f:	83 c7 01             	add    $0x1,%edi
   140001b62:	48 83 c3 28          	add    $0x28,%rbx
   140001b66:	3b 3d 28 55 00 00    	cmp    0x5528(%rip),%edi        # 140007094 <maxSections>
   140001b6c:	7c d2                	jl     140001b40 <_pei386_runtime_relocator+0x1e0>
   140001b6e:	e9 0c fe ff ff       	jmp    14000197f <_pei386_runtime_relocator+0x1f>
   140001b73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001b78:	85 d2                	test   %edx,%edx
   140001b7a:	0f 85 f0 00 00 00    	jne    140001c70 <_pei386_runtime_relocator+0x310>
   140001b80:	8b 43 04             	mov    0x4(%rbx),%eax
   140001b83:	89 c2                	mov    %eax,%edx
   140001b85:	0b 53 08             	or     0x8(%rbx),%edx
   140001b88:	0f 85 74 fe ff ff    	jne    140001a02 <_pei386_runtime_relocator+0xa2>
   140001b8e:	48 83 c3 0c          	add    $0xc,%rbx
   140001b92:	e9 5e fe ff ff       	jmp    1400019f5 <_pei386_runtime_relocator+0x95>
   140001b97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001b9e:	00 00 
   140001ba0:	83 fa 40             	cmp    $0x40,%edx
   140001ba3:	0f 85 fd 00 00 00    	jne    140001ca6 <_pei386_runtime_relocator+0x346>
   140001ba9:	49 8b 36             	mov    (%r14),%rsi
   140001bac:	48 29 c6             	sub    %rax,%rsi
   140001baf:	4c 01 ce             	add    %r9,%rsi
   140001bb2:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001bb8:	75 66                	jne    140001c20 <_pei386_runtime_relocator+0x2c0>
   140001bba:	48 85 f6             	test   %rsi,%rsi
   140001bbd:	78 61                	js     140001c20 <_pei386_runtime_relocator+0x2c0>
   140001bbf:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140001bc4:	48 8d 0d fd 26 00 00 	lea    0x26fd(%rip),%rcx        # 1400042c8 <.rdata+0x108>
   140001bcb:	4d 89 f0             	mov    %r14,%r8
   140001bce:	e8 ad fb ff ff       	call   140001780 <__report_error>
   140001bd3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001bd8:	41 8b 36             	mov    (%r14),%esi
   140001bdb:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001be1:	85 f6                	test   %esi,%esi
   140001be3:	79 4b                	jns    140001c30 <_pei386_runtime_relocator+0x2d0>
   140001be5:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140001bec:	ff ff ff 
   140001bef:	4c 09 de             	or     %r11,%rsi
   140001bf2:	48 29 c6             	sub    %rax,%rsi
   140001bf5:	4c 01 ce             	add    %r9,%rsi
   140001bf8:	85 c9                	test   %ecx,%ecx
   140001bfa:	75 0f                	jne    140001c0b <_pei386_runtime_relocator+0x2ab>
   140001bfc:	4c 39 fe             	cmp    %r15,%rsi
   140001bff:	7e be                	jle    140001bbf <_pei386_runtime_relocator+0x25f>
   140001c01:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001c06:	48 39 c6             	cmp    %rax,%rsi
   140001c09:	7f b4                	jg     140001bbf <_pei386_runtime_relocator+0x25f>
   140001c0b:	4c 89 f1             	mov    %r14,%rcx
   140001c0e:	e8 dd fb ff ff       	call   1400017f0 <mark_section_writable>
   140001c13:	41 89 36             	mov    %esi,(%r14)
   140001c16:	e9 6b fe ff ff       	jmp    140001a86 <_pei386_runtime_relocator+0x126>
   140001c1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c20:	4c 89 f1             	mov    %r14,%rcx
   140001c23:	e8 c8 fb ff ff       	call   1400017f0 <mark_section_writable>
   140001c28:	49 89 36             	mov    %rsi,(%r14)
   140001c2b:	e9 56 fe ff ff       	jmp    140001a86 <_pei386_runtime_relocator+0x126>
   140001c30:	48 29 c6             	sub    %rax,%rsi
   140001c33:	4c 01 ce             	add    %r9,%rsi
   140001c36:	85 c9                	test   %ecx,%ecx
   140001c38:	74 c2                	je     140001bfc <_pei386_runtime_relocator+0x29c>
   140001c3a:	eb cf                	jmp    140001c0b <_pei386_runtime_relocator+0x2ab>
   140001c3c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001c40:	48 29 c6             	sub    %rax,%rsi
   140001c43:	4c 01 ce             	add    %r9,%rsi
   140001c46:	85 c9                	test   %ecx,%ecx
   140001c48:	0f 84 9c fe ff ff    	je     140001aea <_pei386_runtime_relocator+0x18a>
   140001c4e:	e9 b1 fe ff ff       	jmp    140001b04 <_pei386_runtime_relocator+0x1a4>
   140001c53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c58:	48 29 c6             	sub    %rax,%rsi
   140001c5b:	4c 01 ce             	add    %r9,%rsi
   140001c5e:	85 c9                	test   %ecx,%ecx
   140001c60:	0f 84 fe fd ff ff    	je     140001a64 <_pei386_runtime_relocator+0x104>
   140001c66:	e9 10 fe ff ff       	jmp    140001a7b <_pei386_runtime_relocator+0x11b>
   140001c6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c70:	4c 39 eb             	cmp    %r13,%rbx
   140001c73:	0f 83 06 fd ff ff    	jae    14000197f <_pei386_runtime_relocator+0x1f>
   140001c79:	4c 8b 35 80 27 00 00 	mov    0x2780(%rip),%r14        # 140004400 <.refptr.__image_base__>
   140001c80:	8b 73 04             	mov    0x4(%rbx),%esi
   140001c83:	48 83 c3 08          	add    $0x8,%rbx
   140001c87:	44 8b 63 f8          	mov    -0x8(%rbx),%r12d
   140001c8b:	4c 01 f6             	add    %r14,%rsi
   140001c8e:	44 03 26             	add    (%rsi),%r12d
   140001c91:	48 89 f1             	mov    %rsi,%rcx
   140001c94:	e8 57 fb ff ff       	call   1400017f0 <mark_section_writable>
   140001c99:	4c 39 eb             	cmp    %r13,%rbx
   140001c9c:	44 89 26             	mov    %r12d,(%rsi)
   140001c9f:	72 df                	jb     140001c80 <_pei386_runtime_relocator+0x320>
   140001ca1:	e9 7a fe ff ff       	jmp    140001b20 <_pei386_runtime_relocator+0x1c0>
   140001ca6:	48 8d 0d eb 25 00 00 	lea    0x25eb(%rip),%rcx        # 140004298 <.rdata+0xd8>
   140001cad:	e8 ce fa ff ff       	call   140001780 <__report_error>
   140001cb2:	48 8d 0d a7 25 00 00 	lea    0x25a7(%rip),%rcx        # 140004260 <.rdata+0xa0>
   140001cb9:	e8 c2 fa ff ff       	call   140001780 <__report_error>
   140001cbe:	90                   	nop
   140001cbf:	90                   	nop

0000000140001cc0 <__mingw_raise_matherr>:
   140001cc0:	48 83 ec 58          	sub    $0x58,%rsp
   140001cc4:	48 8b 05 d5 53 00 00 	mov    0x53d5(%rip),%rax        # 1400070a0 <stUserMathErr>
   140001ccb:	48 85 c0             	test   %rax,%rax
   140001cce:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140001cd2:	74 25                	je     140001cf9 <__mingw_raise_matherr+0x39>
   140001cd4:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001cdb:	00 00 
   140001cdd:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001ce1:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001ce6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001ceb:	0f 29 54 24 30       	movaps %xmm2,0x30(%rsp)
   140001cf0:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001cf6:	ff d0                	call   *%rax
   140001cf8:	90                   	nop
   140001cf9:	48 83 c4 58          	add    $0x58,%rsp
   140001cfd:	c3                   	ret
   140001cfe:	66 90                	xchg   %ax,%ax

0000000140001d00 <__mingw_setusermatherr>:
   140001d00:	48 89 0d 99 53 00 00 	mov    %rcx,0x5399(%rip)        # 1400070a0 <stUserMathErr>
   140001d07:	e9 f4 0b 00 00       	jmp    140002900 <__setusermatherr>
   140001d0c:	90                   	nop
   140001d0d:	90                   	nop
   140001d0e:	90                   	nop
   140001d0f:	90                   	nop

0000000140001d10 <_gnu_exception_handler>:
   140001d10:	53                   	push   %rbx
   140001d11:	48 83 ec 20          	sub    $0x20,%rsp
   140001d15:	48 8b 11             	mov    (%rcx),%rdx
   140001d18:	8b 02                	mov    (%rdx),%eax
   140001d1a:	48 89 cb             	mov    %rcx,%rbx
   140001d1d:	89 c1                	mov    %eax,%ecx
   140001d1f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001d25:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001d2b:	0f 84 9f 00 00 00    	je     140001dd0 <_gnu_exception_handler+0xc0>
   140001d31:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001d36:	77 77                	ja     140001daf <_gnu_exception_handler+0x9f>
   140001d38:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001d3d:	76 21                	jbe    140001d60 <_gnu_exception_handler+0x50>
   140001d3f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001d44:	83 f8 09             	cmp    $0x9,%eax
   140001d47:	77 54                	ja     140001d9d <_gnu_exception_handler+0x8d>
   140001d49:	48 8d 15 d0 25 00 00 	lea    0x25d0(%rip),%rdx        # 140004320 <.rdata>
   140001d50:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001d54:	48 01 d0             	add    %rdx,%rax
   140001d57:	ff e0                	jmp    *%rax
   140001d59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001d60:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001d65:	0f 84 d5 00 00 00    	je     140001e40 <_gnu_exception_handler+0x130>
   140001d6b:	76 3b                	jbe    140001da8 <_gnu_exception_handler+0x98>
   140001d6d:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001d72:	74 29                	je     140001d9d <_gnu_exception_handler+0x8d>
   140001d74:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001d79:	75 34                	jne    140001daf <_gnu_exception_handler+0x9f>
   140001d7b:	31 d2                	xor    %edx,%edx
   140001d7d:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001d82:	e8 59 0b 00 00       	call   1400028e0 <signal>
   140001d87:	48 83 f8 01          	cmp    $0x1,%rax
   140001d8b:	0f 84 d6 00 00 00    	je     140001e67 <_gnu_exception_handler+0x157>
   140001d91:	48 85 c0             	test   %rax,%rax
   140001d94:	74 19                	je     140001daf <_gnu_exception_handler+0x9f>
   140001d96:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001d9b:	ff d0                	call   *%rax
   140001d9d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001da2:	48 83 c4 20          	add    $0x20,%rsp
   140001da6:	5b                   	pop    %rbx
   140001da7:	c3                   	ret
   140001da8:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001dad:	74 ee                	je     140001d9d <_gnu_exception_handler+0x8d>
   140001daf:	48 8b 05 0a 53 00 00 	mov    0x530a(%rip),%rax        # 1400070c0 <__mingw_oldexcpt_handler>
   140001db6:	48 85 c0             	test   %rax,%rax
   140001db9:	74 25                	je     140001de0 <_gnu_exception_handler+0xd0>
   140001dbb:	48 89 d9             	mov    %rbx,%rcx
   140001dbe:	48 83 c4 20          	add    $0x20,%rsp
   140001dc2:	5b                   	pop    %rbx
   140001dc3:	48 ff e0             	rex.W jmp *%rax
   140001dc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001dcd:	00 00 00 
   140001dd0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001dd4:	0f 85 57 ff ff ff    	jne    140001d31 <_gnu_exception_handler+0x21>
   140001dda:	eb c1                	jmp    140001d9d <_gnu_exception_handler+0x8d>
   140001ddc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001de0:	31 c0                	xor    %eax,%eax
   140001de2:	48 83 c4 20          	add    $0x20,%rsp
   140001de6:	5b                   	pop    %rbx
   140001de7:	c3                   	ret
   140001de8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001def:	00 
   140001df0:	31 d2                	xor    %edx,%edx
   140001df2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001df7:	e8 e4 0a 00 00       	call   1400028e0 <signal>
   140001dfc:	48 83 f8 01          	cmp    $0x1,%rax
   140001e00:	0f 84 89 00 00 00    	je     140001e8f <_gnu_exception_handler+0x17f>
   140001e06:	48 85 c0             	test   %rax,%rax
   140001e09:	74 a4                	je     140001daf <_gnu_exception_handler+0x9f>
   140001e0b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e10:	ff d0                	call   *%rax
   140001e12:	eb 89                	jmp    140001d9d <_gnu_exception_handler+0x8d>
   140001e14:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e18:	31 d2                	xor    %edx,%edx
   140001e1a:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e1f:	e8 bc 0a 00 00       	call   1400028e0 <signal>
   140001e24:	48 83 f8 01          	cmp    $0x1,%rax
   140001e28:	75 dc                	jne    140001e06 <_gnu_exception_handler+0xf6>
   140001e2a:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e2f:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e34:	e8 a7 0a 00 00       	call   1400028e0 <signal>
   140001e39:	e9 5f ff ff ff       	jmp    140001d9d <_gnu_exception_handler+0x8d>
   140001e3e:	66 90                	xchg   %ax,%ax
   140001e40:	31 d2                	xor    %edx,%edx
   140001e42:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e47:	e8 94 0a 00 00       	call   1400028e0 <signal>
   140001e4c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e50:	74 29                	je     140001e7b <_gnu_exception_handler+0x16b>
   140001e52:	48 85 c0             	test   %rax,%rax
   140001e55:	0f 84 54 ff ff ff    	je     140001daf <_gnu_exception_handler+0x9f>
   140001e5b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e60:	ff d0                	call   *%rax
   140001e62:	e9 36 ff ff ff       	jmp    140001d9d <_gnu_exception_handler+0x8d>
   140001e67:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e6c:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e71:	e8 6a 0a 00 00       	call   1400028e0 <signal>
   140001e76:	e9 22 ff ff ff       	jmp    140001d9d <_gnu_exception_handler+0x8d>
   140001e7b:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e80:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e85:	e8 56 0a 00 00       	call   1400028e0 <signal>
   140001e8a:	e9 0e ff ff ff       	jmp    140001d9d <_gnu_exception_handler+0x8d>
   140001e8f:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e94:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e99:	e8 42 0a 00 00       	call   1400028e0 <signal>
   140001e9e:	e8 cd f8 ff ff       	call   140001770 <_fpreset>
   140001ea3:	e9 f5 fe ff ff       	jmp    140001d9d <_gnu_exception_handler+0x8d>
   140001ea8:	90                   	nop
   140001ea9:	90                   	nop
   140001eaa:	90                   	nop
   140001eab:	90                   	nop
   140001eac:	90                   	nop
   140001ead:	90                   	nop
   140001eae:	90                   	nop
   140001eaf:	90                   	nop

0000000140001eb0 <__mingwthr_run_key_dtors.part.0>:
   140001eb0:	41 54                	push   %r12
   140001eb2:	55                   	push   %rbp
   140001eb3:	57                   	push   %rdi
   140001eb4:	56                   	push   %rsi
   140001eb5:	53                   	push   %rbx
   140001eb6:	48 83 ec 20          	sub    $0x20,%rsp
   140001eba:	4c 8d 25 3f 52 00 00 	lea    0x523f(%rip),%r12        # 140007100 <__mingwthr_cs>
   140001ec1:	4c 89 e1             	mov    %r12,%rcx
   140001ec4:	ff 15 0a 64 00 00    	call   *0x640a(%rip)        # 1400082d4 <__imp_EnterCriticalSection>
   140001eca:	48 8b 1d 0f 52 00 00 	mov    0x520f(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001ed1:	48 85 db             	test   %rbx,%rbx
   140001ed4:	74 36                	je     140001f0c <__mingwthr_run_key_dtors.part.0+0x5c>
   140001ed6:	48 8b 2d 27 64 00 00 	mov    0x6427(%rip),%rbp        # 140008304 <__imp_TlsGetValue>
   140001edd:	48 8b 3d f8 63 00 00 	mov    0x63f8(%rip),%rdi        # 1400082dc <__imp_GetLastError>
   140001ee4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ee8:	8b 0b                	mov    (%rbx),%ecx
   140001eea:	ff d5                	call   *%rbp
   140001eec:	48 89 c6             	mov    %rax,%rsi
   140001eef:	ff d7                	call   *%rdi
   140001ef1:	85 c0                	test   %eax,%eax
   140001ef3:	75 0e                	jne    140001f03 <__mingwthr_run_key_dtors.part.0+0x53>
   140001ef5:	48 85 f6             	test   %rsi,%rsi
   140001ef8:	74 09                	je     140001f03 <__mingwthr_run_key_dtors.part.0+0x53>
   140001efa:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001efe:	48 89 f1             	mov    %rsi,%rcx
   140001f01:	ff d0                	call   *%rax
   140001f03:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001f07:	48 85 db             	test   %rbx,%rbx
   140001f0a:	75 dc                	jne    140001ee8 <__mingwthr_run_key_dtors.part.0+0x38>
   140001f0c:	4c 89 e1             	mov    %r12,%rcx
   140001f0f:	48 83 c4 20          	add    $0x20,%rsp
   140001f13:	5b                   	pop    %rbx
   140001f14:	5e                   	pop    %rsi
   140001f15:	5f                   	pop    %rdi
   140001f16:	5d                   	pop    %rbp
   140001f17:	41 5c                	pop    %r12
   140001f19:	48 ff 25 cc 63 00 00 	rex.W jmp *0x63cc(%rip)        # 1400082ec <__imp_LeaveCriticalSection>

0000000140001f20 <___w64_mingwthr_add_key_dtor>:
   140001f20:	57                   	push   %rdi
   140001f21:	56                   	push   %rsi
   140001f22:	53                   	push   %rbx
   140001f23:	48 83 ec 20          	sub    $0x20,%rsp
   140001f27:	8b 05 bb 51 00 00    	mov    0x51bb(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001f2d:	85 c0                	test   %eax,%eax
   140001f2f:	89 cf                	mov    %ecx,%edi
   140001f31:	48 89 d6             	mov    %rdx,%rsi
   140001f34:	75 0a                	jne    140001f40 <___w64_mingwthr_add_key_dtor+0x20>
   140001f36:	31 c0                	xor    %eax,%eax
   140001f38:	48 83 c4 20          	add    $0x20,%rsp
   140001f3c:	5b                   	pop    %rbx
   140001f3d:	5e                   	pop    %rsi
   140001f3e:	5f                   	pop    %rdi
   140001f3f:	c3                   	ret
   140001f40:	ba 18 00 00 00       	mov    $0x18,%edx
   140001f45:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001f4a:	e8 c9 09 00 00       	call   140002918 <calloc>
   140001f4f:	48 85 c0             	test   %rax,%rax
   140001f52:	48 89 c3             	mov    %rax,%rbx
   140001f55:	74 33                	je     140001f8a <___w64_mingwthr_add_key_dtor+0x6a>
   140001f57:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140001f5b:	48 8d 35 9e 51 00 00 	lea    0x519e(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001f62:	89 38                	mov    %edi,(%rax)
   140001f64:	48 89 f1             	mov    %rsi,%rcx
   140001f67:	ff 15 67 63 00 00    	call   *0x6367(%rip)        # 1400082d4 <__imp_EnterCriticalSection>
   140001f6d:	48 8b 05 6c 51 00 00 	mov    0x516c(%rip),%rax        # 1400070e0 <key_dtor_list>
   140001f74:	48 89 f1             	mov    %rsi,%rcx
   140001f77:	48 89 1d 62 51 00 00 	mov    %rbx,0x5162(%rip)        # 1400070e0 <key_dtor_list>
   140001f7e:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140001f82:	ff 15 64 63 00 00    	call   *0x6364(%rip)        # 1400082ec <__imp_LeaveCriticalSection>
   140001f88:	eb ac                	jmp    140001f36 <___w64_mingwthr_add_key_dtor+0x16>
   140001f8a:	83 c8 ff             	or     $0xffffffff,%eax
   140001f8d:	eb a9                	jmp    140001f38 <___w64_mingwthr_add_key_dtor+0x18>
   140001f8f:	90                   	nop

0000000140001f90 <___w64_mingwthr_remove_key_dtor>:
   140001f90:	56                   	push   %rsi
   140001f91:	53                   	push   %rbx
   140001f92:	48 83 ec 28          	sub    $0x28,%rsp
   140001f96:	8b 05 4c 51 00 00    	mov    0x514c(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001f9c:	85 c0                	test   %eax,%eax
   140001f9e:	89 cb                	mov    %ecx,%ebx
   140001fa0:	75 0e                	jne    140001fb0 <___w64_mingwthr_remove_key_dtor+0x20>
   140001fa2:	31 c0                	xor    %eax,%eax
   140001fa4:	48 83 c4 28          	add    $0x28,%rsp
   140001fa8:	5b                   	pop    %rbx
   140001fa9:	5e                   	pop    %rsi
   140001faa:	c3                   	ret
   140001fab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001fb0:	48 8d 35 49 51 00 00 	lea    0x5149(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001fb7:	48 89 f1             	mov    %rsi,%rcx
   140001fba:	ff 15 14 63 00 00    	call   *0x6314(%rip)        # 1400082d4 <__imp_EnterCriticalSection>
   140001fc0:	48 8b 0d 19 51 00 00 	mov    0x5119(%rip),%rcx        # 1400070e0 <key_dtor_list>
   140001fc7:	48 85 c9             	test   %rcx,%rcx
   140001fca:	74 27                	je     140001ff3 <___w64_mingwthr_remove_key_dtor+0x63>
   140001fcc:	31 d2                	xor    %edx,%edx
   140001fce:	eb 0b                	jmp    140001fdb <___w64_mingwthr_remove_key_dtor+0x4b>
   140001fd0:	48 85 c0             	test   %rax,%rax
   140001fd3:	48 89 ca             	mov    %rcx,%rdx
   140001fd6:	74 1b                	je     140001ff3 <___w64_mingwthr_remove_key_dtor+0x63>
   140001fd8:	48 89 c1             	mov    %rax,%rcx
   140001fdb:	8b 01                	mov    (%rcx),%eax
   140001fdd:	39 d8                	cmp    %ebx,%eax
   140001fdf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140001fe3:	75 eb                	jne    140001fd0 <___w64_mingwthr_remove_key_dtor+0x40>
   140001fe5:	48 85 d2             	test   %rdx,%rdx
   140001fe8:	74 1e                	je     140002008 <___w64_mingwthr_remove_key_dtor+0x78>
   140001fea:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140001fee:	e8 2d 09 00 00       	call   140002920 <free>
   140001ff3:	48 89 f1             	mov    %rsi,%rcx
   140001ff6:	ff 15 f0 62 00 00    	call   *0x62f0(%rip)        # 1400082ec <__imp_LeaveCriticalSection>
   140001ffc:	31 c0                	xor    %eax,%eax
   140001ffe:	48 83 c4 28          	add    $0x28,%rsp
   140002002:	5b                   	pop    %rbx
   140002003:	5e                   	pop    %rsi
   140002004:	c3                   	ret
   140002005:	0f 1f 00             	nopl   (%rax)
   140002008:	48 89 05 d1 50 00 00 	mov    %rax,0x50d1(%rip)        # 1400070e0 <key_dtor_list>
   14000200f:	eb dd                	jmp    140001fee <___w64_mingwthr_remove_key_dtor+0x5e>
   140002011:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002018:	00 00 00 00 
   14000201c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002020 <__mingw_TLScallback>:
   140002020:	53                   	push   %rbx
   140002021:	48 83 ec 20          	sub    $0x20,%rsp
   140002025:	83 fa 02             	cmp    $0x2,%edx
   140002028:	0f 84 b2 00 00 00    	je     1400020e0 <__mingw_TLScallback+0xc0>
   14000202e:	77 30                	ja     140002060 <__mingw_TLScallback+0x40>
   140002030:	85 d2                	test   %edx,%edx
   140002032:	74 4c                	je     140002080 <__mingw_TLScallback+0x60>
   140002034:	8b 05 ae 50 00 00    	mov    0x50ae(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000203a:	85 c0                	test   %eax,%eax
   14000203c:	0f 84 be 00 00 00    	je     140002100 <__mingw_TLScallback+0xe0>
   140002042:	c7 05 9c 50 00 00 01 	movl   $0x1,0x509c(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002049:	00 00 00 
   14000204c:	b8 01 00 00 00       	mov    $0x1,%eax
   140002051:	48 83 c4 20          	add    $0x20,%rsp
   140002055:	5b                   	pop    %rbx
   140002056:	c3                   	ret
   140002057:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000205e:	00 00 
   140002060:	83 fa 03             	cmp    $0x3,%edx
   140002063:	75 e7                	jne    14000204c <__mingw_TLScallback+0x2c>
   140002065:	8b 05 7d 50 00 00    	mov    0x507d(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000206b:	85 c0                	test   %eax,%eax
   14000206d:	74 dd                	je     14000204c <__mingw_TLScallback+0x2c>
   14000206f:	e8 3c fe ff ff       	call   140001eb0 <__mingwthr_run_key_dtors.part.0>
   140002074:	eb d6                	jmp    14000204c <__mingw_TLScallback+0x2c>
   140002076:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000207d:	00 00 00 
   140002080:	8b 05 62 50 00 00    	mov    0x5062(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002086:	85 c0                	test   %eax,%eax
   140002088:	75 66                	jne    1400020f0 <__mingw_TLScallback+0xd0>
   14000208a:	8b 05 58 50 00 00    	mov    0x5058(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002090:	83 f8 01             	cmp    $0x1,%eax
   140002093:	75 b7                	jne    14000204c <__mingw_TLScallback+0x2c>
   140002095:	48 8b 1d 44 50 00 00 	mov    0x5044(%rip),%rbx        # 1400070e0 <key_dtor_list>
   14000209c:	48 85 db             	test   %rbx,%rbx
   14000209f:	74 18                	je     1400020b9 <__mingw_TLScallback+0x99>
   1400020a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400020a8:	48 89 d9             	mov    %rbx,%rcx
   1400020ab:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400020af:	e8 6c 08 00 00       	call   140002920 <free>
   1400020b4:	48 85 db             	test   %rbx,%rbx
   1400020b7:	75 ef                	jne    1400020a8 <__mingw_TLScallback+0x88>
   1400020b9:	48 8d 0d 40 50 00 00 	lea    0x5040(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400020c0:	48 c7 05 15 50 00 00 	movq   $0x0,0x5015(%rip)        # 1400070e0 <key_dtor_list>
   1400020c7:	00 00 00 00 
   1400020cb:	c7 05 13 50 00 00 00 	movl   $0x0,0x5013(%rip)        # 1400070e8 <__mingwthr_cs_init>
   1400020d2:	00 00 00 
   1400020d5:	ff 15 f1 61 00 00    	call   *0x61f1(%rip)        # 1400082cc <__IAT_start__>
   1400020db:	e9 6c ff ff ff       	jmp    14000204c <__mingw_TLScallback+0x2c>
   1400020e0:	e8 8b f6 ff ff       	call   140001770 <_fpreset>
   1400020e5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400020ea:	48 83 c4 20          	add    $0x20,%rsp
   1400020ee:	5b                   	pop    %rbx
   1400020ef:	c3                   	ret
   1400020f0:	e8 bb fd ff ff       	call   140001eb0 <__mingwthr_run_key_dtors.part.0>
   1400020f5:	eb 93                	jmp    14000208a <__mingw_TLScallback+0x6a>
   1400020f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400020fe:	00 00 
   140002100:	48 8d 0d f9 4f 00 00 	lea    0x4ff9(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002107:	ff 15 d7 61 00 00    	call   *0x61d7(%rip)        # 1400082e4 <__imp_InitializeCriticalSection>
   14000210d:	e9 30 ff ff ff       	jmp    140002042 <__mingw_TLScallback+0x22>
   140002112:	90                   	nop
   140002113:	90                   	nop
   140002114:	90                   	nop
   140002115:	90                   	nop
   140002116:	90                   	nop
   140002117:	90                   	nop
   140002118:	90                   	nop
   140002119:	90                   	nop
   14000211a:	90                   	nop
   14000211b:	90                   	nop
   14000211c:	90                   	nop
   14000211d:	90                   	nop
   14000211e:	90                   	nop
   14000211f:	90                   	nop

0000000140002120 <exit>:
   140002120:	48 83 ec 28          	sub    $0x28,%rsp
   140002124:	48 8b 05 15 23 00 00 	mov    0x2315(%rip),%rax        # 140004440 <.refptr.__imp_exit>
   14000212b:	ff 10                	call   *(%rax)
   14000212d:	90                   	nop
   14000212e:	66 90                	xchg   %ax,%ax

0000000140002130 <_exit>:
   140002130:	48 83 ec 28          	sub    $0x28,%rsp
   140002134:	48 8b 05 e5 22 00 00 	mov    0x22e5(%rip),%rax        # 140004420 <.refptr.__imp__exit>
   14000213b:	ff 10                	call   *(%rax)
   14000213d:	90                   	nop
   14000213e:	90                   	nop
   14000213f:	90                   	nop

0000000140002140 <_ValidateImageBase>:
   140002140:	31 c0                	xor    %eax,%eax
   140002142:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002147:	75 0f                	jne    140002158 <_ValidateImageBase+0x18>
   140002149:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000214d:	48 01 d1             	add    %rdx,%rcx
   140002150:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002156:	74 08                	je     140002160 <_ValidateImageBase+0x20>
   140002158:	c3                   	ret
   140002159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002160:	31 c0                	xor    %eax,%eax
   140002162:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002168:	0f 94 c0             	sete   %al
   14000216b:	c3                   	ret
   14000216c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002170 <_FindPESection>:
   140002170:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002174:	48 01 c1             	add    %rax,%rcx
   140002177:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   14000217c:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140002180:	66 45 85 c0          	test   %r8w,%r8w
   140002184:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002189:	74 32                	je     1400021bd <_FindPESection+0x4d>
   14000218b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   14000218f:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002193:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000219f:	00 
   1400021a0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400021a4:	4c 39 c2             	cmp    %r8,%rdx
   1400021a7:	4c 89 c1             	mov    %r8,%rcx
   1400021aa:	72 08                	jb     1400021b4 <_FindPESection+0x44>
   1400021ac:	03 48 08             	add    0x8(%rax),%ecx
   1400021af:	48 39 ca             	cmp    %rcx,%rdx
   1400021b2:	72 0b                	jb     1400021bf <_FindPESection+0x4f>
   1400021b4:	48 83 c0 28          	add    $0x28,%rax
   1400021b8:	4c 39 c8             	cmp    %r9,%rax
   1400021bb:	75 e3                	jne    1400021a0 <_FindPESection+0x30>
   1400021bd:	31 c0                	xor    %eax,%eax
   1400021bf:	c3                   	ret

00000001400021c0 <_FindPESectionByName>:
   1400021c0:	57                   	push   %rdi
   1400021c1:	56                   	push   %rsi
   1400021c2:	53                   	push   %rbx
   1400021c3:	48 83 ec 20          	sub    $0x20,%rsp
   1400021c7:	48 89 ce             	mov    %rcx,%rsi
   1400021ca:	e8 61 06 00 00       	call   140002830 <strlen>
   1400021cf:	48 83 f8 08          	cmp    $0x8,%rax
   1400021d3:	77 7b                	ja     140002250 <_FindPESectionByName+0x90>
   1400021d5:	48 8b 15 24 22 00 00 	mov    0x2224(%rip),%rdx        # 140004400 <.refptr.__image_base__>
   1400021dc:	31 db                	xor    %ebx,%ebx
   1400021de:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400021e3:	75 59                	jne    14000223e <_FindPESectionByName+0x7e>
   1400021e5:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   1400021e9:	48 01 d0             	add    %rdx,%rax
   1400021ec:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400021f2:	75 4a                	jne    14000223e <_FindPESectionByName+0x7e>
   1400021f4:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400021fa:	75 42                	jne    14000223e <_FindPESectionByName+0x7e>
   1400021fc:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002200:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140002205:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140002209:	66 85 d2             	test   %dx,%dx
   14000220c:	74 42                	je     140002250 <_FindPESectionByName+0x90>
   14000220e:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140002211:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002215:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   14000221a:	eb 0d                	jmp    140002229 <_FindPESectionByName+0x69>
   14000221c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002220:	48 83 c3 28          	add    $0x28,%rbx
   140002224:	48 39 fb             	cmp    %rdi,%rbx
   140002227:	74 27                	je     140002250 <_FindPESectionByName+0x90>
   140002229:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000222f:	48 89 f2             	mov    %rsi,%rdx
   140002232:	48 89 d9             	mov    %rbx,%rcx
   140002235:	e8 fe 05 00 00       	call   140002838 <strncmp>
   14000223a:	85 c0                	test   %eax,%eax
   14000223c:	75 e2                	jne    140002220 <_FindPESectionByName+0x60>
   14000223e:	48 89 d8             	mov    %rbx,%rax
   140002241:	48 83 c4 20          	add    $0x20,%rsp
   140002245:	5b                   	pop    %rbx
   140002246:	5e                   	pop    %rsi
   140002247:	5f                   	pop    %rdi
   140002248:	c3                   	ret
   140002249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002250:	31 db                	xor    %ebx,%ebx
   140002252:	48 89 d8             	mov    %rbx,%rax
   140002255:	48 83 c4 20          	add    $0x20,%rsp
   140002259:	5b                   	pop    %rbx
   14000225a:	5e                   	pop    %rsi
   14000225b:	5f                   	pop    %rdi
   14000225c:	c3                   	ret
   14000225d:	0f 1f 00             	nopl   (%rax)

0000000140002260 <__mingw_GetSectionForAddress>:
   140002260:	48 8b 15 99 21 00 00 	mov    0x2199(%rip),%rdx        # 140004400 <.refptr.__image_base__>
   140002267:	31 c0                	xor    %eax,%eax
   140002269:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000226e:	75 10                	jne    140002280 <__mingw_GetSectionForAddress+0x20>
   140002270:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002274:	49 01 d0             	add    %rdx,%r8
   140002277:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000227e:	74 08                	je     140002288 <__mingw_GetSectionForAddress+0x28>
   140002280:	c3                   	ret
   140002281:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002288:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000228f:	75 ef                	jne    140002280 <__mingw_GetSectionForAddress+0x20>
   140002291:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002296:	48 29 d1             	sub    %rdx,%rcx
   140002299:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   14000229e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400022a3:	66 45 85 c0          	test   %r8w,%r8w
   1400022a7:	74 34                	je     1400022dd <__mingw_GetSectionForAddress+0x7d>
   1400022a9:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400022ad:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400022b1:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400022b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400022bd:	00 00 00 
   1400022c0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400022c4:	4c 39 c1             	cmp    %r8,%rcx
   1400022c7:	4c 89 c2             	mov    %r8,%rdx
   1400022ca:	72 08                	jb     1400022d4 <__mingw_GetSectionForAddress+0x74>
   1400022cc:	03 50 08             	add    0x8(%rax),%edx
   1400022cf:	48 39 d1             	cmp    %rdx,%rcx
   1400022d2:	72 ac                	jb     140002280 <__mingw_GetSectionForAddress+0x20>
   1400022d4:	48 83 c0 28          	add    $0x28,%rax
   1400022d8:	4c 39 c8             	cmp    %r9,%rax
   1400022db:	75 e3                	jne    1400022c0 <__mingw_GetSectionForAddress+0x60>
   1400022dd:	31 c0                	xor    %eax,%eax
   1400022df:	c3                   	ret

00000001400022e0 <__mingw_GetSectionCount>:
   1400022e0:	48 8b 05 19 21 00 00 	mov    0x2119(%rip),%rax        # 140004400 <.refptr.__image_base__>
   1400022e7:	31 c9                	xor    %ecx,%ecx
   1400022e9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400022ee:	75 0f                	jne    1400022ff <__mingw_GetSectionCount+0x1f>
   1400022f0:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400022f4:	48 01 d0             	add    %rdx,%rax
   1400022f7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400022fd:	74 09                	je     140002308 <__mingw_GetSectionCount+0x28>
   1400022ff:	89 c8                	mov    %ecx,%eax
   140002301:	c3                   	ret
   140002302:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002308:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000230e:	75 ef                	jne    1400022ff <__mingw_GetSectionCount+0x1f>
   140002310:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140002314:	89 c8                	mov    %ecx,%eax
   140002316:	c3                   	ret
   140002317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000231e:	00 00 

0000000140002320 <_FindPESectionExec>:
   140002320:	4c 8b 05 d9 20 00 00 	mov    0x20d9(%rip),%r8        # 140004400 <.refptr.__image_base__>
   140002327:	31 c0                	xor    %eax,%eax
   140002329:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000232f:	75 0f                	jne    140002340 <_FindPESectionExec+0x20>
   140002331:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002335:	4c 01 c2             	add    %r8,%rdx
   140002338:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000233e:	74 08                	je     140002348 <_FindPESectionExec+0x28>
   140002340:	c3                   	ret
   140002341:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002348:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000234e:	75 f0                	jne    140002340 <_FindPESectionExec+0x20>
   140002350:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140002355:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002359:	66 45 85 c0          	test   %r8w,%r8w
   14000235d:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002362:	74 2c                	je     140002390 <_FindPESectionExec+0x70>
   140002364:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140002368:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000236c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002371:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002378:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   14000237c:	74 09                	je     140002387 <_FindPESectionExec+0x67>
   14000237e:	48 85 c9             	test   %rcx,%rcx
   140002381:	74 bd                	je     140002340 <_FindPESectionExec+0x20>
   140002383:	48 83 e9 01          	sub    $0x1,%rcx
   140002387:	48 83 c0 28          	add    $0x28,%rax
   14000238b:	48 39 d0             	cmp    %rdx,%rax
   14000238e:	75 e8                	jne    140002378 <_FindPESectionExec+0x58>
   140002390:	31 c0                	xor    %eax,%eax
   140002392:	c3                   	ret
   140002393:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000239a:	00 00 00 00 
   14000239e:	66 90                	xchg   %ax,%ax

00000001400023a0 <_GetPEImageBase>:
   1400023a0:	48 8b 05 59 20 00 00 	mov    0x2059(%rip),%rax        # 140004400 <.refptr.__image_base__>
   1400023a7:	31 d2                	xor    %edx,%edx
   1400023a9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400023ae:	75 0f                	jne    1400023bf <_GetPEImageBase+0x1f>
   1400023b0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   1400023b4:	48 01 c1             	add    %rax,%rcx
   1400023b7:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400023bd:	74 09                	je     1400023c8 <_GetPEImageBase+0x28>
   1400023bf:	48 89 d0             	mov    %rdx,%rax
   1400023c2:	c3                   	ret
   1400023c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400023c8:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400023ce:	48 0f 44 d0          	cmove  %rax,%rdx
   1400023d2:	48 89 d0             	mov    %rdx,%rax
   1400023d5:	c3                   	ret
   1400023d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400023dd:	00 00 00 

00000001400023e0 <_IsNonwritableInCurrentImage>:
   1400023e0:	48 8b 15 19 20 00 00 	mov    0x2019(%rip),%rdx        # 140004400 <.refptr.__image_base__>
   1400023e7:	31 c0                	xor    %eax,%eax
   1400023e9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400023ee:	75 10                	jne    140002400 <_IsNonwritableInCurrentImage+0x20>
   1400023f0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400023f4:	49 01 d0             	add    %rdx,%r8
   1400023f7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400023fe:	74 08                	je     140002408 <_IsNonwritableInCurrentImage+0x28>
   140002400:	c3                   	ret
   140002401:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002408:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000240f:	75 ef                	jne    140002400 <_IsNonwritableInCurrentImage+0x20>
   140002411:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140002416:	48 29 d1             	sub    %rdx,%rcx
   140002419:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   14000241e:	66 45 85 c9          	test   %r9w,%r9w
   140002422:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002427:	74 d7                	je     140002400 <_IsNonwritableInCurrentImage+0x20>
   140002429:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   14000242d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002431:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002436:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000243d:	00 00 00 
   140002440:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002444:	4c 39 c1             	cmp    %r8,%rcx
   140002447:	4c 89 c0             	mov    %r8,%rax
   14000244a:	72 08                	jb     140002454 <_IsNonwritableInCurrentImage+0x74>
   14000244c:	03 42 08             	add    0x8(%rdx),%eax
   14000244f:	48 39 c1             	cmp    %rax,%rcx
   140002452:	72 0c                	jb     140002460 <_IsNonwritableInCurrentImage+0x80>
   140002454:	48 83 c2 28          	add    $0x28,%rdx
   140002458:	49 39 d1             	cmp    %rdx,%r9
   14000245b:	75 e3                	jne    140002440 <_IsNonwritableInCurrentImage+0x60>
   14000245d:	31 c0                	xor    %eax,%eax
   14000245f:	c3                   	ret
   140002460:	8b 42 24             	mov    0x24(%rdx),%eax
   140002463:	f7 d0                	not    %eax
   140002465:	c1 e8 1f             	shr    $0x1f,%eax
   140002468:	c3                   	ret
   140002469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002470 <__mingw_enum_import_library_names>:
   140002470:	4c 8b 1d 89 1f 00 00 	mov    0x1f89(%rip),%r11        # 140004400 <.refptr.__image_base__>
   140002477:	45 31 c9             	xor    %r9d,%r9d
   14000247a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002480:	75 10                	jne    140002492 <__mingw_enum_import_library_names+0x22>
   140002482:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002486:	4d 01 d8             	add    %r11,%r8
   140002489:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002490:	74 0e                	je     1400024a0 <__mingw_enum_import_library_names+0x30>
   140002492:	4c 89 c8             	mov    %r9,%rax
   140002495:	c3                   	ret
   140002496:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000249d:	00 00 00 
   1400024a0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024a7:	75 e9                	jne    140002492 <__mingw_enum_import_library_names+0x22>
   1400024a9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400024b0:	85 c0                	test   %eax,%eax
   1400024b2:	74 de                	je     140002492 <__mingw_enum_import_library_names+0x22>
   1400024b4:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   1400024b9:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024be:	66 45 85 d2          	test   %r10w,%r10w
   1400024c2:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400024c7:	74 c9                	je     140002492 <__mingw_enum_import_library_names+0x22>
   1400024c9:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   1400024cd:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400024d1:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400024d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024dd:	00 00 00 
   1400024e0:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400024e4:	4c 39 c8             	cmp    %r9,%rax
   1400024e7:	4d 89 c8             	mov    %r9,%r8
   1400024ea:	72 09                	jb     1400024f5 <__mingw_enum_import_library_names+0x85>
   1400024ec:	44 03 42 08          	add    0x8(%rdx),%r8d
   1400024f0:	4c 39 c0             	cmp    %r8,%rax
   1400024f3:	72 13                	jb     140002508 <__mingw_enum_import_library_names+0x98>
   1400024f5:	48 83 c2 28          	add    $0x28,%rdx
   1400024f9:	4c 39 d2             	cmp    %r10,%rdx
   1400024fc:	75 e2                	jne    1400024e0 <__mingw_enum_import_library_names+0x70>
   1400024fe:	45 31 c9             	xor    %r9d,%r9d
   140002501:	4c 89 c8             	mov    %r9,%rax
   140002504:	c3                   	ret
   140002505:	0f 1f 00             	nopl   (%rax)
   140002508:	4c 01 d8             	add    %r11,%rax
   14000250b:	eb 0a                	jmp    140002517 <__mingw_enum_import_library_names+0xa7>
   14000250d:	0f 1f 00             	nopl   (%rax)
   140002510:	83 e9 01             	sub    $0x1,%ecx
   140002513:	48 83 c0 14          	add    $0x14,%rax
   140002517:	44 8b 40 04          	mov    0x4(%rax),%r8d
   14000251b:	45 85 c0             	test   %r8d,%r8d
   14000251e:	75 07                	jne    140002527 <__mingw_enum_import_library_names+0xb7>
   140002520:	8b 50 0c             	mov    0xc(%rax),%edx
   140002523:	85 d2                	test   %edx,%edx
   140002525:	74 d7                	je     1400024fe <__mingw_enum_import_library_names+0x8e>
   140002527:	85 c9                	test   %ecx,%ecx
   140002529:	7f e5                	jg     140002510 <__mingw_enum_import_library_names+0xa0>
   14000252b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   14000252f:	4d 01 d9             	add    %r11,%r9
   140002532:	4c 89 c8             	mov    %r9,%rax
   140002535:	c3                   	ret
   140002536:	90                   	nop
   140002537:	90                   	nop
   140002538:	90                   	nop
   140002539:	90                   	nop
   14000253a:	90                   	nop
   14000253b:	90                   	nop
   14000253c:	90                   	nop
   14000253d:	90                   	nop
   14000253e:	90                   	nop
   14000253f:	90                   	nop

0000000140002540 <___chkstk_ms>:
   140002540:	51                   	push   %rcx
   140002541:	50                   	push   %rax
   140002542:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002548:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000254d:	72 19                	jb     140002568 <___chkstk_ms+0x28>
   14000254f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002556:	48 83 09 00          	orq    $0x0,(%rcx)
   14000255a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002560:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002566:	77 e7                	ja     14000254f <___chkstk_ms+0xf>
   140002568:	48 29 c1             	sub    %rax,%rcx
   14000256b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000256f:	58                   	pop    %rax
   140002570:	59                   	pop    %rcx
   140002571:	c3                   	ret
   140002572:	90                   	nop
   140002573:	90                   	nop
   140002574:	90                   	nop
   140002575:	90                   	nop
   140002576:	90                   	nop
   140002577:	90                   	nop
   140002578:	90                   	nop
   140002579:	90                   	nop
   14000257a:	90                   	nop
   14000257b:	90                   	nop
   14000257c:	90                   	nop
   14000257d:	90                   	nop
   14000257e:	90                   	nop
   14000257f:	90                   	nop

0000000140002580 <vfprintf>:
   140002580:	48 83 ec 38          	sub    $0x38,%rsp
   140002584:	45 31 c9             	xor    %r9d,%r9d
   140002587:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
   14000258c:	49 89 d0             	mov    %rdx,%r8
   14000258f:	48 89 ca             	mov    %rcx,%rdx
   140002592:	31 c9                	xor    %ecx,%ecx
   140002594:	e8 bf 02 00 00       	call   140002858 <__stdio_common_vfprintf>
   140002599:	48 83 c4 38          	add    $0x38,%rsp
   14000259d:	c3                   	ret
   14000259e:	90                   	nop
   14000259f:	90                   	nop

00000001400025a0 <fprintf>:
   1400025a0:	48 83 ec 48          	sub    $0x48,%rsp
   1400025a4:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   1400025a9:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400025ae:	49 89 d0             	mov    %rdx,%r8
   1400025b1:	48 89 ca             	mov    %rcx,%rdx
   1400025b4:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400025b9:	31 c9                	xor    %ecx,%ecx
   1400025bb:	45 31 c9             	xor    %r9d,%r9d
   1400025be:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400025c3:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   1400025c8:	e8 8b 02 00 00       	call   140002858 <__stdio_common_vfprintf>
   1400025cd:	48 83 c4 48          	add    $0x48,%rsp
   1400025d1:	c3                   	ret
   1400025d2:	90                   	nop
   1400025d3:	90                   	nop
   1400025d4:	90                   	nop
   1400025d5:	90                   	nop
   1400025d6:	90                   	nop
   1400025d7:	90                   	nop
   1400025d8:	90                   	nop
   1400025d9:	90                   	nop
   1400025da:	90                   	nop
   1400025db:	90                   	nop
   1400025dc:	90                   	nop
   1400025dd:	90                   	nop
   1400025de:	90                   	nop
   1400025df:	90                   	nop

00000001400025e0 <_get_output_format>:
   1400025e0:	31 c0                	xor    %eax,%eax
   1400025e2:	c3                   	ret
   1400025e3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400025ea:	00 00 00 00 
   1400025ee:	66 90                	xchg   %ax,%ax

00000001400025f0 <__getmainargs>:
   1400025f0:	41 54                	push   %r12
   1400025f2:	55                   	push   %rbp
   1400025f3:	57                   	push   %rdi
   1400025f4:	56                   	push   %rsi
   1400025f5:	53                   	push   %rbx
   1400025f6:	48 83 ec 20          	sub    $0x20,%rsp
   1400025fa:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   1400025ff:	44 89 cd             	mov    %r9d,%ebp
   140002602:	48 89 d6             	mov    %rdx,%rsi
   140002605:	4c 89 c3             	mov    %r8,%rbx
   140002608:	48 89 cf             	mov    %rcx,%rdi
   14000260b:	e8 a0 02 00 00       	call   1400028b0 <_initialize_narrow_environment>
   140002610:	83 fd 01             	cmp    $0x1,%ebp
   140002613:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002618:	83 d9 ff             	sbb    $0xffffffff,%ecx
   14000261b:	e8 70 02 00 00       	call   140002890 <_configure_narrow_argv>
   140002620:	e8 4b 02 00 00       	call   140002870 <__p___argc>
   140002625:	8b 00                	mov    (%rax),%eax
   140002627:	89 07                	mov    %eax,(%rdi)
   140002629:	e8 4a 02 00 00       	call   140002878 <__p___argv>
   14000262e:	48 8b 00             	mov    (%rax),%rax
   140002631:	48 89 06             	mov    %rax,(%rsi)
   140002634:	e8 f7 02 00 00       	call   140002930 <__p__environ>
   140002639:	4d 85 e4             	test   %r12,%r12
   14000263c:	48 8b 00             	mov    (%rax),%rax
   14000263f:	48 89 03             	mov    %rax,(%rbx)
   140002642:	74 09                	je     14000264d <__getmainargs+0x5d>
   140002644:	41 8b 0c 24          	mov    (%r12),%ecx
   140002648:	e8 c3 02 00 00       	call   140002910 <_set_new_mode>
   14000264d:	31 c0                	xor    %eax,%eax
   14000264f:	48 83 c4 20          	add    $0x20,%rsp
   140002653:	5b                   	pop    %rbx
   140002654:	5e                   	pop    %rsi
   140002655:	5f                   	pop    %rdi
   140002656:	5d                   	pop    %rbp
   140002657:	41 5c                	pop    %r12
   140002659:	c3                   	ret
   14000265a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002660 <__wgetmainargs>:
   140002660:	41 54                	push   %r12
   140002662:	55                   	push   %rbp
   140002663:	57                   	push   %rdi
   140002664:	56                   	push   %rsi
   140002665:	53                   	push   %rbx
   140002666:	48 83 ec 20          	sub    $0x20,%rsp
   14000266a:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   14000266f:	44 89 cd             	mov    %r9d,%ebp
   140002672:	48 89 d6             	mov    %rdx,%rsi
   140002675:	4c 89 c3             	mov    %r8,%rbx
   140002678:	48 89 cf             	mov    %rcx,%rdi
   14000267b:	e8 38 02 00 00       	call   1400028b8 <_initialize_wide_environment>
   140002680:	83 fd 01             	cmp    $0x1,%ebp
   140002683:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002688:	83 d9 ff             	sbb    $0xffffffff,%ecx
   14000268b:	e8 08 02 00 00       	call   140002898 <_configure_wide_argv>
   140002690:	e8 db 01 00 00       	call   140002870 <__p___argc>
   140002695:	8b 00                	mov    (%rax),%eax
   140002697:	89 07                	mov    %eax,(%rdi)
   140002699:	e8 e2 01 00 00       	call   140002880 <__p___wargv>
   14000269e:	48 8b 00             	mov    (%rax),%rax
   1400026a1:	48 89 06             	mov    %rax,(%rsi)
   1400026a4:	e8 8f 02 00 00       	call   140002938 <__p__wenviron>
   1400026a9:	4d 85 e4             	test   %r12,%r12
   1400026ac:	48 8b 00             	mov    (%rax),%rax
   1400026af:	48 89 03             	mov    %rax,(%rbx)
   1400026b2:	74 09                	je     1400026bd <__wgetmainargs+0x5d>
   1400026b4:	41 8b 0c 24          	mov    (%r12),%ecx
   1400026b8:	e8 53 02 00 00       	call   140002910 <_set_new_mode>
   1400026bd:	31 c0                	xor    %eax,%eax
   1400026bf:	48 83 c4 20          	add    $0x20,%rsp
   1400026c3:	5b                   	pop    %rbx
   1400026c4:	5e                   	pop    %rsi
   1400026c5:	5f                   	pop    %rdi
   1400026c6:	5d                   	pop    %rbp
   1400026c7:	41 5c                	pop    %r12
   1400026c9:	c3                   	ret
   1400026ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400026d0 <_onexit>:
   1400026d0:	53                   	push   %rbx
   1400026d1:	48 83 ec 20          	sub    $0x20,%rsp
   1400026d5:	48 89 cb             	mov    %rcx,%rbx
   1400026d8:	e8 cb 01 00 00       	call   1400028a8 <_crt_atexit>
   1400026dd:	85 c0                	test   %eax,%eax
   1400026df:	b8 00 00 00 00       	mov    $0x0,%eax
   1400026e4:	48 0f 44 c3          	cmove  %rbx,%rax
   1400026e8:	48 83 c4 20          	add    $0x20,%rsp
   1400026ec:	5b                   	pop    %rbx
   1400026ed:	c3                   	ret
   1400026ee:	66 90                	xchg   %ax,%ax

00000001400026f0 <at_quick_exit>:
   1400026f0:	48 8b 05 99 1d 00 00 	mov    0x1d99(%rip),%rax        # 140004490 <.refptr.__mingw_module_is_dll>
   1400026f7:	80 38 00             	cmpb   $0x0,(%rax)
   1400026fa:	74 04                	je     140002700 <at_quick_exit+0x10>
   1400026fc:	31 c0                	xor    %eax,%eax
   1400026fe:	c3                   	ret
   1400026ff:	90                   	nop
   140002700:	e9 9b 01 00 00       	jmp    1400028a0 <_crt_at_quick_exit>
   140002705:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000270c:	00 00 00 00 

0000000140002710 <_amsg_exit>:
   140002710:	53                   	push   %rbx
   140002711:	48 83 ec 20          	sub    $0x20,%rsp
   140002715:	89 cb                	mov    %ecx,%ebx
   140002717:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000271c:	e8 1f 01 00 00       	call   140002840 <__acrt_iob_func>
   140002721:	48 8d 15 28 1c 00 00 	lea    0x1c28(%rip),%rdx        # 140004350 <.rdata>
   140002728:	41 89 d8             	mov    %ebx,%r8d
   14000272b:	48 89 c1             	mov    %rax,%rcx
   14000272e:	e8 6d fe ff ff       	call   1400025a0 <fprintf>
   140002733:	48 8b 05 e6 1c 00 00 	mov    0x1ce6(%rip),%rax        # 140004420 <.refptr.__imp__exit>
   14000273a:	b9 ff 00 00 00       	mov    $0xff,%ecx
   14000273f:	ff 10                	call   *(%rax)
   140002741:	90                   	nop
   140002742:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002749:	00 00 00 00 
   14000274d:	0f 1f 00             	nopl   (%rax)

0000000140002750 <__ms_fwprintf>:
   140002750:	48 83 ec 48          	sub    $0x48,%rsp
   140002754:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   140002759:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000275e:	49 89 d0             	mov    %rdx,%r8
   140002761:	48 89 ca             	mov    %rcx,%rdx
   140002764:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002769:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000276e:	45 31 c9             	xor    %r9d,%r9d
   140002771:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002776:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   14000277b:	e8 e0 00 00 00       	call   140002860 <__stdio_common_vfwprintf>
   140002780:	48 83 c4 48          	add    $0x48,%rsp
   140002784:	c3                   	ret
   140002785:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000278c:	00 00 00 00 

0000000140002790 <tzset>:
   140002790:	48 83 ec 28          	sub    $0x28,%rsp
   140002794:	48 8b 05 95 1c 00 00 	mov    0x1c95(%rip),%rax        # 140004430 <.refptr.__imp__tzset>
   14000279b:	ff 10                	call   *(%rax)
   14000279d:	e8 7e 00 00 00       	call   140002820 <__tzname>
   1400027a2:	48 89 05 17 09 00 00 	mov    %rax,0x917(%rip)        # 1400030c0 <__imp_tzname>
   1400027a9:	e8 6a 00 00 00       	call   140002818 <__timezone>
   1400027ae:	48 89 05 03 09 00 00 	mov    %rax,0x903(%rip)        # 1400030b8 <__imp_timezone>
   1400027b5:	e8 56 00 00 00       	call   140002810 <__daylight>
   1400027ba:	48 89 05 ef 08 00 00 	mov    %rax,0x8ef(%rip)        # 1400030b0 <__imp_daylight>
   1400027c1:	48 83 c4 28          	add    $0x28,%rsp
   1400027c5:	c3                   	ret
   1400027c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400027cd:	00 00 00 

00000001400027d0 <_tzset>:
   1400027d0:	48 83 ec 28          	sub    $0x28,%rsp
   1400027d4:	48 8b 05 55 1c 00 00 	mov    0x1c55(%rip),%rax        # 140004430 <.refptr.__imp__tzset>
   1400027db:	ff 10                	call   *(%rax)
   1400027dd:	e8 3e 00 00 00       	call   140002820 <__tzname>
   1400027e2:	48 89 05 d7 08 00 00 	mov    %rax,0x8d7(%rip)        # 1400030c0 <__imp_tzname>
   1400027e9:	e8 2a 00 00 00       	call   140002818 <__timezone>
   1400027ee:	48 89 05 c3 08 00 00 	mov    %rax,0x8c3(%rip)        # 1400030b8 <__imp_timezone>
   1400027f5:	e8 16 00 00 00       	call   140002810 <__daylight>
   1400027fa:	48 89 05 af 08 00 00 	mov    %rax,0x8af(%rip)        # 1400030b0 <__imp_daylight>
   140002801:	48 83 c4 28          	add    $0x28,%rsp
   140002805:	c3                   	ret
   140002806:	90                   	nop
   140002807:	90                   	nop
   140002808:	90                   	nop
   140002809:	90                   	nop
   14000280a:	90                   	nop
   14000280b:	90                   	nop
   14000280c:	90                   	nop
   14000280d:	90                   	nop
   14000280e:	90                   	nop
   14000280f:	90                   	nop

0000000140002810 <__daylight>:
   140002810:	ff 25 56 5c 00 00    	jmp    *0x5c56(%rip)        # 14000846c <__imp___daylight>
   140002816:	90                   	nop
   140002817:	90                   	nop

0000000140002818 <__timezone>:
   140002818:	ff 25 56 5c 00 00    	jmp    *0x5c56(%rip)        # 140008474 <__imp___timezone>
   14000281e:	90                   	nop
   14000281f:	90                   	nop

0000000140002820 <__tzname>:
   140002820:	ff 25 56 5c 00 00    	jmp    *0x5c56(%rip)        # 14000847c <__imp___tzname>
   140002826:	90                   	nop
   140002827:	90                   	nop

0000000140002828 <.text>:
   140002828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000282f:	00 

0000000140002830 <strlen>:
   140002830:	ff 25 1e 5c 00 00    	jmp    *0x5c1e(%rip)        # 140008454 <__imp_strlen>
   140002836:	90                   	nop
   140002837:	90                   	nop

0000000140002838 <strncmp>:
   140002838:	ff 25 1e 5c 00 00    	jmp    *0x5c1e(%rip)        # 14000845c <__imp_strncmp>
   14000283e:	90                   	nop
   14000283f:	90                   	nop

0000000140002840 <__acrt_iob_func>:
   140002840:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 14000841c <__imp___acrt_iob_func>
   140002846:	90                   	nop
   140002847:	90                   	nop

0000000140002848 <__p__commode>:
   140002848:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 140008424 <__imp___p__commode>
   14000284e:	90                   	nop
   14000284f:	90                   	nop

0000000140002850 <__p__fmode>:
   140002850:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 14000842c <__imp___p__fmode>
   140002856:	90                   	nop
   140002857:	90                   	nop

0000000140002858 <__stdio_common_vfprintf>:
   140002858:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 140008434 <__imp___stdio_common_vfprintf>
   14000285e:	90                   	nop
   14000285f:	90                   	nop

0000000140002860 <__stdio_common_vfwprintf>:
   140002860:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 14000843c <__imp___stdio_common_vfwprintf>
   140002866:	90                   	nop
   140002867:	90                   	nop

0000000140002868 <fwrite>:
   140002868:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 140008444 <__imp_fwrite>
   14000286e:	90                   	nop
   14000286f:	90                   	nop

0000000140002870 <__p___argc>:
   140002870:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 14000838c <__imp___p___argc>
   140002876:	90                   	nop
   140002877:	90                   	nop

0000000140002878 <__p___argv>:
   140002878:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 140008394 <__imp___p___argv>
   14000287e:	90                   	nop
   14000287f:	90                   	nop

0000000140002880 <__p___wargv>:
   140002880:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 14000839c <__imp___p___wargv>
   140002886:	90                   	nop
   140002887:	90                   	nop

0000000140002888 <_cexit>:
   140002888:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 1400083a4 <__imp__cexit>
   14000288e:	90                   	nop
   14000288f:	90                   	nop

0000000140002890 <_configure_narrow_argv>:
   140002890:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 1400083ac <__imp__configure_narrow_argv>
   140002896:	90                   	nop
   140002897:	90                   	nop

0000000140002898 <_configure_wide_argv>:
   140002898:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 1400083b4 <__imp__configure_wide_argv>
   14000289e:	90                   	nop
   14000289f:	90                   	nop

00000001400028a0 <_crt_at_quick_exit>:
   1400028a0:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 1400083bc <__imp__crt_at_quick_exit>
   1400028a6:	90                   	nop
   1400028a7:	90                   	nop

00000001400028a8 <_crt_atexit>:
   1400028a8:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 1400083c4 <__imp__crt_atexit>
   1400028ae:	90                   	nop
   1400028af:	90                   	nop

00000001400028b0 <_initialize_narrow_environment>:
   1400028b0:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083d4 <__imp__initialize_narrow_environment>
   1400028b6:	90                   	nop
   1400028b7:	90                   	nop

00000001400028b8 <_initialize_wide_environment>:
   1400028b8:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083dc <__imp__initialize_wide_environment>
   1400028be:	90                   	nop
   1400028bf:	90                   	nop

00000001400028c0 <_initterm>:
   1400028c0:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083e4 <__imp__initterm>
   1400028c6:	90                   	nop
   1400028c7:	90                   	nop

00000001400028c8 <__set_app_type>:
   1400028c8:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083ec <__imp___set_app_type>
   1400028ce:	90                   	nop
   1400028cf:	90                   	nop

00000001400028d0 <_set_invalid_parameter_handler>:
   1400028d0:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083f4 <__imp__set_invalid_parameter_handler>
   1400028d6:	90                   	nop
   1400028d7:	90                   	nop

00000001400028d8 <abort>:
   1400028d8:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083fc <__imp_abort>
   1400028de:	90                   	nop
   1400028df:	90                   	nop

00000001400028e0 <signal>:
   1400028e0:	ff 25 26 5b 00 00    	jmp    *0x5b26(%rip)        # 14000840c <__imp_signal>
   1400028e6:	90                   	nop
   1400028e7:	90                   	nop
   1400028e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400028ef:	00 

00000001400028f0 <__C_specific_handler>:
   1400028f0:	ff 25 7e 5a 00 00    	jmp    *0x5a7e(%rip)        # 140008374 <__imp___C_specific_handler>
   1400028f6:	90                   	nop
   1400028f7:	90                   	nop

00000001400028f8 <memcpy>:
   1400028f8:	ff 25 7e 5a 00 00    	jmp    *0x5a7e(%rip)        # 14000837c <__imp_memcpy>
   1400028fe:	90                   	nop
   1400028ff:	90                   	nop

0000000140002900 <__setusermatherr>:
   140002900:	ff 25 5e 5a 00 00    	jmp    *0x5a5e(%rip)        # 140008364 <__imp___setusermatherr>
   140002906:	90                   	nop
   140002907:	90                   	nop
   140002908:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000290f:	00 

0000000140002910 <_set_new_mode>:
   140002910:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 14000833c <__imp__set_new_mode>
   140002916:	90                   	nop
   140002917:	90                   	nop

0000000140002918 <calloc>:
   140002918:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 140008344 <__imp_calloc>
   14000291e:	90                   	nop
   14000291f:	90                   	nop

0000000140002920 <free>:
   140002920:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 14000834c <__imp_free>
   140002926:	90                   	nop
   140002927:	90                   	nop

0000000140002928 <malloc>:
   140002928:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 140008354 <__imp_malloc>
   14000292e:	90                   	nop
   14000292f:	90                   	nop

0000000140002930 <__p__environ>:
   140002930:	ff 25 ee 59 00 00    	jmp    *0x59ee(%rip)        # 140008324 <__imp___p__environ>
   140002936:	90                   	nop
   140002937:	90                   	nop

0000000140002938 <__p__wenviron>:
   140002938:	ff 25 ee 59 00 00    	jmp    *0x59ee(%rip)        # 14000832c <__imp___p__wenviron>
   14000293e:	90                   	nop
   14000293f:	90                   	nop

0000000140002940 <VirtualQuery>:
   140002940:	ff 25 ce 59 00 00    	jmp    *0x59ce(%rip)        # 140008314 <__imp_VirtualQuery>
   140002946:	90                   	nop
   140002947:	90                   	nop

0000000140002948 <VirtualProtect>:
   140002948:	ff 25 be 59 00 00    	jmp    *0x59be(%rip)        # 14000830c <__imp_VirtualProtect>
   14000294e:	90                   	nop
   14000294f:	90                   	nop

0000000140002950 <TlsGetValue>:
   140002950:	ff 25 ae 59 00 00    	jmp    *0x59ae(%rip)        # 140008304 <__imp_TlsGetValue>
   140002956:	90                   	nop
   140002957:	90                   	nop

0000000140002958 <Sleep>:
   140002958:	ff 25 9e 59 00 00    	jmp    *0x599e(%rip)        # 1400082fc <__imp_Sleep>
   14000295e:	90                   	nop
   14000295f:	90                   	nop

0000000140002960 <SetUnhandledExceptionFilter>:
   140002960:	ff 25 8e 59 00 00    	jmp    *0x598e(%rip)        # 1400082f4 <__imp_SetUnhandledExceptionFilter>
   140002966:	90                   	nop
   140002967:	90                   	nop

0000000140002968 <LeaveCriticalSection>:
   140002968:	ff 25 7e 59 00 00    	jmp    *0x597e(%rip)        # 1400082ec <__imp_LeaveCriticalSection>
   14000296e:	90                   	nop
   14000296f:	90                   	nop

0000000140002970 <InitializeCriticalSection>:
   140002970:	ff 25 6e 59 00 00    	jmp    *0x596e(%rip)        # 1400082e4 <__imp_InitializeCriticalSection>
   140002976:	90                   	nop
   140002977:	90                   	nop

0000000140002978 <GetLastError>:
   140002978:	ff 25 5e 59 00 00    	jmp    *0x595e(%rip)        # 1400082dc <__imp_GetLastError>
   14000297e:	90                   	nop
   14000297f:	90                   	nop

0000000140002980 <EnterCriticalSection>:
   140002980:	ff 25 4e 59 00 00    	jmp    *0x594e(%rip)        # 1400082d4 <__imp_EnterCriticalSection>
   140002986:	90                   	nop
   140002987:	90                   	nop

0000000140002988 <DeleteCriticalSection>:
   140002988:	ff 25 3e 59 00 00    	jmp    *0x593e(%rip)        # 1400082cc <__IAT_start__>
   14000298e:	90                   	nop
   14000298f:	90                   	nop

0000000140002990 <register_frame_ctor>:
   140002990:	e9 9b ea ff ff       	jmp    140001430 <__gcc_register_frame>
   140002995:	90                   	nop
   140002996:	90                   	nop
   140002997:	90                   	nop
   140002998:	90                   	nop
   140002999:	90                   	nop
   14000299a:	90                   	nop
   14000299b:	90                   	nop
   14000299c:	90                   	nop
   14000299d:	90                   	nop
   14000299e:	90                   	nop
   14000299f:	90                   	nop

00000001400029a0 <__CTOR_LIST__>:
   1400029a0:	ff                   	(bad)
   1400029a1:	ff                   	(bad)
   1400029a2:	ff                   	(bad)
   1400029a3:	ff                   	(bad)
   1400029a4:	ff                   	(bad)
   1400029a5:	ff                   	(bad)
   1400029a6:	ff                   	(bad)
   1400029a7:	ff                   	.byte 0xff

00000001400029a8 <.ctors.65535>:
   1400029a8:	90                   	nop
   1400029a9:	29 00                	sub    %eax,(%rax)
   1400029ab:	40 01 00             	rex add %eax,(%rax)
	...

00000001400029b8 <__DTOR_LIST__>:
   1400029b8:	ff                   	(bad)
   1400029b9:	ff                   	(bad)
   1400029ba:	ff                   	(bad)
   1400029bb:	ff                   	(bad)
   1400029bc:	ff                   	(bad)
   1400029bd:	ff                   	(bad)
   1400029be:	ff                   	(bad)
   1400029bf:	ff 00                	incl   (%rax)
   1400029c1:	00 00                	add    %al,(%rax)
   1400029c3:	00 00                	add    %al,(%rax)
   1400029c5:	00 00                	add    %al,(%rax)
	...
