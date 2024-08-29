
mul_numbers.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 35 34 00 00 	mov    0x3435(%rip),%rax        # 140004450 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 36 34 00 00 	mov    0x3436(%rip),%rax        # 140004460 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 39 34 00 00 	mov    0x3439(%rip),%rax        # 140004470 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 ac 33 00 00 	mov    0x33ac(%rip),%rax        # 1400043f0 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 df 33 00 00 	mov    0x33df(%rip),%rax        # 140004440 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 5f 00 00    	mov    %ecx,0x5fa5(%rip)        # 14000700c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 41 18 00 00       	call   1400028b8 <__set_app_type>
   140001077:	e8 c4 17 00 00       	call   140002840 <__p__fmode>
   14000107c:	48 8b 15 9d 34 00 00 	mov    0x349d(%rip),%rdx        # 140004520 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 ac 17 00 00       	call   140002838 <__p__commode>
   14000108c:	48 8b 15 6d 34 00 00 	mov    0x346d(%rip),%rdx        # 140004500 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 e4 04 00 00       	call   140001580 <_setargv>
   14000109c:	48 8b 05 ed 32 00 00 	mov    0x32ed(%rip),%rax        # 140004390 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 fe 17 00 00       	call   1400028b8 <__set_app_type>
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
   1400010f8:	48 8b 0d 41 34 00 00 	mov    0x3441(%rip),%rcx        # 140004540 <.refptr._matherr>
   1400010ff:	e8 ec 0b 00 00       	call   140001cf0 <__mingw_setusermatherr>
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
   140001134:	48 8b 05 15 34 00 00 	mov    0x3415(%rip),%rax        # 140004550 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 140007018 <envp>
   140001142:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 140007020 <argv>
   140001149:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 140007028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac 5e 00 00    	mov    %eax,0x5eac(%rip)        # 140007004 <startinfo>
   140001158:	48 8b 05 b1 33 00 00 	mov    0x33b1(%rip),%rax        # 140004510 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b 5e 00 00 	lea    0x5e9b(%rip),%rax        # 140007004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 6d 14 00 00       	call   1400025e0 <__getmainargs>
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
   14000118a:	48 8b 1d 0f 33 00 00 	mov    0x330f(%rip),%rbx        # 1400044a0 <.refptr.__native_startup_lock>
   140001191:	31 ff                	xor    %edi,%edi
   140001193:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   14000119a:	00 00 
   14000119c:	48 8b 2d 49 71 00 00 	mov    0x7149(%rip),%rbp        # 1400082ec <__imp_Sleep>
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
   1400011cd:	48 8b 35 dc 32 00 00 	mov    0x32dc(%rip),%rsi        # 1400044b0 <.refptr.__native_startup_state>
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
   140001208:	48 8b 05 d1 31 00 00 	mov    0x31d1(%rip),%rax        # 1400043e0 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 28 07 00 00       	call   140001950 <_pei386_runtime_relocator>
   140001228:	48 8b 0d 01 33 00 00 	mov    0x3301(%rip),%rcx        # 140004530 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 af 70 00 00    	call   *0x70af(%rip)        # 1400082e4 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 54 32 00 00 	mov    0x3254(%rip),%rdx        # 140004490 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 75 16 00 00       	call   1400028c0 <_set_invalid_parameter_handler>
   14000124b:	e8 10 05 00 00       	call   140001760 <_fpreset>
   140001250:	8b 1d d2 5d 00 00    	mov    0x5dd2(%rip),%ebx        # 140007028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 b0 16 00 00       	call   140002918 <malloc>
   140001268:	85 db                	test   %ebx,%ebx
   14000126a:	48 8b 2d af 5d 00 00 	mov    0x5daf(%rip),%rbp        # 140007020 <argv>
   140001271:	49 89 c4             	mov    %rax,%r12
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	48 8b 4c 1d 00       	mov    0x0(%rbp,%rbx,1),%rcx
   140001285:	e8 96 15 00 00       	call   140002820 <strlen>
   14000128a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128e:	48 89 f1             	mov    %rsi,%rcx
   140001291:	e8 82 16 00 00       	call   140002918 <malloc>
   140001296:	49 89 f0             	mov    %rsi,%r8
   140001299:	49 89 04 1c          	mov    %rax,(%r12,%rbx,1)
   14000129d:	48 8b 54 1d 00       	mov    0x0(%rbp,%rbx,1),%rdx
   1400012a2:	48 89 c1             	mov    %rax,%rcx
   1400012a5:	48 83 c3 08          	add    $0x8,%rbx
   1400012a9:	e8 3a 16 00 00       	call   1400028e8 <memcpy>
   1400012ae:	48 39 df             	cmp    %rbx,%rdi
   1400012b1:	75 cd                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b3:	4c 01 e7             	add    %r12,%rdi
   1400012b6:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bd:	4c 89 25 5c 5d 00 00 	mov    %r12,0x5d5c(%rip)        # 140007020 <argv>
   1400012c4:	e8 97 02 00 00       	call   140001560 <__main>
   1400012c9:	48 8b 05 30 31 00 00 	mov    0x3130(%rip),%rax        # 140004400 <.refptr.__imp___initenv>
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
   140001320:	48 8b 35 89 31 00 00 	mov    0x3189(%rip),%rsi        # 1400044b0 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 bf 13 00 00       	call   140002700 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 7d 31 00 00 	mov    0x317d(%rip),%rdx        # 1400044d0 <.refptr.__xc_z>
   140001353:	48 8b 0d 66 31 00 00 	mov    0x3166(%rip),%rcx        # 1400044c0 <.refptr.__xc_a>
   14000135a:	e8 51 15 00 00       	call   1400028b0 <_initterm>
   14000135f:	85 ff                	test   %edi,%edi
   140001361:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 f3 14 00 00       	call   140002878 <_cexit>
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
   1400013a0:	48 8b 15 49 31 00 00 	mov    0x3149(%rip),%rdx        # 1400044f0 <.refptr.__xi_z>
   1400013a7:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013ad:	48 8b 0d 2c 31 00 00 	mov    0x312c(%rip),%rcx        # 1400044e0 <.refptr.__xi_a>
   1400013b4:	e8 f7 14 00 00       	call   1400028b0 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ee fe ff ff       	jmp    1400012b6 <__tmainCRTStartup+0x136>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 41 0d 00 00       	call   140002110 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 65 30 00 00 	mov    0x3065(%rip),%rax        # 140004440 <.refptr.__mingw_app_type>
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
   1400013f4:	48 8b 05 45 30 00 00 	mov    0x3045(%rip),%rax        # 140004440 <.refptr.__mingw_app_type>
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
   140001414:	e8 a7 12 00 00       	call   1400026c0 <_onexit>
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
   140001458:	e8 03 01 00 00       	call   140001560 <__main>
   14000145d:	c7 45 fc 05 00 00 00 	movl   $0x5,-0x4(%rbp)
   140001464:	c7 45 f8 0a 00 00 00 	movl   $0xa,-0x8(%rbp)
   14000146b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140001472:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001475:	0f af 45 f8          	imul   -0x8(%rbp),%eax
   140001479:	89 45 f4             	mov    %eax,-0xc(%rbp)
   14000147c:	8b 45 f4             	mov    -0xc(%rbp),%eax
   14000147f:	89 c2                	mov    %eax,%edx
   140001481:	48 8b 05 18 2f 00 00 	mov    0x2f18(%rip),%rax        # 1400043a0 <__fu0__ZSt4cout>
   140001488:	48 89 c1             	mov    %rax,%rcx
   14000148b:	e8 10 00 00 00       	call   1400014a0 <_ZNSolsEi>
   140001490:	b8 00 00 00 00       	mov    $0x0,%eax
   140001495:	48 83 c4 30          	add    $0x30,%rsp
   140001499:	5d                   	pop    %rbp
   14000149a:	c3                   	ret
   14000149b:	90                   	nop
   14000149c:	90                   	nop
   14000149d:	90                   	nop
   14000149e:	90                   	nop
   14000149f:	90                   	nop

00000001400014a0 <_ZNSolsEi>:
   1400014a0:	ff 25 de 6f 00 00    	jmp    *0x6fde(%rip)        # 140008484 <__imp__ZNSolsEi>
   1400014a6:	90                   	nop
   1400014a7:	90                   	nop
   1400014a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400014af:	00 

00000001400014b0 <__do_global_dtors>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014b4:	48 8b 05 45 1b 00 00 	mov    0x1b45(%rip),%rax        # 140003000 <__data_start__>
   1400014bb:	48 8b 00             	mov    (%rax),%rax
   1400014be:	48 85 c0             	test   %rax,%rax
   1400014c1:	74 22                	je     1400014e5 <__do_global_dtors+0x35>
   1400014c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400014c8:	ff d0                	call   *%rax
   1400014ca:	48 8b 05 2f 1b 00 00 	mov    0x1b2f(%rip),%rax        # 140003000 <__data_start__>
   1400014d1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400014d5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400014d9:	48 89 15 20 1b 00 00 	mov    %rdx,0x1b20(%rip)        # 140003000 <__data_start__>
   1400014e0:	48 85 c0             	test   %rax,%rax
   1400014e3:	75 e3                	jne    1400014c8 <__do_global_dtors+0x18>
   1400014e5:	48 83 c4 28          	add    $0x28,%rsp
   1400014e9:	c3                   	ret
   1400014ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400014f0 <__do_global_ctors>:
   1400014f0:	56                   	push   %rsi
   1400014f1:	53                   	push   %rbx
   1400014f2:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f6:	48 8b 15 b3 2e 00 00 	mov    0x2eb3(%rip),%rdx        # 1400043b0 <.refptr.__CTOR_LIST__>
   1400014fd:	48 8b 02             	mov    (%rdx),%rax
   140001500:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001503:	89 c1                	mov    %eax,%ecx
   140001505:	74 39                	je     140001540 <__do_global_ctors+0x50>
   140001507:	85 c9                	test   %ecx,%ecx
   140001509:	74 20                	je     14000152b <__do_global_ctors+0x3b>
   14000150b:	89 c8                	mov    %ecx,%eax
   14000150d:	83 e9 01             	sub    $0x1,%ecx
   140001510:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001514:	48 29 c8             	sub    %rcx,%rax
   140001517:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000151c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001520:	ff 13                	call   *(%rbx)
   140001522:	48 83 eb 08          	sub    $0x8,%rbx
   140001526:	48 39 f3             	cmp    %rsi,%rbx
   140001529:	75 f5                	jne    140001520 <__do_global_ctors+0x30>
   14000152b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 1400014b0 <__do_global_dtors>
   140001532:	48 83 c4 28          	add    $0x28,%rsp
   140001536:	5b                   	pop    %rbx
   140001537:	5e                   	pop    %rsi
   140001538:	e9 d3 fe ff ff       	jmp    140001410 <atexit>
   14000153d:	0f 1f 00             	nopl   (%rax)
   140001540:	31 c0                	xor    %eax,%eax
   140001542:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001548:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000154c:	89 c1                	mov    %eax,%ecx
   14000154e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001553:	4c 89 c0             	mov    %r8,%rax
   140001556:	75 f0                	jne    140001548 <__do_global_ctors+0x58>
   140001558:	eb ad                	jmp    140001507 <__do_global_ctors+0x17>
   14000155a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001560 <__main>:
   140001560:	8b 05 ca 5a 00 00    	mov    0x5aca(%rip),%eax        # 140007030 <initialized>
   140001566:	85 c0                	test   %eax,%eax
   140001568:	74 06                	je     140001570 <__main+0x10>
   14000156a:	c3                   	ret
   14000156b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001570:	c7 05 b6 5a 00 00 01 	movl   $0x1,0x5ab6(%rip)        # 140007030 <initialized>
   140001577:	00 00 00 
   14000157a:	e9 71 ff ff ff       	jmp    1400014f0 <__do_global_ctors>
   14000157f:	90                   	nop

0000000140001580 <_setargv>:
   140001580:	31 c0                	xor    %eax,%eax
   140001582:	c3                   	ret
   140001583:	90                   	nop
   140001584:	90                   	nop
   140001585:	90                   	nop
   140001586:	90                   	nop
   140001587:	90                   	nop
   140001588:	90                   	nop
   140001589:	90                   	nop
   14000158a:	90                   	nop
   14000158b:	90                   	nop
   14000158c:	90                   	nop
   14000158d:	90                   	nop
   14000158e:	90                   	nop
   14000158f:	90                   	nop

0000000140001590 <__dyn_tls_dtor>:
   140001590:	48 83 ec 28          	sub    $0x28,%rsp
   140001594:	83 fa 03             	cmp    $0x3,%edx
   140001597:	74 17                	je     1400015b0 <__dyn_tls_dtor+0x20>
   140001599:	85 d2                	test   %edx,%edx
   14000159b:	74 13                	je     1400015b0 <__dyn_tls_dtor+0x20>
   14000159d:	b8 01 00 00 00       	mov    $0x1,%eax
   1400015a2:	48 83 c4 28          	add    $0x28,%rsp
   1400015a6:	c3                   	ret
   1400015a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400015ae:	00 00 
   1400015b0:	e8 5b 0a 00 00       	call   140002010 <__mingw_TLScallback>
   1400015b5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400015ba:	48 83 c4 28          	add    $0x28,%rsp
   1400015be:	c3                   	ret
   1400015bf:	90                   	nop

00000001400015c0 <__dyn_tls_init>:
   1400015c0:	56                   	push   %rsi
   1400015c1:	53                   	push   %rbx
   1400015c2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015c6:	48 8b 05 b3 2d 00 00 	mov    0x2db3(%rip),%rax        # 140004380 <.refptr._CRT_MT>
   1400015cd:	83 38 02             	cmpl   $0x2,(%rax)
   1400015d0:	74 06                	je     1400015d8 <__dyn_tls_init+0x18>
   1400015d2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400015d8:	83 fa 02             	cmp    $0x2,%edx
   1400015db:	74 13                	je     1400015f0 <__dyn_tls_init+0x30>
   1400015dd:	83 fa 01             	cmp    $0x1,%edx
   1400015e0:	74 4e                	je     140001630 <__dyn_tls_init+0x70>
   1400015e2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400015e7:	48 83 c4 28          	add    $0x28,%rsp
   1400015eb:	5b                   	pop    %rbx
   1400015ec:	5e                   	pop    %rsi
   1400015ed:	c3                   	ret
   1400015ee:	66 90                	xchg   %ax,%ax
   1400015f0:	48 8d 1d 61 7a 00 00 	lea    0x7a61(%rip),%rbx        # 140009058 <__xd_z>
   1400015f7:	48 8d 35 5a 7a 00 00 	lea    0x7a5a(%rip),%rsi        # 140009058 <__xd_z>
   1400015fe:	48 39 de             	cmp    %rbx,%rsi
   140001601:	74 df                	je     1400015e2 <__dyn_tls_init+0x22>
   140001603:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001608:	48 8b 03             	mov    (%rbx),%rax
   14000160b:	48 85 c0             	test   %rax,%rax
   14000160e:	74 02                	je     140001612 <__dyn_tls_init+0x52>
   140001610:	ff d0                	call   *%rax
   140001612:	48 83 c3 08          	add    $0x8,%rbx
   140001616:	48 39 de             	cmp    %rbx,%rsi
   140001619:	75 ed                	jne    140001608 <__dyn_tls_init+0x48>
   14000161b:	b8 01 00 00 00       	mov    $0x1,%eax
   140001620:	48 83 c4 28          	add    $0x28,%rsp
   140001624:	5b                   	pop    %rbx
   140001625:	5e                   	pop    %rsi
   140001626:	c3                   	ret
   140001627:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000162e:	00 00 
   140001630:	e8 db 09 00 00       	call   140002010 <__mingw_TLScallback>
   140001635:	b8 01 00 00 00       	mov    $0x1,%eax
   14000163a:	48 83 c4 28          	add    $0x28,%rsp
   14000163e:	5b                   	pop    %rbx
   14000163f:	5e                   	pop    %rsi
   140001640:	c3                   	ret
   140001641:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001648:	00 00 00 00 
   14000164c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001650 <__tlregdtor>:
   140001650:	31 c0                	xor    %eax,%eax
   140001652:	c3                   	ret
   140001653:	90                   	nop
   140001654:	90                   	nop
   140001655:	90                   	nop
   140001656:	90                   	nop
   140001657:	90                   	nop
   140001658:	90                   	nop
   140001659:	90                   	nop
   14000165a:	90                   	nop
   14000165b:	90                   	nop
   14000165c:	90                   	nop
   14000165d:	90                   	nop
   14000165e:	90                   	nop
   14000165f:	90                   	nop

0000000140001660 <_matherr>:
   140001660:	56                   	push   %rsi
   140001661:	53                   	push   %rbx
   140001662:	48 83 ec 78          	sub    $0x78,%rsp
   140001666:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   14000166b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140001670:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140001676:	83 39 06             	cmpl   $0x6,(%rcx)
   140001679:	0f 87 cd 00 00 00    	ja     14000174c <_matherr+0xec>
   14000167f:	8b 01                	mov    (%rcx),%eax
   140001681:	48 8d 15 1c 2b 00 00 	lea    0x2b1c(%rip),%rdx        # 1400041a4 <.rdata+0x124>
   140001688:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000168c:	48 01 d0             	add    %rdx,%rax
   14000168f:	ff e0                	jmp    *%rax
   140001691:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001698:	48 8d 1d 00 2a 00 00 	lea    0x2a00(%rip),%rbx        # 14000409f <.rdata+0x1f>
   14000169f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400016a3:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400016a9:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400016ae:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400016b3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400016b8:	e8 73 11 00 00       	call   140002830 <__acrt_iob_func>
   1400016bd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400016c4:	49 89 f1             	mov    %rsi,%r9
   1400016c7:	49 89 d8             	mov    %rbx,%r8
   1400016ca:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400016d0:	48 89 c1             	mov    %rax,%rcx
   1400016d3:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400016d9:	48 8d 15 98 2a 00 00 	lea    0x2a98(%rip),%rdx        # 140004178 <.rdata+0xf8>
   1400016e0:	e8 ab 0e 00 00       	call   140002590 <fprintf>
   1400016e5:	90                   	nop
   1400016e6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   1400016eb:	31 c0                	xor    %eax,%eax
   1400016ed:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   1400016f2:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   1400016f8:	48 83 c4 78          	add    $0x78,%rsp
   1400016fc:	5b                   	pop    %rbx
   1400016fd:	5e                   	pop    %rsi
   1400016fe:	c3                   	ret
   1400016ff:	90                   	nop
   140001700:	48 8d 1d 79 29 00 00 	lea    0x2979(%rip),%rbx        # 140004080 <.rdata>
   140001707:	eb 96                	jmp    14000169f <_matherr+0x3f>
   140001709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001710:	48 8d 1d c9 29 00 00 	lea    0x29c9(%rip),%rbx        # 1400040e0 <.rdata+0x60>
   140001717:	eb 86                	jmp    14000169f <_matherr+0x3f>
   140001719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001720:	48 8d 1d 99 29 00 00 	lea    0x2999(%rip),%rbx        # 1400040c0 <.rdata+0x40>
   140001727:	e9 73 ff ff ff       	jmp    14000169f <_matherr+0x3f>
   14000172c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001730:	48 8d 1d f9 29 00 00 	lea    0x29f9(%rip),%rbx        # 140004130 <.rdata+0xb0>
   140001737:	e9 63 ff ff ff       	jmp    14000169f <_matherr+0x3f>
   14000173c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001740:	48 8d 1d c1 29 00 00 	lea    0x29c1(%rip),%rbx        # 140004108 <.rdata+0x88>
   140001747:	e9 53 ff ff ff       	jmp    14000169f <_matherr+0x3f>
   14000174c:	48 8d 1d 13 2a 00 00 	lea    0x2a13(%rip),%rbx        # 140004166 <.rdata+0xe6>
   140001753:	e9 47 ff ff ff       	jmp    14000169f <_matherr+0x3f>
   140001758:	90                   	nop
   140001759:	90                   	nop
   14000175a:	90                   	nop
   14000175b:	90                   	nop
   14000175c:	90                   	nop
   14000175d:	90                   	nop
   14000175e:	90                   	nop
   14000175f:	90                   	nop

0000000140001760 <_fpreset>:
   140001760:	db e3                	fninit
   140001762:	c3                   	ret
   140001763:	90                   	nop
   140001764:	90                   	nop
   140001765:	90                   	nop
   140001766:	90                   	nop
   140001767:	90                   	nop
   140001768:	90                   	nop
   140001769:	90                   	nop
   14000176a:	90                   	nop
   14000176b:	90                   	nop
   14000176c:	90                   	nop
   14000176d:	90                   	nop
   14000176e:	90                   	nop
   14000176f:	90                   	nop

0000000140001770 <__report_error>:
   140001770:	56                   	push   %rsi
   140001771:	53                   	push   %rbx
   140001772:	48 83 ec 38          	sub    $0x38,%rsp
   140001776:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000177b:	48 89 cb             	mov    %rcx,%rbx
   14000177e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001783:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001788:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000178d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001792:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001797:	e8 94 10 00 00       	call   140002830 <__acrt_iob_func>
   14000179c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   1400017a2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400017a7:	48 8d 0d 12 2a 00 00 	lea    0x2a12(%rip),%rcx        # 1400041c0 <.rdata>
   1400017ae:	49 89 c1             	mov    %rax,%r9
   1400017b1:	e8 a2 10 00 00       	call   140002858 <fwrite>
   1400017b6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   1400017bb:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400017c0:	e8 6b 10 00 00       	call   140002830 <__acrt_iob_func>
   1400017c5:	48 89 da             	mov    %rbx,%rdx
   1400017c8:	48 89 c1             	mov    %rax,%rcx
   1400017cb:	49 89 f0             	mov    %rsi,%r8
   1400017ce:	e8 9d 0d 00 00       	call   140002570 <vfprintf>
   1400017d3:	e8 f0 10 00 00       	call   1400028c8 <abort>
   1400017d8:	90                   	nop
   1400017d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400017e0 <mark_section_writable>:
   1400017e0:	57                   	push   %rdi
   1400017e1:	56                   	push   %rsi
   1400017e2:	53                   	push   %rbx
   1400017e3:	48 83 ec 50          	sub    $0x50,%rsp
   1400017e7:	48 63 35 a6 58 00 00 	movslq 0x58a6(%rip),%rsi        # 140007094 <maxSections>
   1400017ee:	85 f6                	test   %esi,%esi
   1400017f0:	48 89 cb             	mov    %rcx,%rbx
   1400017f3:	0f 8e 17 01 00 00    	jle    140001910 <mark_section_writable+0x130>
   1400017f9:	48 8b 05 98 58 00 00 	mov    0x5898(%rip),%rax        # 140007098 <the_secs>
   140001800:	45 31 c9             	xor    %r9d,%r9d
   140001803:	48 83 c0 18          	add    $0x18,%rax
   140001807:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000180e:	00 00 
   140001810:	4c 8b 00             	mov    (%rax),%r8
   140001813:	4c 39 c3             	cmp    %r8,%rbx
   140001816:	72 13                	jb     14000182b <mark_section_writable+0x4b>
   140001818:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000181c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000181f:	49 01 d0             	add    %rdx,%r8
   140001822:	4c 39 c3             	cmp    %r8,%rbx
   140001825:	0f 82 8a 00 00 00    	jb     1400018b5 <mark_section_writable+0xd5>
   14000182b:	41 83 c1 01          	add    $0x1,%r9d
   14000182f:	48 83 c0 28          	add    $0x28,%rax
   140001833:	41 39 f1             	cmp    %esi,%r9d
   140001836:	75 d8                	jne    140001810 <mark_section_writable+0x30>
   140001838:	48 89 d9             	mov    %rbx,%rcx
   14000183b:	e8 10 0a 00 00       	call   140002250 <__mingw_GetSectionForAddress>
   140001840:	48 85 c0             	test   %rax,%rax
   140001843:	48 89 c7             	mov    %rax,%rdi
   140001846:	0f 84 e6 00 00 00    	je     140001932 <mark_section_writable+0x152>
   14000184c:	48 8b 05 45 58 00 00 	mov    0x5845(%rip),%rax        # 140007098 <the_secs>
   140001853:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140001857:	48 c1 e3 03          	shl    $0x3,%rbx
   14000185b:	48 01 d8             	add    %rbx,%rax
   14000185e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140001862:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001868:	e8 23 0b 00 00       	call   140002390 <_GetPEImageBase>
   14000186d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140001870:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001876:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000187a:	48 8b 05 17 58 00 00 	mov    0x5817(%rip),%rax        # 140007098 <the_secs>
   140001881:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001886:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000188b:	ff 15 73 6a 00 00    	call   *0x6a73(%rip)        # 140008304 <__imp_VirtualQuery>
   140001891:	48 85 c0             	test   %rax,%rax
   140001894:	0f 84 7d 00 00 00    	je     140001917 <mark_section_writable+0x137>
   14000189a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000189e:	8d 50 c0             	lea    -0x40(%rax),%edx
   1400018a1:	83 e2 bf             	and    $0xffffffbf,%edx
   1400018a4:	74 08                	je     1400018ae <mark_section_writable+0xce>
   1400018a6:	8d 50 fc             	lea    -0x4(%rax),%edx
   1400018a9:	83 e2 fb             	and    $0xfffffffb,%edx
   1400018ac:	75 12                	jne    1400018c0 <mark_section_writable+0xe0>
   1400018ae:	83 05 df 57 00 00 01 	addl   $0x1,0x57df(%rip)        # 140007094 <maxSections>
   1400018b5:	48 83 c4 50          	add    $0x50,%rsp
   1400018b9:	5b                   	pop    %rbx
   1400018ba:	5e                   	pop    %rsi
   1400018bb:	5f                   	pop    %rdi
   1400018bc:	c3                   	ret
   1400018bd:	0f 1f 00             	nopl   (%rax)
   1400018c0:	83 f8 02             	cmp    $0x2,%eax
   1400018c3:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   1400018c9:	b8 04 00 00 00       	mov    $0x4,%eax
   1400018ce:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400018d3:	44 0f 44 c0          	cmove  %eax,%r8d
   1400018d7:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400018dc:	48 03 1d b5 57 00 00 	add    0x57b5(%rip),%rbx        # 140007098 <the_secs>
   1400018e3:	49 89 d9             	mov    %rbx,%r9
   1400018e6:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400018ea:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400018ee:	ff 15 08 6a 00 00    	call   *0x6a08(%rip)        # 1400082fc <__imp_VirtualProtect>
   1400018f4:	85 c0                	test   %eax,%eax
   1400018f6:	75 b6                	jne    1400018ae <mark_section_writable+0xce>
   1400018f8:	ff 15 ce 69 00 00    	call   *0x69ce(%rip)        # 1400082cc <__imp_GetLastError>
   1400018fe:	48 8d 0d 33 29 00 00 	lea    0x2933(%rip),%rcx        # 140004238 <.rdata+0x78>
   140001905:	89 c2                	mov    %eax,%edx
   140001907:	e8 64 fe ff ff       	call   140001770 <__report_error>
   14000190c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001910:	31 f6                	xor    %esi,%esi
   140001912:	e9 21 ff ff ff       	jmp    140001838 <mark_section_writable+0x58>
   140001917:	48 8b 05 7a 57 00 00 	mov    0x577a(%rip),%rax        # 140007098 <the_secs>
   14000191e:	48 8d 0d db 28 00 00 	lea    0x28db(%rip),%rcx        # 140004200 <.rdata+0x40>
   140001925:	8b 57 08             	mov    0x8(%rdi),%edx
   140001928:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000192d:	e8 3e fe ff ff       	call   140001770 <__report_error>
   140001932:	48 8d 0d a7 28 00 00 	lea    0x28a7(%rip),%rcx        # 1400041e0 <.rdata+0x20>
   140001939:	48 89 da             	mov    %rbx,%rdx
   14000193c:	e8 2f fe ff ff       	call   140001770 <__report_error>
   140001941:	90                   	nop
   140001942:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001949:	00 00 00 00 
   14000194d:	0f 1f 00             	nopl   (%rax)

0000000140001950 <_pei386_runtime_relocator>:
   140001950:	55                   	push   %rbp
   140001951:	41 57                	push   %r15
   140001953:	41 56                	push   %r14
   140001955:	41 55                	push   %r13
   140001957:	41 54                	push   %r12
   140001959:	57                   	push   %rdi
   14000195a:	56                   	push   %rsi
   14000195b:	53                   	push   %rbx
   14000195c:	48 83 ec 48          	sub    $0x48,%rsp
   140001960:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001965:	8b 3d 25 57 00 00    	mov    0x5725(%rip),%edi        # 140007090 <was_init.0>
   14000196b:	85 ff                	test   %edi,%edi
   14000196d:	74 11                	je     140001980 <_pei386_runtime_relocator+0x30>
   14000196f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001973:	5b                   	pop    %rbx
   140001974:	5e                   	pop    %rsi
   140001975:	5f                   	pop    %rdi
   140001976:	41 5c                	pop    %r12
   140001978:	41 5d                	pop    %r13
   14000197a:	41 5e                	pop    %r14
   14000197c:	41 5f                	pop    %r15
   14000197e:	5d                   	pop    %rbp
   14000197f:	c3                   	ret
   140001980:	c7 05 06 57 00 00 01 	movl   $0x1,0x5706(%rip)        # 140007090 <was_init.0>
   140001987:	00 00 00 
   14000198a:	e8 41 09 00 00       	call   1400022d0 <__mingw_GetSectionCount>
   14000198f:	48 98                	cltq
   140001991:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001995:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   14000199c:	00 
   14000199d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400019a1:	e8 8a 0b 00 00       	call   140002530 <___chkstk_ms>
   1400019a6:	4c 8b 2d 13 2a 00 00 	mov    0x2a13(%rip),%r13        # 1400043c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400019ad:	c7 05 dd 56 00 00 00 	movl   $0x0,0x56dd(%rip)        # 140007094 <maxSections>
   1400019b4:	00 00 00 
   1400019b7:	48 8b 1d 12 2a 00 00 	mov    0x2a12(%rip),%rbx        # 1400043d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400019be:	48 29 c4             	sub    %rax,%rsp
   1400019c1:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400019c6:	48 89 05 cb 56 00 00 	mov    %rax,0x56cb(%rip)        # 140007098 <the_secs>
   1400019cd:	4c 89 e8             	mov    %r13,%rax
   1400019d0:	48 29 d8             	sub    %rbx,%rax
   1400019d3:	48 83 f8 07          	cmp    $0x7,%rax
   1400019d7:	7e 96                	jle    14000196f <_pei386_runtime_relocator+0x1f>
   1400019d9:	48 83 f8 0b          	cmp    $0xb,%rax
   1400019dd:	8b 13                	mov    (%rbx),%edx
   1400019df:	0f 8f 83 01 00 00    	jg     140001b68 <_pei386_runtime_relocator+0x218>
   1400019e5:	8b 03                	mov    (%rbx),%eax
   1400019e7:	85 c0                	test   %eax,%eax
   1400019e9:	0f 85 71 02 00 00    	jne    140001c60 <_pei386_runtime_relocator+0x310>
   1400019ef:	8b 43 04             	mov    0x4(%rbx),%eax
   1400019f2:	85 c0                	test   %eax,%eax
   1400019f4:	0f 85 66 02 00 00    	jne    140001c60 <_pei386_runtime_relocator+0x310>
   1400019fa:	8b 53 08             	mov    0x8(%rbx),%edx
   1400019fd:	83 fa 01             	cmp    $0x1,%edx
   140001a00:	0f 85 9c 02 00 00    	jne    140001ca2 <_pei386_runtime_relocator+0x352>
   140001a06:	48 83 c3 0c          	add    $0xc,%rbx
   140001a0a:	4c 39 eb             	cmp    %r13,%rbx
   140001a0d:	0f 83 5c ff ff ff    	jae    14000196f <_pei386_runtime_relocator+0x1f>
   140001a13:	4c 8b 25 d6 29 00 00 	mov    0x29d6(%rip),%r12        # 1400043f0 <.refptr.__image_base__>
   140001a1a:	49 bf ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r15
   140001a21:	ff ff ff 
   140001a24:	eb 5d                	jmp    140001a83 <_pei386_runtime_relocator+0x133>
   140001a26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001a2d:	00 00 00 
   140001a30:	41 0f b6 36          	movzbl (%r14),%esi
   140001a34:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001a3a:	40 84 f6             	test   %sil,%sil
   140001a3d:	0f 89 05 02 00 00    	jns    140001c48 <_pei386_runtime_relocator+0x2f8>
   140001a43:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140001a4a:	48 29 c6             	sub    %rax,%rsi
   140001a4d:	4c 01 ce             	add    %r9,%rsi
   140001a50:	85 c9                	test   %ecx,%ecx
   140001a52:	75 17                	jne    140001a6b <_pei386_runtime_relocator+0x11b>
   140001a54:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140001a5b:	0f 8f 4e 01 00 00    	jg     140001baf <_pei386_runtime_relocator+0x25f>
   140001a61:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140001a65:	0f 8c 44 01 00 00    	jl     140001baf <_pei386_runtime_relocator+0x25f>
   140001a6b:	4c 89 f1             	mov    %r14,%rcx
   140001a6e:	e8 6d fd ff ff       	call   1400017e0 <mark_section_writable>
   140001a73:	41 88 36             	mov    %sil,(%r14)
   140001a76:	48 83 c3 0c          	add    $0xc,%rbx
   140001a7a:	4c 39 eb             	cmp    %r13,%rbx
   140001a7d:	0f 83 8d 00 00 00    	jae    140001b10 <_pei386_runtime_relocator+0x1c0>
   140001a83:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140001a86:	8b 03                	mov    (%rbx),%eax
   140001a88:	44 8b 43 04          	mov    0x4(%rbx),%r8d
   140001a8c:	0f b6 d1             	movzbl %cl,%edx
   140001a8f:	4c 01 e0             	add    %r12,%rax
   140001a92:	83 fa 20             	cmp    $0x20,%edx
   140001a95:	4c 8b 08             	mov    (%rax),%r9
   140001a98:	4f 8d 34 20          	lea    (%r8,%r12,1),%r14
   140001a9c:	0f 84 26 01 00 00    	je     140001bc8 <_pei386_runtime_relocator+0x278>
   140001aa2:	0f 87 e8 00 00 00    	ja     140001b90 <_pei386_runtime_relocator+0x240>
   140001aa8:	83 fa 08             	cmp    $0x8,%edx
   140001aab:	74 83                	je     140001a30 <_pei386_runtime_relocator+0xe0>
   140001aad:	83 fa 10             	cmp    $0x10,%edx
   140001ab0:	0f 85 e0 01 00 00    	jne    140001c96 <_pei386_runtime_relocator+0x346>
   140001ab6:	41 0f b7 36          	movzwl (%r14),%esi
   140001aba:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001ac0:	66 85 f6             	test   %si,%si
   140001ac3:	0f 89 67 01 00 00    	jns    140001c30 <_pei386_runtime_relocator+0x2e0>
   140001ac9:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140001ad0:	48 29 c6             	sub    %rax,%rsi
   140001ad3:	4c 01 ce             	add    %r9,%rsi
   140001ad6:	85 c9                	test   %ecx,%ecx
   140001ad8:	75 1a                	jne    140001af4 <_pei386_runtime_relocator+0x1a4>
   140001ada:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140001ae1:	0f 8c c8 00 00 00    	jl     140001baf <_pei386_runtime_relocator+0x25f>
   140001ae7:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140001aee:	0f 8f bb 00 00 00    	jg     140001baf <_pei386_runtime_relocator+0x25f>
   140001af4:	4c 89 f1             	mov    %r14,%rcx
   140001af7:	48 83 c3 0c          	add    $0xc,%rbx
   140001afb:	e8 e0 fc ff ff       	call   1400017e0 <mark_section_writable>
   140001b00:	4c 39 eb             	cmp    %r13,%rbx
   140001b03:	66 41 89 36          	mov    %si,(%r14)
   140001b07:	0f 82 76 ff ff ff    	jb     140001a83 <_pei386_runtime_relocator+0x133>
   140001b0d:	0f 1f 00             	nopl   (%rax)
   140001b10:	8b 15 7e 55 00 00    	mov    0x557e(%rip),%edx        # 140007094 <maxSections>
   140001b16:	85 d2                	test   %edx,%edx
   140001b18:	0f 8e 51 fe ff ff    	jle    14000196f <_pei386_runtime_relocator+0x1f>
   140001b1e:	48 8b 35 d7 67 00 00 	mov    0x67d7(%rip),%rsi        # 1400082fc <__imp_VirtualProtect>
   140001b25:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   140001b29:	31 db                	xor    %ebx,%ebx
   140001b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001b30:	48 8b 05 61 55 00 00 	mov    0x5561(%rip),%rax        # 140007098 <the_secs>
   140001b37:	48 01 d8             	add    %rbx,%rax
   140001b3a:	44 8b 00             	mov    (%rax),%r8d
   140001b3d:	45 85 c0             	test   %r8d,%r8d
   140001b40:	74 0d                	je     140001b4f <_pei386_runtime_relocator+0x1ff>
   140001b42:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001b46:	4d 89 e1             	mov    %r12,%r9
   140001b49:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001b4d:	ff d6                	call   *%rsi
   140001b4f:	83 c7 01             	add    $0x1,%edi
   140001b52:	48 83 c3 28          	add    $0x28,%rbx
   140001b56:	3b 3d 38 55 00 00    	cmp    0x5538(%rip),%edi        # 140007094 <maxSections>
   140001b5c:	7c d2                	jl     140001b30 <_pei386_runtime_relocator+0x1e0>
   140001b5e:	e9 0c fe ff ff       	jmp    14000196f <_pei386_runtime_relocator+0x1f>
   140001b63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001b68:	85 d2                	test   %edx,%edx
   140001b6a:	0f 85 f0 00 00 00    	jne    140001c60 <_pei386_runtime_relocator+0x310>
   140001b70:	8b 43 04             	mov    0x4(%rbx),%eax
   140001b73:	89 c2                	mov    %eax,%edx
   140001b75:	0b 53 08             	or     0x8(%rbx),%edx
   140001b78:	0f 85 74 fe ff ff    	jne    1400019f2 <_pei386_runtime_relocator+0xa2>
   140001b7e:	48 83 c3 0c          	add    $0xc,%rbx
   140001b82:	e9 5e fe ff ff       	jmp    1400019e5 <_pei386_runtime_relocator+0x95>
   140001b87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001b8e:	00 00 
   140001b90:	83 fa 40             	cmp    $0x40,%edx
   140001b93:	0f 85 fd 00 00 00    	jne    140001c96 <_pei386_runtime_relocator+0x346>
   140001b99:	49 8b 36             	mov    (%r14),%rsi
   140001b9c:	48 29 c6             	sub    %rax,%rsi
   140001b9f:	4c 01 ce             	add    %r9,%rsi
   140001ba2:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001ba8:	75 66                	jne    140001c10 <_pei386_runtime_relocator+0x2c0>
   140001baa:	48 85 f6             	test   %rsi,%rsi
   140001bad:	78 61                	js     140001c10 <_pei386_runtime_relocator+0x2c0>
   140001baf:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140001bb4:	48 8d 0d 0d 27 00 00 	lea    0x270d(%rip),%rcx        # 1400042c8 <.rdata+0x108>
   140001bbb:	4d 89 f0             	mov    %r14,%r8
   140001bbe:	e8 ad fb ff ff       	call   140001770 <__report_error>
   140001bc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001bc8:	41 8b 36             	mov    (%r14),%esi
   140001bcb:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001bd1:	85 f6                	test   %esi,%esi
   140001bd3:	79 4b                	jns    140001c20 <_pei386_runtime_relocator+0x2d0>
   140001bd5:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140001bdc:	ff ff ff 
   140001bdf:	4c 09 de             	or     %r11,%rsi
   140001be2:	48 29 c6             	sub    %rax,%rsi
   140001be5:	4c 01 ce             	add    %r9,%rsi
   140001be8:	85 c9                	test   %ecx,%ecx
   140001bea:	75 0f                	jne    140001bfb <_pei386_runtime_relocator+0x2ab>
   140001bec:	4c 39 fe             	cmp    %r15,%rsi
   140001bef:	7e be                	jle    140001baf <_pei386_runtime_relocator+0x25f>
   140001bf1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001bf6:	48 39 c6             	cmp    %rax,%rsi
   140001bf9:	7f b4                	jg     140001baf <_pei386_runtime_relocator+0x25f>
   140001bfb:	4c 89 f1             	mov    %r14,%rcx
   140001bfe:	e8 dd fb ff ff       	call   1400017e0 <mark_section_writable>
   140001c03:	41 89 36             	mov    %esi,(%r14)
   140001c06:	e9 6b fe ff ff       	jmp    140001a76 <_pei386_runtime_relocator+0x126>
   140001c0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c10:	4c 89 f1             	mov    %r14,%rcx
   140001c13:	e8 c8 fb ff ff       	call   1400017e0 <mark_section_writable>
   140001c18:	49 89 36             	mov    %rsi,(%r14)
   140001c1b:	e9 56 fe ff ff       	jmp    140001a76 <_pei386_runtime_relocator+0x126>
   140001c20:	48 29 c6             	sub    %rax,%rsi
   140001c23:	4c 01 ce             	add    %r9,%rsi
   140001c26:	85 c9                	test   %ecx,%ecx
   140001c28:	74 c2                	je     140001bec <_pei386_runtime_relocator+0x29c>
   140001c2a:	eb cf                	jmp    140001bfb <_pei386_runtime_relocator+0x2ab>
   140001c2c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001c30:	48 29 c6             	sub    %rax,%rsi
   140001c33:	4c 01 ce             	add    %r9,%rsi
   140001c36:	85 c9                	test   %ecx,%ecx
   140001c38:	0f 84 9c fe ff ff    	je     140001ada <_pei386_runtime_relocator+0x18a>
   140001c3e:	e9 b1 fe ff ff       	jmp    140001af4 <_pei386_runtime_relocator+0x1a4>
   140001c43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c48:	48 29 c6             	sub    %rax,%rsi
   140001c4b:	4c 01 ce             	add    %r9,%rsi
   140001c4e:	85 c9                	test   %ecx,%ecx
   140001c50:	0f 84 fe fd ff ff    	je     140001a54 <_pei386_runtime_relocator+0x104>
   140001c56:	e9 10 fe ff ff       	jmp    140001a6b <_pei386_runtime_relocator+0x11b>
   140001c5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c60:	4c 39 eb             	cmp    %r13,%rbx
   140001c63:	0f 83 06 fd ff ff    	jae    14000196f <_pei386_runtime_relocator+0x1f>
   140001c69:	4c 8b 35 80 27 00 00 	mov    0x2780(%rip),%r14        # 1400043f0 <.refptr.__image_base__>
   140001c70:	8b 73 04             	mov    0x4(%rbx),%esi
   140001c73:	48 83 c3 08          	add    $0x8,%rbx
   140001c77:	44 8b 63 f8          	mov    -0x8(%rbx),%r12d
   140001c7b:	4c 01 f6             	add    %r14,%rsi
   140001c7e:	44 03 26             	add    (%rsi),%r12d
   140001c81:	48 89 f1             	mov    %rsi,%rcx
   140001c84:	e8 57 fb ff ff       	call   1400017e0 <mark_section_writable>
   140001c89:	4c 39 eb             	cmp    %r13,%rbx
   140001c8c:	44 89 26             	mov    %r12d,(%rsi)
   140001c8f:	72 df                	jb     140001c70 <_pei386_runtime_relocator+0x320>
   140001c91:	e9 7a fe ff ff       	jmp    140001b10 <_pei386_runtime_relocator+0x1c0>
   140001c96:	48 8d 0d fb 25 00 00 	lea    0x25fb(%rip),%rcx        # 140004298 <.rdata+0xd8>
   140001c9d:	e8 ce fa ff ff       	call   140001770 <__report_error>
   140001ca2:	48 8d 0d b7 25 00 00 	lea    0x25b7(%rip),%rcx        # 140004260 <.rdata+0xa0>
   140001ca9:	e8 c2 fa ff ff       	call   140001770 <__report_error>
   140001cae:	90                   	nop
   140001caf:	90                   	nop

0000000140001cb0 <__mingw_raise_matherr>:
   140001cb0:	48 83 ec 58          	sub    $0x58,%rsp
   140001cb4:	48 8b 05 e5 53 00 00 	mov    0x53e5(%rip),%rax        # 1400070a0 <stUserMathErr>
   140001cbb:	48 85 c0             	test   %rax,%rax
   140001cbe:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140001cc2:	74 25                	je     140001ce9 <__mingw_raise_matherr+0x39>
   140001cc4:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001ccb:	00 00 
   140001ccd:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001cd1:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001cd6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001cdb:	0f 29 54 24 30       	movaps %xmm2,0x30(%rsp)
   140001ce0:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001ce6:	ff d0                	call   *%rax
   140001ce8:	90                   	nop
   140001ce9:	48 83 c4 58          	add    $0x58,%rsp
   140001ced:	c3                   	ret
   140001cee:	66 90                	xchg   %ax,%ax

0000000140001cf0 <__mingw_setusermatherr>:
   140001cf0:	48 89 0d a9 53 00 00 	mov    %rcx,0x53a9(%rip)        # 1400070a0 <stUserMathErr>
   140001cf7:	e9 f4 0b 00 00       	jmp    1400028f0 <__setusermatherr>
   140001cfc:	90                   	nop
   140001cfd:	90                   	nop
   140001cfe:	90                   	nop
   140001cff:	90                   	nop

0000000140001d00 <_gnu_exception_handler>:
   140001d00:	53                   	push   %rbx
   140001d01:	48 83 ec 20          	sub    $0x20,%rsp
   140001d05:	48 8b 11             	mov    (%rcx),%rdx
   140001d08:	8b 02                	mov    (%rdx),%eax
   140001d0a:	48 89 cb             	mov    %rcx,%rbx
   140001d0d:	89 c1                	mov    %eax,%ecx
   140001d0f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001d15:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001d1b:	0f 84 9f 00 00 00    	je     140001dc0 <_gnu_exception_handler+0xc0>
   140001d21:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001d26:	77 77                	ja     140001d9f <_gnu_exception_handler+0x9f>
   140001d28:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001d2d:	76 21                	jbe    140001d50 <_gnu_exception_handler+0x50>
   140001d2f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001d34:	83 f8 09             	cmp    $0x9,%eax
   140001d37:	77 54                	ja     140001d8d <_gnu_exception_handler+0x8d>
   140001d39:	48 8d 15 e0 25 00 00 	lea    0x25e0(%rip),%rdx        # 140004320 <.rdata>
   140001d40:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001d44:	48 01 d0             	add    %rdx,%rax
   140001d47:	ff e0                	jmp    *%rax
   140001d49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001d50:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001d55:	0f 84 d5 00 00 00    	je     140001e30 <_gnu_exception_handler+0x130>
   140001d5b:	76 3b                	jbe    140001d98 <_gnu_exception_handler+0x98>
   140001d5d:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001d62:	74 29                	je     140001d8d <_gnu_exception_handler+0x8d>
   140001d64:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001d69:	75 34                	jne    140001d9f <_gnu_exception_handler+0x9f>
   140001d6b:	31 d2                	xor    %edx,%edx
   140001d6d:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001d72:	e8 59 0b 00 00       	call   1400028d0 <signal>
   140001d77:	48 83 f8 01          	cmp    $0x1,%rax
   140001d7b:	0f 84 d6 00 00 00    	je     140001e57 <_gnu_exception_handler+0x157>
   140001d81:	48 85 c0             	test   %rax,%rax
   140001d84:	74 19                	je     140001d9f <_gnu_exception_handler+0x9f>
   140001d86:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001d8b:	ff d0                	call   *%rax
   140001d8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001d92:	48 83 c4 20          	add    $0x20,%rsp
   140001d96:	5b                   	pop    %rbx
   140001d97:	c3                   	ret
   140001d98:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001d9d:	74 ee                	je     140001d8d <_gnu_exception_handler+0x8d>
   140001d9f:	48 8b 05 1a 53 00 00 	mov    0x531a(%rip),%rax        # 1400070c0 <__mingw_oldexcpt_handler>
   140001da6:	48 85 c0             	test   %rax,%rax
   140001da9:	74 25                	je     140001dd0 <_gnu_exception_handler+0xd0>
   140001dab:	48 89 d9             	mov    %rbx,%rcx
   140001dae:	48 83 c4 20          	add    $0x20,%rsp
   140001db2:	5b                   	pop    %rbx
   140001db3:	48 ff e0             	rex.W jmp *%rax
   140001db6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001dbd:	00 00 00 
   140001dc0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001dc4:	0f 85 57 ff ff ff    	jne    140001d21 <_gnu_exception_handler+0x21>
   140001dca:	eb c1                	jmp    140001d8d <_gnu_exception_handler+0x8d>
   140001dcc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001dd0:	31 c0                	xor    %eax,%eax
   140001dd2:	48 83 c4 20          	add    $0x20,%rsp
   140001dd6:	5b                   	pop    %rbx
   140001dd7:	c3                   	ret
   140001dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001ddf:	00 
   140001de0:	31 d2                	xor    %edx,%edx
   140001de2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001de7:	e8 e4 0a 00 00       	call   1400028d0 <signal>
   140001dec:	48 83 f8 01          	cmp    $0x1,%rax
   140001df0:	0f 84 89 00 00 00    	je     140001e7f <_gnu_exception_handler+0x17f>
   140001df6:	48 85 c0             	test   %rax,%rax
   140001df9:	74 a4                	je     140001d9f <_gnu_exception_handler+0x9f>
   140001dfb:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e00:	ff d0                	call   *%rax
   140001e02:	eb 89                	jmp    140001d8d <_gnu_exception_handler+0x8d>
   140001e04:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e08:	31 d2                	xor    %edx,%edx
   140001e0a:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e0f:	e8 bc 0a 00 00       	call   1400028d0 <signal>
   140001e14:	48 83 f8 01          	cmp    $0x1,%rax
   140001e18:	75 dc                	jne    140001df6 <_gnu_exception_handler+0xf6>
   140001e1a:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e1f:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e24:	e8 a7 0a 00 00       	call   1400028d0 <signal>
   140001e29:	e9 5f ff ff ff       	jmp    140001d8d <_gnu_exception_handler+0x8d>
   140001e2e:	66 90                	xchg   %ax,%ax
   140001e30:	31 d2                	xor    %edx,%edx
   140001e32:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e37:	e8 94 0a 00 00       	call   1400028d0 <signal>
   140001e3c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e40:	74 29                	je     140001e6b <_gnu_exception_handler+0x16b>
   140001e42:	48 85 c0             	test   %rax,%rax
   140001e45:	0f 84 54 ff ff ff    	je     140001d9f <_gnu_exception_handler+0x9f>
   140001e4b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e50:	ff d0                	call   *%rax
   140001e52:	e9 36 ff ff ff       	jmp    140001d8d <_gnu_exception_handler+0x8d>
   140001e57:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e5c:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e61:	e8 6a 0a 00 00       	call   1400028d0 <signal>
   140001e66:	e9 22 ff ff ff       	jmp    140001d8d <_gnu_exception_handler+0x8d>
   140001e6b:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e70:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e75:	e8 56 0a 00 00       	call   1400028d0 <signal>
   140001e7a:	e9 0e ff ff ff       	jmp    140001d8d <_gnu_exception_handler+0x8d>
   140001e7f:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e84:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e89:	e8 42 0a 00 00       	call   1400028d0 <signal>
   140001e8e:	e8 cd f8 ff ff       	call   140001760 <_fpreset>
   140001e93:	e9 f5 fe ff ff       	jmp    140001d8d <_gnu_exception_handler+0x8d>
   140001e98:	90                   	nop
   140001e99:	90                   	nop
   140001e9a:	90                   	nop
   140001e9b:	90                   	nop
   140001e9c:	90                   	nop
   140001e9d:	90                   	nop
   140001e9e:	90                   	nop
   140001e9f:	90                   	nop

0000000140001ea0 <__mingwthr_run_key_dtors.part.0>:
   140001ea0:	41 54                	push   %r12
   140001ea2:	55                   	push   %rbp
   140001ea3:	57                   	push   %rdi
   140001ea4:	56                   	push   %rsi
   140001ea5:	53                   	push   %rbx
   140001ea6:	48 83 ec 20          	sub    $0x20,%rsp
   140001eaa:	4c 8d 25 4f 52 00 00 	lea    0x524f(%rip),%r12        # 140007100 <__mingwthr_cs>
   140001eb1:	4c 89 e1             	mov    %r12,%rcx
   140001eb4:	ff 15 0a 64 00 00    	call   *0x640a(%rip)        # 1400082c4 <__imp_EnterCriticalSection>
   140001eba:	48 8b 1d 1f 52 00 00 	mov    0x521f(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001ec1:	48 85 db             	test   %rbx,%rbx
   140001ec4:	74 36                	je     140001efc <__mingwthr_run_key_dtors.part.0+0x5c>
   140001ec6:	48 8b 2d 27 64 00 00 	mov    0x6427(%rip),%rbp        # 1400082f4 <__imp_TlsGetValue>
   140001ecd:	48 8b 3d f8 63 00 00 	mov    0x63f8(%rip),%rdi        # 1400082cc <__imp_GetLastError>
   140001ed4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ed8:	8b 0b                	mov    (%rbx),%ecx
   140001eda:	ff d5                	call   *%rbp
   140001edc:	48 89 c6             	mov    %rax,%rsi
   140001edf:	ff d7                	call   *%rdi
   140001ee1:	85 c0                	test   %eax,%eax
   140001ee3:	75 0e                	jne    140001ef3 <__mingwthr_run_key_dtors.part.0+0x53>
   140001ee5:	48 85 f6             	test   %rsi,%rsi
   140001ee8:	74 09                	je     140001ef3 <__mingwthr_run_key_dtors.part.0+0x53>
   140001eea:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001eee:	48 89 f1             	mov    %rsi,%rcx
   140001ef1:	ff d0                	call   *%rax
   140001ef3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001ef7:	48 85 db             	test   %rbx,%rbx
   140001efa:	75 dc                	jne    140001ed8 <__mingwthr_run_key_dtors.part.0+0x38>
   140001efc:	4c 89 e1             	mov    %r12,%rcx
   140001eff:	48 83 c4 20          	add    $0x20,%rsp
   140001f03:	5b                   	pop    %rbx
   140001f04:	5e                   	pop    %rsi
   140001f05:	5f                   	pop    %rdi
   140001f06:	5d                   	pop    %rbp
   140001f07:	41 5c                	pop    %r12
   140001f09:	48 ff 25 cc 63 00 00 	rex.W jmp *0x63cc(%rip)        # 1400082dc <__imp_LeaveCriticalSection>

0000000140001f10 <___w64_mingwthr_add_key_dtor>:
   140001f10:	57                   	push   %rdi
   140001f11:	56                   	push   %rsi
   140001f12:	53                   	push   %rbx
   140001f13:	48 83 ec 20          	sub    $0x20,%rsp
   140001f17:	8b 05 cb 51 00 00    	mov    0x51cb(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001f1d:	85 c0                	test   %eax,%eax
   140001f1f:	89 cf                	mov    %ecx,%edi
   140001f21:	48 89 d6             	mov    %rdx,%rsi
   140001f24:	75 0a                	jne    140001f30 <___w64_mingwthr_add_key_dtor+0x20>
   140001f26:	31 c0                	xor    %eax,%eax
   140001f28:	48 83 c4 20          	add    $0x20,%rsp
   140001f2c:	5b                   	pop    %rbx
   140001f2d:	5e                   	pop    %rsi
   140001f2e:	5f                   	pop    %rdi
   140001f2f:	c3                   	ret
   140001f30:	ba 18 00 00 00       	mov    $0x18,%edx
   140001f35:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001f3a:	e8 c9 09 00 00       	call   140002908 <calloc>
   140001f3f:	48 85 c0             	test   %rax,%rax
   140001f42:	48 89 c3             	mov    %rax,%rbx
   140001f45:	74 33                	je     140001f7a <___w64_mingwthr_add_key_dtor+0x6a>
   140001f47:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140001f4b:	48 8d 35 ae 51 00 00 	lea    0x51ae(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001f52:	89 38                	mov    %edi,(%rax)
   140001f54:	48 89 f1             	mov    %rsi,%rcx
   140001f57:	ff 15 67 63 00 00    	call   *0x6367(%rip)        # 1400082c4 <__imp_EnterCriticalSection>
   140001f5d:	48 8b 05 7c 51 00 00 	mov    0x517c(%rip),%rax        # 1400070e0 <key_dtor_list>
   140001f64:	48 89 f1             	mov    %rsi,%rcx
   140001f67:	48 89 1d 72 51 00 00 	mov    %rbx,0x5172(%rip)        # 1400070e0 <key_dtor_list>
   140001f6e:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140001f72:	ff 15 64 63 00 00    	call   *0x6364(%rip)        # 1400082dc <__imp_LeaveCriticalSection>
   140001f78:	eb ac                	jmp    140001f26 <___w64_mingwthr_add_key_dtor+0x16>
   140001f7a:	83 c8 ff             	or     $0xffffffff,%eax
   140001f7d:	eb a9                	jmp    140001f28 <___w64_mingwthr_add_key_dtor+0x18>
   140001f7f:	90                   	nop

0000000140001f80 <___w64_mingwthr_remove_key_dtor>:
   140001f80:	56                   	push   %rsi
   140001f81:	53                   	push   %rbx
   140001f82:	48 83 ec 28          	sub    $0x28,%rsp
   140001f86:	8b 05 5c 51 00 00    	mov    0x515c(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001f8c:	85 c0                	test   %eax,%eax
   140001f8e:	89 cb                	mov    %ecx,%ebx
   140001f90:	75 0e                	jne    140001fa0 <___w64_mingwthr_remove_key_dtor+0x20>
   140001f92:	31 c0                	xor    %eax,%eax
   140001f94:	48 83 c4 28          	add    $0x28,%rsp
   140001f98:	5b                   	pop    %rbx
   140001f99:	5e                   	pop    %rsi
   140001f9a:	c3                   	ret
   140001f9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001fa0:	48 8d 35 59 51 00 00 	lea    0x5159(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001fa7:	48 89 f1             	mov    %rsi,%rcx
   140001faa:	ff 15 14 63 00 00    	call   *0x6314(%rip)        # 1400082c4 <__imp_EnterCriticalSection>
   140001fb0:	48 8b 0d 29 51 00 00 	mov    0x5129(%rip),%rcx        # 1400070e0 <key_dtor_list>
   140001fb7:	48 85 c9             	test   %rcx,%rcx
   140001fba:	74 27                	je     140001fe3 <___w64_mingwthr_remove_key_dtor+0x63>
   140001fbc:	31 d2                	xor    %edx,%edx
   140001fbe:	eb 0b                	jmp    140001fcb <___w64_mingwthr_remove_key_dtor+0x4b>
   140001fc0:	48 85 c0             	test   %rax,%rax
   140001fc3:	48 89 ca             	mov    %rcx,%rdx
   140001fc6:	74 1b                	je     140001fe3 <___w64_mingwthr_remove_key_dtor+0x63>
   140001fc8:	48 89 c1             	mov    %rax,%rcx
   140001fcb:	8b 01                	mov    (%rcx),%eax
   140001fcd:	39 d8                	cmp    %ebx,%eax
   140001fcf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140001fd3:	75 eb                	jne    140001fc0 <___w64_mingwthr_remove_key_dtor+0x40>
   140001fd5:	48 85 d2             	test   %rdx,%rdx
   140001fd8:	74 1e                	je     140001ff8 <___w64_mingwthr_remove_key_dtor+0x78>
   140001fda:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140001fde:	e8 2d 09 00 00       	call   140002910 <free>
   140001fe3:	48 89 f1             	mov    %rsi,%rcx
   140001fe6:	ff 15 f0 62 00 00    	call   *0x62f0(%rip)        # 1400082dc <__imp_LeaveCriticalSection>
   140001fec:	31 c0                	xor    %eax,%eax
   140001fee:	48 83 c4 28          	add    $0x28,%rsp
   140001ff2:	5b                   	pop    %rbx
   140001ff3:	5e                   	pop    %rsi
   140001ff4:	c3                   	ret
   140001ff5:	0f 1f 00             	nopl   (%rax)
   140001ff8:	48 89 05 e1 50 00 00 	mov    %rax,0x50e1(%rip)        # 1400070e0 <key_dtor_list>
   140001fff:	eb dd                	jmp    140001fde <___w64_mingwthr_remove_key_dtor+0x5e>
   140002001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002008:	00 00 00 00 
   14000200c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002010 <__mingw_TLScallback>:
   140002010:	53                   	push   %rbx
   140002011:	48 83 ec 20          	sub    $0x20,%rsp
   140002015:	83 fa 02             	cmp    $0x2,%edx
   140002018:	0f 84 b2 00 00 00    	je     1400020d0 <__mingw_TLScallback+0xc0>
   14000201e:	77 30                	ja     140002050 <__mingw_TLScallback+0x40>
   140002020:	85 d2                	test   %edx,%edx
   140002022:	74 4c                	je     140002070 <__mingw_TLScallback+0x60>
   140002024:	8b 05 be 50 00 00    	mov    0x50be(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000202a:	85 c0                	test   %eax,%eax
   14000202c:	0f 84 be 00 00 00    	je     1400020f0 <__mingw_TLScallback+0xe0>
   140002032:	c7 05 ac 50 00 00 01 	movl   $0x1,0x50ac(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002039:	00 00 00 
   14000203c:	b8 01 00 00 00       	mov    $0x1,%eax
   140002041:	48 83 c4 20          	add    $0x20,%rsp
   140002045:	5b                   	pop    %rbx
   140002046:	c3                   	ret
   140002047:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000204e:	00 00 
   140002050:	83 fa 03             	cmp    $0x3,%edx
   140002053:	75 e7                	jne    14000203c <__mingw_TLScallback+0x2c>
   140002055:	8b 05 8d 50 00 00    	mov    0x508d(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000205b:	85 c0                	test   %eax,%eax
   14000205d:	74 dd                	je     14000203c <__mingw_TLScallback+0x2c>
   14000205f:	e8 3c fe ff ff       	call   140001ea0 <__mingwthr_run_key_dtors.part.0>
   140002064:	eb d6                	jmp    14000203c <__mingw_TLScallback+0x2c>
   140002066:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000206d:	00 00 00 
   140002070:	8b 05 72 50 00 00    	mov    0x5072(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002076:	85 c0                	test   %eax,%eax
   140002078:	75 66                	jne    1400020e0 <__mingw_TLScallback+0xd0>
   14000207a:	8b 05 68 50 00 00    	mov    0x5068(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002080:	83 f8 01             	cmp    $0x1,%eax
   140002083:	75 b7                	jne    14000203c <__mingw_TLScallback+0x2c>
   140002085:	48 8b 1d 54 50 00 00 	mov    0x5054(%rip),%rbx        # 1400070e0 <key_dtor_list>
   14000208c:	48 85 db             	test   %rbx,%rbx
   14000208f:	74 18                	je     1400020a9 <__mingw_TLScallback+0x99>
   140002091:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002098:	48 89 d9             	mov    %rbx,%rcx
   14000209b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000209f:	e8 6c 08 00 00       	call   140002910 <free>
   1400020a4:	48 85 db             	test   %rbx,%rbx
   1400020a7:	75 ef                	jne    140002098 <__mingw_TLScallback+0x88>
   1400020a9:	48 8d 0d 50 50 00 00 	lea    0x5050(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400020b0:	48 c7 05 25 50 00 00 	movq   $0x0,0x5025(%rip)        # 1400070e0 <key_dtor_list>
   1400020b7:	00 00 00 00 
   1400020bb:	c7 05 23 50 00 00 00 	movl   $0x0,0x5023(%rip)        # 1400070e8 <__mingwthr_cs_init>
   1400020c2:	00 00 00 
   1400020c5:	ff 15 f1 61 00 00    	call   *0x61f1(%rip)        # 1400082bc <__IAT_start__>
   1400020cb:	e9 6c ff ff ff       	jmp    14000203c <__mingw_TLScallback+0x2c>
   1400020d0:	e8 8b f6 ff ff       	call   140001760 <_fpreset>
   1400020d5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400020da:	48 83 c4 20          	add    $0x20,%rsp
   1400020de:	5b                   	pop    %rbx
   1400020df:	c3                   	ret
   1400020e0:	e8 bb fd ff ff       	call   140001ea0 <__mingwthr_run_key_dtors.part.0>
   1400020e5:	eb 93                	jmp    14000207a <__mingw_TLScallback+0x6a>
   1400020e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400020ee:	00 00 
   1400020f0:	48 8d 0d 09 50 00 00 	lea    0x5009(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400020f7:	ff 15 d7 61 00 00    	call   *0x61d7(%rip)        # 1400082d4 <__imp_InitializeCriticalSection>
   1400020fd:	e9 30 ff ff ff       	jmp    140002032 <__mingw_TLScallback+0x22>
   140002102:	90                   	nop
   140002103:	90                   	nop
   140002104:	90                   	nop
   140002105:	90                   	nop
   140002106:	90                   	nop
   140002107:	90                   	nop
   140002108:	90                   	nop
   140002109:	90                   	nop
   14000210a:	90                   	nop
   14000210b:	90                   	nop
   14000210c:	90                   	nop
   14000210d:	90                   	nop
   14000210e:	90                   	nop
   14000210f:	90                   	nop

0000000140002110 <exit>:
   140002110:	48 83 ec 28          	sub    $0x28,%rsp
   140002114:	48 8b 05 15 23 00 00 	mov    0x2315(%rip),%rax        # 140004430 <.refptr.__imp_exit>
   14000211b:	ff 10                	call   *(%rax)
   14000211d:	90                   	nop
   14000211e:	66 90                	xchg   %ax,%ax

0000000140002120 <_exit>:
   140002120:	48 83 ec 28          	sub    $0x28,%rsp
   140002124:	48 8b 05 e5 22 00 00 	mov    0x22e5(%rip),%rax        # 140004410 <.refptr.__imp__exit>
   14000212b:	ff 10                	call   *(%rax)
   14000212d:	90                   	nop
   14000212e:	90                   	nop
   14000212f:	90                   	nop

0000000140002130 <_ValidateImageBase>:
   140002130:	31 c0                	xor    %eax,%eax
   140002132:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002137:	75 0f                	jne    140002148 <_ValidateImageBase+0x18>
   140002139:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000213d:	48 01 d1             	add    %rdx,%rcx
   140002140:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002146:	74 08                	je     140002150 <_ValidateImageBase+0x20>
   140002148:	c3                   	ret
   140002149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002150:	31 c0                	xor    %eax,%eax
   140002152:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002158:	0f 94 c0             	sete   %al
   14000215b:	c3                   	ret
   14000215c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002160 <_FindPESection>:
   140002160:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002164:	48 01 c1             	add    %rax,%rcx
   140002167:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   14000216c:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140002170:	66 45 85 c0          	test   %r8w,%r8w
   140002174:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002179:	74 32                	je     1400021ad <_FindPESection+0x4d>
   14000217b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   14000217f:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002183:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000218f:	00 
   140002190:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002194:	4c 39 c2             	cmp    %r8,%rdx
   140002197:	4c 89 c1             	mov    %r8,%rcx
   14000219a:	72 08                	jb     1400021a4 <_FindPESection+0x44>
   14000219c:	03 48 08             	add    0x8(%rax),%ecx
   14000219f:	48 39 ca             	cmp    %rcx,%rdx
   1400021a2:	72 0b                	jb     1400021af <_FindPESection+0x4f>
   1400021a4:	48 83 c0 28          	add    $0x28,%rax
   1400021a8:	4c 39 c8             	cmp    %r9,%rax
   1400021ab:	75 e3                	jne    140002190 <_FindPESection+0x30>
   1400021ad:	31 c0                	xor    %eax,%eax
   1400021af:	c3                   	ret

00000001400021b0 <_FindPESectionByName>:
   1400021b0:	57                   	push   %rdi
   1400021b1:	56                   	push   %rsi
   1400021b2:	53                   	push   %rbx
   1400021b3:	48 83 ec 20          	sub    $0x20,%rsp
   1400021b7:	48 89 ce             	mov    %rcx,%rsi
   1400021ba:	e8 61 06 00 00       	call   140002820 <strlen>
   1400021bf:	48 83 f8 08          	cmp    $0x8,%rax
   1400021c3:	77 7b                	ja     140002240 <_FindPESectionByName+0x90>
   1400021c5:	48 8b 15 24 22 00 00 	mov    0x2224(%rip),%rdx        # 1400043f0 <.refptr.__image_base__>
   1400021cc:	31 db                	xor    %ebx,%ebx
   1400021ce:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400021d3:	75 59                	jne    14000222e <_FindPESectionByName+0x7e>
   1400021d5:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   1400021d9:	48 01 d0             	add    %rdx,%rax
   1400021dc:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400021e2:	75 4a                	jne    14000222e <_FindPESectionByName+0x7e>
   1400021e4:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400021ea:	75 42                	jne    14000222e <_FindPESectionByName+0x7e>
   1400021ec:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   1400021f0:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   1400021f5:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   1400021f9:	66 85 d2             	test   %dx,%dx
   1400021fc:	74 42                	je     140002240 <_FindPESectionByName+0x90>
   1400021fe:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140002201:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002205:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   14000220a:	eb 0d                	jmp    140002219 <_FindPESectionByName+0x69>
   14000220c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002210:	48 83 c3 28          	add    $0x28,%rbx
   140002214:	48 39 fb             	cmp    %rdi,%rbx
   140002217:	74 27                	je     140002240 <_FindPESectionByName+0x90>
   140002219:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000221f:	48 89 f2             	mov    %rsi,%rdx
   140002222:	48 89 d9             	mov    %rbx,%rcx
   140002225:	e8 fe 05 00 00       	call   140002828 <strncmp>
   14000222a:	85 c0                	test   %eax,%eax
   14000222c:	75 e2                	jne    140002210 <_FindPESectionByName+0x60>
   14000222e:	48 89 d8             	mov    %rbx,%rax
   140002231:	48 83 c4 20          	add    $0x20,%rsp
   140002235:	5b                   	pop    %rbx
   140002236:	5e                   	pop    %rsi
   140002237:	5f                   	pop    %rdi
   140002238:	c3                   	ret
   140002239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002240:	31 db                	xor    %ebx,%ebx
   140002242:	48 89 d8             	mov    %rbx,%rax
   140002245:	48 83 c4 20          	add    $0x20,%rsp
   140002249:	5b                   	pop    %rbx
   14000224a:	5e                   	pop    %rsi
   14000224b:	5f                   	pop    %rdi
   14000224c:	c3                   	ret
   14000224d:	0f 1f 00             	nopl   (%rax)

0000000140002250 <__mingw_GetSectionForAddress>:
   140002250:	48 8b 15 99 21 00 00 	mov    0x2199(%rip),%rdx        # 1400043f0 <.refptr.__image_base__>
   140002257:	31 c0                	xor    %eax,%eax
   140002259:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000225e:	75 10                	jne    140002270 <__mingw_GetSectionForAddress+0x20>
   140002260:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002264:	49 01 d0             	add    %rdx,%r8
   140002267:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000226e:	74 08                	je     140002278 <__mingw_GetSectionForAddress+0x28>
   140002270:	c3                   	ret
   140002271:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002278:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000227f:	75 ef                	jne    140002270 <__mingw_GetSectionForAddress+0x20>
   140002281:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002286:	48 29 d1             	sub    %rdx,%rcx
   140002289:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   14000228e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002293:	66 45 85 c0          	test   %r8w,%r8w
   140002297:	74 34                	je     1400022cd <__mingw_GetSectionForAddress+0x7d>
   140002299:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   14000229d:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400022a1:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400022a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400022ad:	00 00 00 
   1400022b0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400022b4:	4c 39 c1             	cmp    %r8,%rcx
   1400022b7:	4c 89 c2             	mov    %r8,%rdx
   1400022ba:	72 08                	jb     1400022c4 <__mingw_GetSectionForAddress+0x74>
   1400022bc:	03 50 08             	add    0x8(%rax),%edx
   1400022bf:	48 39 d1             	cmp    %rdx,%rcx
   1400022c2:	72 ac                	jb     140002270 <__mingw_GetSectionForAddress+0x20>
   1400022c4:	48 83 c0 28          	add    $0x28,%rax
   1400022c8:	4c 39 c8             	cmp    %r9,%rax
   1400022cb:	75 e3                	jne    1400022b0 <__mingw_GetSectionForAddress+0x60>
   1400022cd:	31 c0                	xor    %eax,%eax
   1400022cf:	c3                   	ret

00000001400022d0 <__mingw_GetSectionCount>:
   1400022d0:	48 8b 05 19 21 00 00 	mov    0x2119(%rip),%rax        # 1400043f0 <.refptr.__image_base__>
   1400022d7:	31 c9                	xor    %ecx,%ecx
   1400022d9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400022de:	75 0f                	jne    1400022ef <__mingw_GetSectionCount+0x1f>
   1400022e0:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400022e4:	48 01 d0             	add    %rdx,%rax
   1400022e7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400022ed:	74 09                	je     1400022f8 <__mingw_GetSectionCount+0x28>
   1400022ef:	89 c8                	mov    %ecx,%eax
   1400022f1:	c3                   	ret
   1400022f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400022f8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400022fe:	75 ef                	jne    1400022ef <__mingw_GetSectionCount+0x1f>
   140002300:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140002304:	89 c8                	mov    %ecx,%eax
   140002306:	c3                   	ret
   140002307:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000230e:	00 00 

0000000140002310 <_FindPESectionExec>:
   140002310:	4c 8b 05 d9 20 00 00 	mov    0x20d9(%rip),%r8        # 1400043f0 <.refptr.__image_base__>
   140002317:	31 c0                	xor    %eax,%eax
   140002319:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000231f:	75 0f                	jne    140002330 <_FindPESectionExec+0x20>
   140002321:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002325:	4c 01 c2             	add    %r8,%rdx
   140002328:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000232e:	74 08                	je     140002338 <_FindPESectionExec+0x28>
   140002330:	c3                   	ret
   140002331:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002338:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000233e:	75 f0                	jne    140002330 <_FindPESectionExec+0x20>
   140002340:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140002345:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002349:	66 45 85 c0          	test   %r8w,%r8w
   14000234d:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002352:	74 2c                	je     140002380 <_FindPESectionExec+0x70>
   140002354:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140002358:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000235c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002361:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002368:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   14000236c:	74 09                	je     140002377 <_FindPESectionExec+0x67>
   14000236e:	48 85 c9             	test   %rcx,%rcx
   140002371:	74 bd                	je     140002330 <_FindPESectionExec+0x20>
   140002373:	48 83 e9 01          	sub    $0x1,%rcx
   140002377:	48 83 c0 28          	add    $0x28,%rax
   14000237b:	48 39 d0             	cmp    %rdx,%rax
   14000237e:	75 e8                	jne    140002368 <_FindPESectionExec+0x58>
   140002380:	31 c0                	xor    %eax,%eax
   140002382:	c3                   	ret
   140002383:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000238a:	00 00 00 00 
   14000238e:	66 90                	xchg   %ax,%ax

0000000140002390 <_GetPEImageBase>:
   140002390:	48 8b 05 59 20 00 00 	mov    0x2059(%rip),%rax        # 1400043f0 <.refptr.__image_base__>
   140002397:	31 d2                	xor    %edx,%edx
   140002399:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000239e:	75 0f                	jne    1400023af <_GetPEImageBase+0x1f>
   1400023a0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   1400023a4:	48 01 c1             	add    %rax,%rcx
   1400023a7:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400023ad:	74 09                	je     1400023b8 <_GetPEImageBase+0x28>
   1400023af:	48 89 d0             	mov    %rdx,%rax
   1400023b2:	c3                   	ret
   1400023b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400023b8:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400023be:	48 0f 44 d0          	cmove  %rax,%rdx
   1400023c2:	48 89 d0             	mov    %rdx,%rax
   1400023c5:	c3                   	ret
   1400023c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400023cd:	00 00 00 

00000001400023d0 <_IsNonwritableInCurrentImage>:
   1400023d0:	48 8b 15 19 20 00 00 	mov    0x2019(%rip),%rdx        # 1400043f0 <.refptr.__image_base__>
   1400023d7:	31 c0                	xor    %eax,%eax
   1400023d9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400023de:	75 10                	jne    1400023f0 <_IsNonwritableInCurrentImage+0x20>
   1400023e0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400023e4:	49 01 d0             	add    %rdx,%r8
   1400023e7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400023ee:	74 08                	je     1400023f8 <_IsNonwritableInCurrentImage+0x28>
   1400023f0:	c3                   	ret
   1400023f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400023f8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400023ff:	75 ef                	jne    1400023f0 <_IsNonwritableInCurrentImage+0x20>
   140002401:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140002406:	48 29 d1             	sub    %rdx,%rcx
   140002409:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   14000240e:	66 45 85 c9          	test   %r9w,%r9w
   140002412:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002417:	74 d7                	je     1400023f0 <_IsNonwritableInCurrentImage+0x20>
   140002419:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   14000241d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002421:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002426:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000242d:	00 00 00 
   140002430:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002434:	4c 39 c1             	cmp    %r8,%rcx
   140002437:	4c 89 c0             	mov    %r8,%rax
   14000243a:	72 08                	jb     140002444 <_IsNonwritableInCurrentImage+0x74>
   14000243c:	03 42 08             	add    0x8(%rdx),%eax
   14000243f:	48 39 c1             	cmp    %rax,%rcx
   140002442:	72 0c                	jb     140002450 <_IsNonwritableInCurrentImage+0x80>
   140002444:	48 83 c2 28          	add    $0x28,%rdx
   140002448:	49 39 d1             	cmp    %rdx,%r9
   14000244b:	75 e3                	jne    140002430 <_IsNonwritableInCurrentImage+0x60>
   14000244d:	31 c0                	xor    %eax,%eax
   14000244f:	c3                   	ret
   140002450:	8b 42 24             	mov    0x24(%rdx),%eax
   140002453:	f7 d0                	not    %eax
   140002455:	c1 e8 1f             	shr    $0x1f,%eax
   140002458:	c3                   	ret
   140002459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002460 <__mingw_enum_import_library_names>:
   140002460:	4c 8b 1d 89 1f 00 00 	mov    0x1f89(%rip),%r11        # 1400043f0 <.refptr.__image_base__>
   140002467:	45 31 c9             	xor    %r9d,%r9d
   14000246a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002470:	75 10                	jne    140002482 <__mingw_enum_import_library_names+0x22>
   140002472:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002476:	4d 01 d8             	add    %r11,%r8
   140002479:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002480:	74 0e                	je     140002490 <__mingw_enum_import_library_names+0x30>
   140002482:	4c 89 c8             	mov    %r9,%rax
   140002485:	c3                   	ret
   140002486:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000248d:	00 00 00 
   140002490:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002497:	75 e9                	jne    140002482 <__mingw_enum_import_library_names+0x22>
   140002499:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400024a0:	85 c0                	test   %eax,%eax
   1400024a2:	74 de                	je     140002482 <__mingw_enum_import_library_names+0x22>
   1400024a4:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   1400024a9:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024ae:	66 45 85 d2          	test   %r10w,%r10w
   1400024b2:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400024b7:	74 c9                	je     140002482 <__mingw_enum_import_library_names+0x22>
   1400024b9:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   1400024bd:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400024c1:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400024c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024cd:	00 00 00 
   1400024d0:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400024d4:	4c 39 c8             	cmp    %r9,%rax
   1400024d7:	4d 89 c8             	mov    %r9,%r8
   1400024da:	72 09                	jb     1400024e5 <__mingw_enum_import_library_names+0x85>
   1400024dc:	44 03 42 08          	add    0x8(%rdx),%r8d
   1400024e0:	4c 39 c0             	cmp    %r8,%rax
   1400024e3:	72 13                	jb     1400024f8 <__mingw_enum_import_library_names+0x98>
   1400024e5:	48 83 c2 28          	add    $0x28,%rdx
   1400024e9:	4c 39 d2             	cmp    %r10,%rdx
   1400024ec:	75 e2                	jne    1400024d0 <__mingw_enum_import_library_names+0x70>
   1400024ee:	45 31 c9             	xor    %r9d,%r9d
   1400024f1:	4c 89 c8             	mov    %r9,%rax
   1400024f4:	c3                   	ret
   1400024f5:	0f 1f 00             	nopl   (%rax)
   1400024f8:	4c 01 d8             	add    %r11,%rax
   1400024fb:	eb 0a                	jmp    140002507 <__mingw_enum_import_library_names+0xa7>
   1400024fd:	0f 1f 00             	nopl   (%rax)
   140002500:	83 e9 01             	sub    $0x1,%ecx
   140002503:	48 83 c0 14          	add    $0x14,%rax
   140002507:	44 8b 40 04          	mov    0x4(%rax),%r8d
   14000250b:	45 85 c0             	test   %r8d,%r8d
   14000250e:	75 07                	jne    140002517 <__mingw_enum_import_library_names+0xb7>
   140002510:	8b 50 0c             	mov    0xc(%rax),%edx
   140002513:	85 d2                	test   %edx,%edx
   140002515:	74 d7                	je     1400024ee <__mingw_enum_import_library_names+0x8e>
   140002517:	85 c9                	test   %ecx,%ecx
   140002519:	7f e5                	jg     140002500 <__mingw_enum_import_library_names+0xa0>
   14000251b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   14000251f:	4d 01 d9             	add    %r11,%r9
   140002522:	4c 89 c8             	mov    %r9,%rax
   140002525:	c3                   	ret
   140002526:	90                   	nop
   140002527:	90                   	nop
   140002528:	90                   	nop
   140002529:	90                   	nop
   14000252a:	90                   	nop
   14000252b:	90                   	nop
   14000252c:	90                   	nop
   14000252d:	90                   	nop
   14000252e:	90                   	nop
   14000252f:	90                   	nop

0000000140002530 <___chkstk_ms>:
   140002530:	51                   	push   %rcx
   140002531:	50                   	push   %rax
   140002532:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002538:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000253d:	72 19                	jb     140002558 <___chkstk_ms+0x28>
   14000253f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002546:	48 83 09 00          	orq    $0x0,(%rcx)
   14000254a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002550:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002556:	77 e7                	ja     14000253f <___chkstk_ms+0xf>
   140002558:	48 29 c1             	sub    %rax,%rcx
   14000255b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000255f:	58                   	pop    %rax
   140002560:	59                   	pop    %rcx
   140002561:	c3                   	ret
   140002562:	90                   	nop
   140002563:	90                   	nop
   140002564:	90                   	nop
   140002565:	90                   	nop
   140002566:	90                   	nop
   140002567:	90                   	nop
   140002568:	90                   	nop
   140002569:	90                   	nop
   14000256a:	90                   	nop
   14000256b:	90                   	nop
   14000256c:	90                   	nop
   14000256d:	90                   	nop
   14000256e:	90                   	nop
   14000256f:	90                   	nop

0000000140002570 <vfprintf>:
   140002570:	48 83 ec 38          	sub    $0x38,%rsp
   140002574:	45 31 c9             	xor    %r9d,%r9d
   140002577:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
   14000257c:	49 89 d0             	mov    %rdx,%r8
   14000257f:	48 89 ca             	mov    %rcx,%rdx
   140002582:	31 c9                	xor    %ecx,%ecx
   140002584:	e8 bf 02 00 00       	call   140002848 <__stdio_common_vfprintf>
   140002589:	48 83 c4 38          	add    $0x38,%rsp
   14000258d:	c3                   	ret
   14000258e:	90                   	nop
   14000258f:	90                   	nop

0000000140002590 <fprintf>:
   140002590:	48 83 ec 48          	sub    $0x48,%rsp
   140002594:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   140002599:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000259e:	49 89 d0             	mov    %rdx,%r8
   1400025a1:	48 89 ca             	mov    %rcx,%rdx
   1400025a4:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400025a9:	31 c9                	xor    %ecx,%ecx
   1400025ab:	45 31 c9             	xor    %r9d,%r9d
   1400025ae:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400025b3:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   1400025b8:	e8 8b 02 00 00       	call   140002848 <__stdio_common_vfprintf>
   1400025bd:	48 83 c4 48          	add    $0x48,%rsp
   1400025c1:	c3                   	ret
   1400025c2:	90                   	nop
   1400025c3:	90                   	nop
   1400025c4:	90                   	nop
   1400025c5:	90                   	nop
   1400025c6:	90                   	nop
   1400025c7:	90                   	nop
   1400025c8:	90                   	nop
   1400025c9:	90                   	nop
   1400025ca:	90                   	nop
   1400025cb:	90                   	nop
   1400025cc:	90                   	nop
   1400025cd:	90                   	nop
   1400025ce:	90                   	nop
   1400025cf:	90                   	nop

00000001400025d0 <_get_output_format>:
   1400025d0:	31 c0                	xor    %eax,%eax
   1400025d2:	c3                   	ret
   1400025d3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400025da:	00 00 00 00 
   1400025de:	66 90                	xchg   %ax,%ax

00000001400025e0 <__getmainargs>:
   1400025e0:	41 54                	push   %r12
   1400025e2:	55                   	push   %rbp
   1400025e3:	57                   	push   %rdi
   1400025e4:	56                   	push   %rsi
   1400025e5:	53                   	push   %rbx
   1400025e6:	48 83 ec 20          	sub    $0x20,%rsp
   1400025ea:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   1400025ef:	44 89 cd             	mov    %r9d,%ebp
   1400025f2:	48 89 d6             	mov    %rdx,%rsi
   1400025f5:	4c 89 c3             	mov    %r8,%rbx
   1400025f8:	48 89 cf             	mov    %rcx,%rdi
   1400025fb:	e8 a0 02 00 00       	call   1400028a0 <_initialize_narrow_environment>
   140002600:	83 fd 01             	cmp    $0x1,%ebp
   140002603:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002608:	83 d9 ff             	sbb    $0xffffffff,%ecx
   14000260b:	e8 70 02 00 00       	call   140002880 <_configure_narrow_argv>
   140002610:	e8 4b 02 00 00       	call   140002860 <__p___argc>
   140002615:	8b 00                	mov    (%rax),%eax
   140002617:	89 07                	mov    %eax,(%rdi)
   140002619:	e8 4a 02 00 00       	call   140002868 <__p___argv>
   14000261e:	48 8b 00             	mov    (%rax),%rax
   140002621:	48 89 06             	mov    %rax,(%rsi)
   140002624:	e8 f7 02 00 00       	call   140002920 <__p__environ>
   140002629:	4d 85 e4             	test   %r12,%r12
   14000262c:	48 8b 00             	mov    (%rax),%rax
   14000262f:	48 89 03             	mov    %rax,(%rbx)
   140002632:	74 09                	je     14000263d <__getmainargs+0x5d>
   140002634:	41 8b 0c 24          	mov    (%r12),%ecx
   140002638:	e8 c3 02 00 00       	call   140002900 <_set_new_mode>
   14000263d:	31 c0                	xor    %eax,%eax
   14000263f:	48 83 c4 20          	add    $0x20,%rsp
   140002643:	5b                   	pop    %rbx
   140002644:	5e                   	pop    %rsi
   140002645:	5f                   	pop    %rdi
   140002646:	5d                   	pop    %rbp
   140002647:	41 5c                	pop    %r12
   140002649:	c3                   	ret
   14000264a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002650 <__wgetmainargs>:
   140002650:	41 54                	push   %r12
   140002652:	55                   	push   %rbp
   140002653:	57                   	push   %rdi
   140002654:	56                   	push   %rsi
   140002655:	53                   	push   %rbx
   140002656:	48 83 ec 20          	sub    $0x20,%rsp
   14000265a:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   14000265f:	44 89 cd             	mov    %r9d,%ebp
   140002662:	48 89 d6             	mov    %rdx,%rsi
   140002665:	4c 89 c3             	mov    %r8,%rbx
   140002668:	48 89 cf             	mov    %rcx,%rdi
   14000266b:	e8 38 02 00 00       	call   1400028a8 <_initialize_wide_environment>
   140002670:	83 fd 01             	cmp    $0x1,%ebp
   140002673:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002678:	83 d9 ff             	sbb    $0xffffffff,%ecx
   14000267b:	e8 08 02 00 00       	call   140002888 <_configure_wide_argv>
   140002680:	e8 db 01 00 00       	call   140002860 <__p___argc>
   140002685:	8b 00                	mov    (%rax),%eax
   140002687:	89 07                	mov    %eax,(%rdi)
   140002689:	e8 e2 01 00 00       	call   140002870 <__p___wargv>
   14000268e:	48 8b 00             	mov    (%rax),%rax
   140002691:	48 89 06             	mov    %rax,(%rsi)
   140002694:	e8 8f 02 00 00       	call   140002928 <__p__wenviron>
   140002699:	4d 85 e4             	test   %r12,%r12
   14000269c:	48 8b 00             	mov    (%rax),%rax
   14000269f:	48 89 03             	mov    %rax,(%rbx)
   1400026a2:	74 09                	je     1400026ad <__wgetmainargs+0x5d>
   1400026a4:	41 8b 0c 24          	mov    (%r12),%ecx
   1400026a8:	e8 53 02 00 00       	call   140002900 <_set_new_mode>
   1400026ad:	31 c0                	xor    %eax,%eax
   1400026af:	48 83 c4 20          	add    $0x20,%rsp
   1400026b3:	5b                   	pop    %rbx
   1400026b4:	5e                   	pop    %rsi
   1400026b5:	5f                   	pop    %rdi
   1400026b6:	5d                   	pop    %rbp
   1400026b7:	41 5c                	pop    %r12
   1400026b9:	c3                   	ret
   1400026ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400026c0 <_onexit>:
   1400026c0:	53                   	push   %rbx
   1400026c1:	48 83 ec 20          	sub    $0x20,%rsp
   1400026c5:	48 89 cb             	mov    %rcx,%rbx
   1400026c8:	e8 cb 01 00 00       	call   140002898 <_crt_atexit>
   1400026cd:	85 c0                	test   %eax,%eax
   1400026cf:	b8 00 00 00 00       	mov    $0x0,%eax
   1400026d4:	48 0f 44 c3          	cmove  %rbx,%rax
   1400026d8:	48 83 c4 20          	add    $0x20,%rsp
   1400026dc:	5b                   	pop    %rbx
   1400026dd:	c3                   	ret
   1400026de:	66 90                	xchg   %ax,%ax

00000001400026e0 <at_quick_exit>:
   1400026e0:	48 8b 05 99 1d 00 00 	mov    0x1d99(%rip),%rax        # 140004480 <.refptr.__mingw_module_is_dll>
   1400026e7:	80 38 00             	cmpb   $0x0,(%rax)
   1400026ea:	74 04                	je     1400026f0 <at_quick_exit+0x10>
   1400026ec:	31 c0                	xor    %eax,%eax
   1400026ee:	c3                   	ret
   1400026ef:	90                   	nop
   1400026f0:	e9 9b 01 00 00       	jmp    140002890 <_crt_at_quick_exit>
   1400026f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400026fc:	00 00 00 00 

0000000140002700 <_amsg_exit>:
   140002700:	53                   	push   %rbx
   140002701:	48 83 ec 20          	sub    $0x20,%rsp
   140002705:	89 cb                	mov    %ecx,%ebx
   140002707:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000270c:	e8 1f 01 00 00       	call   140002830 <__acrt_iob_func>
   140002711:	48 8d 15 38 1c 00 00 	lea    0x1c38(%rip),%rdx        # 140004350 <.rdata>
   140002718:	41 89 d8             	mov    %ebx,%r8d
   14000271b:	48 89 c1             	mov    %rax,%rcx
   14000271e:	e8 6d fe ff ff       	call   140002590 <fprintf>
   140002723:	48 8b 05 e6 1c 00 00 	mov    0x1ce6(%rip),%rax        # 140004410 <.refptr.__imp__exit>
   14000272a:	b9 ff 00 00 00       	mov    $0xff,%ecx
   14000272f:	ff 10                	call   *(%rax)
   140002731:	90                   	nop
   140002732:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002739:	00 00 00 00 
   14000273d:	0f 1f 00             	nopl   (%rax)

0000000140002740 <__ms_fwprintf>:
   140002740:	48 83 ec 48          	sub    $0x48,%rsp
   140002744:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   140002749:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000274e:	49 89 d0             	mov    %rdx,%r8
   140002751:	48 89 ca             	mov    %rcx,%rdx
   140002754:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002759:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000275e:	45 31 c9             	xor    %r9d,%r9d
   140002761:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002766:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   14000276b:	e8 e0 00 00 00       	call   140002850 <__stdio_common_vfwprintf>
   140002770:	48 83 c4 48          	add    $0x48,%rsp
   140002774:	c3                   	ret
   140002775:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000277c:	00 00 00 00 

0000000140002780 <tzset>:
   140002780:	48 83 ec 28          	sub    $0x28,%rsp
   140002784:	48 8b 05 95 1c 00 00 	mov    0x1c95(%rip),%rax        # 140004420 <.refptr.__imp__tzset>
   14000278b:	ff 10                	call   *(%rax)
   14000278d:	e8 7e 00 00 00       	call   140002810 <__tzname>
   140002792:	48 89 05 27 09 00 00 	mov    %rax,0x927(%rip)        # 1400030c0 <__imp_tzname>
   140002799:	e8 6a 00 00 00       	call   140002808 <__timezone>
   14000279e:	48 89 05 13 09 00 00 	mov    %rax,0x913(%rip)        # 1400030b8 <__imp_timezone>
   1400027a5:	e8 56 00 00 00       	call   140002800 <__daylight>
   1400027aa:	48 89 05 ff 08 00 00 	mov    %rax,0x8ff(%rip)        # 1400030b0 <__imp_daylight>
   1400027b1:	48 83 c4 28          	add    $0x28,%rsp
   1400027b5:	c3                   	ret
   1400027b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400027bd:	00 00 00 

00000001400027c0 <_tzset>:
   1400027c0:	48 83 ec 28          	sub    $0x28,%rsp
   1400027c4:	48 8b 05 55 1c 00 00 	mov    0x1c55(%rip),%rax        # 140004420 <.refptr.__imp__tzset>
   1400027cb:	ff 10                	call   *(%rax)
   1400027cd:	e8 3e 00 00 00       	call   140002810 <__tzname>
   1400027d2:	48 89 05 e7 08 00 00 	mov    %rax,0x8e7(%rip)        # 1400030c0 <__imp_tzname>
   1400027d9:	e8 2a 00 00 00       	call   140002808 <__timezone>
   1400027de:	48 89 05 d3 08 00 00 	mov    %rax,0x8d3(%rip)        # 1400030b8 <__imp_timezone>
   1400027e5:	e8 16 00 00 00       	call   140002800 <__daylight>
   1400027ea:	48 89 05 bf 08 00 00 	mov    %rax,0x8bf(%rip)        # 1400030b0 <__imp_daylight>
   1400027f1:	48 83 c4 28          	add    $0x28,%rsp
   1400027f5:	c3                   	ret
   1400027f6:	90                   	nop
   1400027f7:	90                   	nop
   1400027f8:	90                   	nop
   1400027f9:	90                   	nop
   1400027fa:	90                   	nop
   1400027fb:	90                   	nop
   1400027fc:	90                   	nop
   1400027fd:	90                   	nop
   1400027fe:	90                   	nop
   1400027ff:	90                   	nop

0000000140002800 <__daylight>:
   140002800:	ff 25 56 5c 00 00    	jmp    *0x5c56(%rip)        # 14000845c <__imp___daylight>
   140002806:	90                   	nop
   140002807:	90                   	nop

0000000140002808 <__timezone>:
   140002808:	ff 25 56 5c 00 00    	jmp    *0x5c56(%rip)        # 140008464 <__imp___timezone>
   14000280e:	90                   	nop
   14000280f:	90                   	nop

0000000140002810 <__tzname>:
   140002810:	ff 25 56 5c 00 00    	jmp    *0x5c56(%rip)        # 14000846c <__imp___tzname>
   140002816:	90                   	nop
   140002817:	90                   	nop

0000000140002818 <.text>:
   140002818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000281f:	00 

0000000140002820 <strlen>:
   140002820:	ff 25 1e 5c 00 00    	jmp    *0x5c1e(%rip)        # 140008444 <__imp_strlen>
   140002826:	90                   	nop
   140002827:	90                   	nop

0000000140002828 <strncmp>:
   140002828:	ff 25 1e 5c 00 00    	jmp    *0x5c1e(%rip)        # 14000844c <__imp_strncmp>
   14000282e:	90                   	nop
   14000282f:	90                   	nop

0000000140002830 <__acrt_iob_func>:
   140002830:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 14000840c <__imp___acrt_iob_func>
   140002836:	90                   	nop
   140002837:	90                   	nop

0000000140002838 <__p__commode>:
   140002838:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 140008414 <__imp___p__commode>
   14000283e:	90                   	nop
   14000283f:	90                   	nop

0000000140002840 <__p__fmode>:
   140002840:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 14000841c <__imp___p__fmode>
   140002846:	90                   	nop
   140002847:	90                   	nop

0000000140002848 <__stdio_common_vfprintf>:
   140002848:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 140008424 <__imp___stdio_common_vfprintf>
   14000284e:	90                   	nop
   14000284f:	90                   	nop

0000000140002850 <__stdio_common_vfwprintf>:
   140002850:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 14000842c <__imp___stdio_common_vfwprintf>
   140002856:	90                   	nop
   140002857:	90                   	nop

0000000140002858 <fwrite>:
   140002858:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 140008434 <__imp_fwrite>
   14000285e:	90                   	nop
   14000285f:	90                   	nop

0000000140002860 <__p___argc>:
   140002860:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 14000837c <__imp___p___argc>
   140002866:	90                   	nop
   140002867:	90                   	nop

0000000140002868 <__p___argv>:
   140002868:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 140008384 <__imp___p___argv>
   14000286e:	90                   	nop
   14000286f:	90                   	nop

0000000140002870 <__p___wargv>:
   140002870:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 14000838c <__imp___p___wargv>
   140002876:	90                   	nop
   140002877:	90                   	nop

0000000140002878 <_cexit>:
   140002878:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 140008394 <__imp__cexit>
   14000287e:	90                   	nop
   14000287f:	90                   	nop

0000000140002880 <_configure_narrow_argv>:
   140002880:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 14000839c <__imp__configure_narrow_argv>
   140002886:	90                   	nop
   140002887:	90                   	nop

0000000140002888 <_configure_wide_argv>:
   140002888:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 1400083a4 <__imp__configure_wide_argv>
   14000288e:	90                   	nop
   14000288f:	90                   	nop

0000000140002890 <_crt_at_quick_exit>:
   140002890:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 1400083ac <__imp__crt_at_quick_exit>
   140002896:	90                   	nop
   140002897:	90                   	nop

0000000140002898 <_crt_atexit>:
   140002898:	ff 25 16 5b 00 00    	jmp    *0x5b16(%rip)        # 1400083b4 <__imp__crt_atexit>
   14000289e:	90                   	nop
   14000289f:	90                   	nop

00000001400028a0 <_initialize_narrow_environment>:
   1400028a0:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083c4 <__imp__initialize_narrow_environment>
   1400028a6:	90                   	nop
   1400028a7:	90                   	nop

00000001400028a8 <_initialize_wide_environment>:
   1400028a8:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083cc <__imp__initialize_wide_environment>
   1400028ae:	90                   	nop
   1400028af:	90                   	nop

00000001400028b0 <_initterm>:
   1400028b0:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083d4 <__imp__initterm>
   1400028b6:	90                   	nop
   1400028b7:	90                   	nop

00000001400028b8 <__set_app_type>:
   1400028b8:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083dc <__imp___set_app_type>
   1400028be:	90                   	nop
   1400028bf:	90                   	nop

00000001400028c0 <_set_invalid_parameter_handler>:
   1400028c0:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083e4 <__imp__set_invalid_parameter_handler>
   1400028c6:	90                   	nop
   1400028c7:	90                   	nop

00000001400028c8 <abort>:
   1400028c8:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400083ec <__imp_abort>
   1400028ce:	90                   	nop
   1400028cf:	90                   	nop

00000001400028d0 <signal>:
   1400028d0:	ff 25 26 5b 00 00    	jmp    *0x5b26(%rip)        # 1400083fc <__imp_signal>
   1400028d6:	90                   	nop
   1400028d7:	90                   	nop
   1400028d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400028df:	00 

00000001400028e0 <__C_specific_handler>:
   1400028e0:	ff 25 7e 5a 00 00    	jmp    *0x5a7e(%rip)        # 140008364 <__imp___C_specific_handler>
   1400028e6:	90                   	nop
   1400028e7:	90                   	nop

00000001400028e8 <memcpy>:
   1400028e8:	ff 25 7e 5a 00 00    	jmp    *0x5a7e(%rip)        # 14000836c <__imp_memcpy>
   1400028ee:	90                   	nop
   1400028ef:	90                   	nop

00000001400028f0 <__setusermatherr>:
   1400028f0:	ff 25 5e 5a 00 00    	jmp    *0x5a5e(%rip)        # 140008354 <__imp___setusermatherr>
   1400028f6:	90                   	nop
   1400028f7:	90                   	nop
   1400028f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400028ff:	00 

0000000140002900 <_set_new_mode>:
   140002900:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 14000832c <__imp__set_new_mode>
   140002906:	90                   	nop
   140002907:	90                   	nop

0000000140002908 <calloc>:
   140002908:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 140008334 <__imp_calloc>
   14000290e:	90                   	nop
   14000290f:	90                   	nop

0000000140002910 <free>:
   140002910:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 14000833c <__imp_free>
   140002916:	90                   	nop
   140002917:	90                   	nop

0000000140002918 <malloc>:
   140002918:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 140008344 <__imp_malloc>
   14000291e:	90                   	nop
   14000291f:	90                   	nop

0000000140002920 <__p__environ>:
   140002920:	ff 25 ee 59 00 00    	jmp    *0x59ee(%rip)        # 140008314 <__imp___p__environ>
   140002926:	90                   	nop
   140002927:	90                   	nop

0000000140002928 <__p__wenviron>:
   140002928:	ff 25 ee 59 00 00    	jmp    *0x59ee(%rip)        # 14000831c <__imp___p__wenviron>
   14000292e:	90                   	nop
   14000292f:	90                   	nop

0000000140002930 <VirtualQuery>:
   140002930:	ff 25 ce 59 00 00    	jmp    *0x59ce(%rip)        # 140008304 <__imp_VirtualQuery>
   140002936:	90                   	nop
   140002937:	90                   	nop

0000000140002938 <VirtualProtect>:
   140002938:	ff 25 be 59 00 00    	jmp    *0x59be(%rip)        # 1400082fc <__imp_VirtualProtect>
   14000293e:	90                   	nop
   14000293f:	90                   	nop

0000000140002940 <TlsGetValue>:
   140002940:	ff 25 ae 59 00 00    	jmp    *0x59ae(%rip)        # 1400082f4 <__imp_TlsGetValue>
   140002946:	90                   	nop
   140002947:	90                   	nop

0000000140002948 <Sleep>:
   140002948:	ff 25 9e 59 00 00    	jmp    *0x599e(%rip)        # 1400082ec <__imp_Sleep>
   14000294e:	90                   	nop
   14000294f:	90                   	nop

0000000140002950 <SetUnhandledExceptionFilter>:
   140002950:	ff 25 8e 59 00 00    	jmp    *0x598e(%rip)        # 1400082e4 <__imp_SetUnhandledExceptionFilter>
   140002956:	90                   	nop
   140002957:	90                   	nop

0000000140002958 <LeaveCriticalSection>:
   140002958:	ff 25 7e 59 00 00    	jmp    *0x597e(%rip)        # 1400082dc <__imp_LeaveCriticalSection>
   14000295e:	90                   	nop
   14000295f:	90                   	nop

0000000140002960 <InitializeCriticalSection>:
   140002960:	ff 25 6e 59 00 00    	jmp    *0x596e(%rip)        # 1400082d4 <__imp_InitializeCriticalSection>
   140002966:	90                   	nop
   140002967:	90                   	nop

0000000140002968 <GetLastError>:
   140002968:	ff 25 5e 59 00 00    	jmp    *0x595e(%rip)        # 1400082cc <__imp_GetLastError>
   14000296e:	90                   	nop
   14000296f:	90                   	nop

0000000140002970 <EnterCriticalSection>:
   140002970:	ff 25 4e 59 00 00    	jmp    *0x594e(%rip)        # 1400082c4 <__imp_EnterCriticalSection>
   140002976:	90                   	nop
   140002977:	90                   	nop

0000000140002978 <DeleteCriticalSection>:
   140002978:	ff 25 3e 59 00 00    	jmp    *0x593e(%rip)        # 1400082bc <__IAT_start__>
   14000297e:	90                   	nop
   14000297f:	90                   	nop

0000000140002980 <register_frame_ctor>:
   140002980:	e9 ab ea ff ff       	jmp    140001430 <__gcc_register_frame>
   140002985:	90                   	nop
   140002986:	90                   	nop
   140002987:	90                   	nop
   140002988:	90                   	nop
   140002989:	90                   	nop
   14000298a:	90                   	nop
   14000298b:	90                   	nop
   14000298c:	90                   	nop
   14000298d:	90                   	nop
   14000298e:	90                   	nop
   14000298f:	90                   	nop

0000000140002990 <__CTOR_LIST__>:
   140002990:	ff                   	(bad)
   140002991:	ff                   	(bad)
   140002992:	ff                   	(bad)
   140002993:	ff                   	(bad)
   140002994:	ff                   	(bad)
   140002995:	ff                   	(bad)
   140002996:	ff                   	(bad)
   140002997:	ff                   	.byte 0xff

0000000140002998 <.ctors.65535>:
   140002998:	80 29 00             	subb   $0x0,(%rcx)
   14000299b:	40 01 00             	rex add %eax,(%rax)
	...

00000001400029a8 <__DTOR_LIST__>:
   1400029a8:	ff                   	(bad)
   1400029a9:	ff                   	(bad)
   1400029aa:	ff                   	(bad)
   1400029ab:	ff                   	(bad)
   1400029ac:	ff                   	(bad)
   1400029ad:	ff                   	(bad)
   1400029ae:	ff                   	(bad)
   1400029af:	ff 00                	incl   (%rax)
   1400029b1:	00 00                	add    %al,(%rax)
   1400029b3:	00 00                	add    %al,(%rax)
   1400029b5:	00 00                	add    %al,(%rax)
	...
