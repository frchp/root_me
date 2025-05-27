ch37.bin:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:       48 83 ec 08             sub    $0x8,%rsp
    1004:       48 8b 05 cd 2f 00 00    mov    0x2fcd(%rip),%rax        # 3fd8 <__cxa_finalize@plt+0x2ee8>
    100b:       48 85 c0                test   %rax,%rax
    100e:       74 02                   je     1012 <printf@plt-0x1e>
    1010:       ff d0                   call   *%rax
    1012:       48 83 c4 08             add    $0x8,%rsp
    1016:       c3                      ret

Disassembly of section .plt:

0000000000001020 <printf@plt-0x10>:
    1020:       ff 35 e2 2f 00 00       push   0x2fe2(%rip)        # 4008 <__cxa_finalize@plt+0x2f18>
    1026:       ff 25 e4 2f 00 00       jmp    *0x2fe4(%rip)        # 4010 <__cxa_finalize@plt+0x2f20>
    102c:       0f 1f 40 00             nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:       ff 25 e2 2f 00 00       jmp    *0x2fe2(%rip)        # 4018 <__cxa_finalize@plt+0x2f28>
    1036:       68 00 00 00 00          push   $0x0
    103b:       e9 e0 ff ff ff          jmp    1020 <printf@plt-0x10>

0000000000001040 <stpcpy@plt>:
    1040:       ff 25 da 2f 00 00       jmp    *0x2fda(%rip)        # 4020 <__cxa_finalize@plt+0x2f30>
    1046:       68 01 00 00 00          push   $0x1
    104b:       e9 d0 ff ff ff          jmp    1020 <printf@plt-0x10>

0000000000001050 <puts@plt>:
    1050:       ff 25 d2 2f 00 00       jmp    *0x2fd2(%rip)        # 4028 <__cxa_finalize@plt+0x2f38>
    1056:       68 02 00 00 00          push   $0x2
    105b:       e9 c0 ff ff ff          jmp    1020 <printf@plt-0x10>

0000000000001060 <__isoc99_sscanf@plt>:
    1060:       ff 25 ca 2f 00 00       jmp    *0x2fca(%rip)        # 4030 <__cxa_finalize@plt+0x2f40>
    1066:       68 03 00 00 00          push   $0x3
    106b:       e9 b0 ff ff ff          jmp    1020 <printf@plt-0x10>

0000000000001070 <exit@plt>:
    1070:       ff 25 c2 2f 00 00       jmp    *0x2fc2(%rip)        # 4038 <__cxa_finalize@plt+0x2f48>
    1076:       68 04 00 00 00          push   $0x4
    107b:       e9 a0 ff ff ff          jmp    1020 <printf@plt-0x10>

0000000000001080 <strnlen@plt>:
    1080:       ff 25 ba 2f 00 00       jmp    *0x2fba(%rip)        # 4040 <__cxa_finalize@plt+0x2f50>
    1086:       68 05 00 00 00          push   $0x5
    108b:       e9 90 ff ff ff          jmp    1020 <printf@plt-0x10>

0000000000001090 <strlen@plt>:
    1090:       ff 25 b2 2f 00 00       jmp    *0x2fb2(%rip)        # 4048 <__cxa_finalize@plt+0x2f58>
    1096:       68 06 00 00 00          push   $0x6
    109b:       e9 80 ff ff ff          jmp    1020 <printf@plt-0x10>

00000000000010a0 <MD5_Final@plt>:
    10a0:       ff 25 aa 2f 00 00       jmp    *0x2faa(%rip)        # 4050 <__cxa_finalize@plt+0x2f60>
    10a6:       68 07 00 00 00          push   $0x7
    10ab:       e9 70 ff ff ff          jmp    1020 <printf@plt-0x10>

00000000000010b0 <MD5_Update@plt>:
    10b0:       ff 25 a2 2f 00 00       jmp    *0x2fa2(%rip)        # 4058 <__cxa_finalize@plt+0x2f68>
    10b6:       68 08 00 00 00          push   $0x8
    10bb:       e9 60 ff ff ff          jmp    1020 <printf@plt-0x10>

00000000000010c0 <strcpy@plt>:
    10c0:       ff 25 9a 2f 00 00       jmp    *0x2f9a(%rip)        # 4060 <__cxa_finalize@plt+0x2f70>
    10c6:       68 09 00 00 00          push   $0x9
    10cb:       e9 50 ff ff ff          jmp    1020 <printf@plt-0x10>

00000000000010d0 <MD5_Init@plt>:
    10d0:       ff 25 92 2f 00 00       jmp    *0x2f92(%rip)        # 4068 <__cxa_finalize@plt+0x2f78>
    10d6:       68 0a 00 00 00          push   $0xa
    10db:       e9 40 ff ff ff          jmp    1020 <printf@plt-0x10>

00000000000010e0 <memcpy@plt>:
    10e0:       ff 25 8a 2f 00 00       jmp    *0x2f8a(%rip)        # 4070 <__cxa_finalize@plt+0x2f80>
    10e6:       68 0b 00 00 00          push   $0xb
    10eb:       e9 30 ff ff ff          jmp    1020 <printf@plt-0x10>

Disassembly of section .plt.got:

00000000000010f0 <__cxa_finalize@plt>:
    10f0:       ff 25 02 2f 00 00       jmp    *0x2f02(%rip)        # 3ff8 <__cxa_finalize@plt+0x2f08>
    10f6:       66 90                   xchg   %ax,%ax

Disassembly of section .text:

0000000000001100 <.text>:
    1100:       55                      push   %rbp
    1101:       53                      push   %rbx
    1102:       48 89 f3                mov    %rsi,%rbx
    1105:       48 83 ec 18             sub    $0x18,%rsp
    1109:       83 ff 01                cmp    $0x1,%edi
    110c:       74 67                   je     1175 <__cxa_finalize@plt+0x85>
    110e:       83 ff 03                cmp    $0x3,%edi
    1111:       74 09                   je     111c <__cxa_finalize@plt+0x2c>
    1113:       48 83 c4 18             add    $0x18,%rsp
    1117:       31 c0                   xor    %eax,%eax
    1119:       5b                      pop    %rbx
    111a:       5d                      pop    %rbp
    111b:       c3                      ret
    111c:       4c 8b 4e 10             mov    0x10(%rsi),%r9
    1120:       48 83 c9 ff             or     $0xffffffffffffffff,%rcx
    1124:       31 c0                   xor    %eax,%eax
    1126:       4c 89 cf                mov    %r9,%rdi
    1129:       f2 ae                   repnz scas %es:(%rdi),%al
    112b:       48 83 f9 e4             cmp    $0xffffffffffffffe4,%rcx
    112f:       75 e2                   jne    1113 <__cxa_finalize@plt+0x23>
    1131:       48 8d 6c 24 04          lea    0x4(%rsp),%rbp
    1136:       48 8d 4c 24 08          lea    0x8(%rsp),%rcx
    113b:       4c 89 cf                mov    %r9,%rdi
    113e:       4c 8d 44 24 0c          lea    0xc(%rsp),%r8
    1143:       48 89 ea                mov    %rbp,%rdx
    1146:       48 8d 35 26 0f 00 00    lea    0xf26(%rip),%rsi        # 2073 <__cxa_finalize@plt+0xf83>
    114d:       e8 0e ff ff ff          call   1060 <__isoc99_sscanf@plt>
    1152:       83 f8 03                cmp    $0x3,%eax
    1155:       75 bc                   jne    1113 <__cxa_finalize@plt+0x23>
    1157:       48 8b 7b 08             mov    0x8(%rbx),%rdi
    115b:       48 89 ee                mov    %rbp,%rsi
    115e:       e8 0d 03 00 00          call   1470 <__cxa_finalize@plt+0x380>
    1163:       84 c0                   test   %al,%al
    1165:       74 21                   je     1188 <__cxa_finalize@plt+0x98>
    1167:       48 8d 3d ba 0e 00 00    lea    0xeba(%rip),%rdi        # 2028 <__cxa_finalize@plt+0xf38>
    116e:       e8 dd fe ff ff          call   1050 <puts@plt>
    1173:       eb 9e                   jmp    1113 <__cxa_finalize@plt+0x23>
    1175:       48 8b 36                mov    (%rsi),%rsi
    1178:       48 8d 3d 89 0e 00 00    lea    0xe89(%rip),%rdi        # 2008 <__cxa_finalize@plt+0xf18>
    117f:       31 c0                   xor    %eax,%eax
    1181:       e8 aa fe ff ff          call   1030 <printf@plt>
    1186:       eb 8b                   jmp    1113 <__cxa_finalize@plt+0x23>
    1188:       48 8d 3d ed 0e 00 00    lea    0xeed(%rip),%rdi        # 207c <__cxa_finalize@plt+0xf8c>
    118f:       e8 bc fe ff ff          call   1050 <puts@plt>
    1194:       e9 7a ff ff ff          jmp    1113 <__cxa_finalize@plt+0x23>
    1199:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    11a0:       31 ed                   xor    %ebp,%ebp
    11a2:       49 89 d1                mov    %rdx,%r9
    11a5:       5e                      pop    %rsi
    11a6:       48 89 e2                mov    %rsp,%rdx
    11a9:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
    11ad:       50                      push   %rax
    11ae:       54                      push   %rsp
    11af:       4c 8d 05 8a 03 00 00    lea    0x38a(%rip),%r8        # 1540 <__cxa_finalize@plt+0x450>
    11b6:       48 8d 0d 23 03 00 00    lea    0x323(%rip),%rcx        # 14e0 <__cxa_finalize@plt+0x3f0>
    11bd:       48 8d 3d 3c ff ff ff    lea    -0xc4(%rip),%rdi        # 1100 <__cxa_finalize@plt+0x10>
    11c4:       ff 15 16 2e 00 00       call   *0x2e16(%rip)        # 3fe0 <__cxa_finalize@plt+0x2ef0>
    11ca:       f4                      hlt
    11cb:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
    11d0:       48 8d 3d c9 32 00 00    lea    0x32c9(%rip),%rdi        # 44a0 <__cxa_finalize@plt+0x33b0>
    11d7:       48 8d 05 c2 32 00 00    lea    0x32c2(%rip),%rax        # 44a0 <__cxa_finalize@plt+0x33b0>
    11de:       48 39 f8                cmp    %rdi,%rax
    11e1:       74 15                   je     11f8 <__cxa_finalize@plt+0x108>
    11e3:       48 8b 05 fe 2d 00 00    mov    0x2dfe(%rip),%rax        # 3fe8 <__cxa_finalize@plt+0x2ef8>
    11ea:       48 85 c0                test   %rax,%rax
    11ed:       74 09                   je     11f8 <__cxa_finalize@plt+0x108>
    11ef:       ff e0                   jmp    *%rax
    11f1:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    11f8:       c3                      ret
    11f9:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    1200:       48 8d 3d 99 32 00 00    lea    0x3299(%rip),%rdi        # 44a0 <__cxa_finalize@plt+0x33b0>
    1207:       48 8d 35 92 32 00 00    lea    0x3292(%rip),%rsi        # 44a0 <__cxa_finalize@plt+0x33b0>
    120e:       48 29 fe                sub    %rdi,%rsi
    1211:       48 89 f0                mov    %rsi,%rax
    1214:       48 c1 ee 3f             shr    $0x3f,%rsi
    1218:       48 c1 f8 03             sar    $0x3,%rax
    121c:       48 01 c6                add    %rax,%rsi
    121f:       48 d1 fe                sar    $1,%rsi
    1222:       74 14                   je     1238 <__cxa_finalize@plt+0x148>
    1224:       48 8b 05 c5 2d 00 00    mov    0x2dc5(%rip),%rax        # 3ff0 <__cxa_finalize@plt+0x2f00>
    122b:       48 85 c0                test   %rax,%rax
    122e:       74 08                   je     1238 <__cxa_finalize@plt+0x148>
    1230:       ff e0                   jmp    *%rax
    1232:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
    1238:       c3                      ret
    1239:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    1240:       80 3d 59 32 00 00 00    cmpb   $0x0,0x3259(%rip)        # 44a0 <__cxa_finalize@plt+0x33b0>
    1247:       75 2f                   jne    1278 <__cxa_finalize@plt+0x188>
    1249:       55                      push   %rbp
    124a:       48 83 3d a6 2d 00 00    cmpq   $0x0,0x2da6(%rip)        # 3ff8 <__cxa_finalize@plt+0x2f08>
    1251:       00 
    1252:       48 89 e5                mov    %rsp,%rbp
    1255:       74 0c                   je     1263 <__cxa_finalize@plt+0x173>
    1257:       48 8b 3d 2a 2e 00 00    mov    0x2e2a(%rip),%rdi        # 4088 <__cxa_finalize@plt+0x2f98>
    125e:       e8 8d fe ff ff          call   10f0 <__cxa_finalize@plt>
    1263:       e8 68 ff ff ff          call   11d0 <__cxa_finalize@plt+0xe0>
    1268:       c6 05 31 32 00 00 01    movb   $0x1,0x3231(%rip)        # 44a0 <__cxa_finalize@plt+0x33b0>
    126f:       5d                      pop    %rbp
    1270:       c3                      ret
    1271:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    1278:       c3                      ret
    1279:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    1280:       e9 7b ff ff ff          jmp    1200 <__cxa_finalize@plt+0x110>
    1285:       66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
    128c:       00 00 00 
    128f:       90                      nop
    1290:       45 31 c0                xor    %r8d,%r8d
    1293:       85 ff                   test   %edi,%edi
    1295:       74 14                   je     12ab <__cxa_finalize@plt+0x1bb>
    1297:       66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
    129e:       00 00 
    12a0:       8d 47 ff                lea    -0x1(%rdi),%eax
    12a3:       41 83 c0 01             add    $0x1,%r8d
    12a7:       21 c7                   and    %eax,%edi
    12a9:       75 f5                   jne    12a0 <__cxa_finalize@plt+0x1b0>
    12ab:       44 89 c0                mov    %r8d,%eax
    12ae:       c3                      ret
    12af:       90                      nop
    12b0:       41 54                   push   %r12
    12b2:       49 89 fa                mov    %rdi,%r10
    12b5:       31 c9                   xor    %ecx,%ecx
    12b7:       55                      push   %rbp
    12b8:       31 ed                   xor    %ebp,%ebp
    12ba:       53                      push   %rbx
    12bb:       44 8b 1f                mov    (%rdi),%r11d
    12be:       8b 5f 04                mov    0x4(%rdi),%ebx
    12c1:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    12c8:       8b 3c 0e                mov    (%rsi,%rcx,1),%edi
    12cb:       01 ed                   add    %ebp,%ebp
    12cd:       44 21 df                and    %r11d,%edi
    12d0:       e8 bb ff ff ff          call   1290 <__cxa_finalize@plt+0x1a0>
    12d5:       8b 3c 0a                mov    (%rdx,%rcx,1),%edi
    12d8:       41 89 c1                mov    %eax,%r9d
    12db:       21 df                   and    %ebx,%edi
    12dd:       e8 ae ff ff ff          call   1290 <__cxa_finalize@plt+0x1a0>
    12e2:       41 31 c1                xor    %eax,%r9d
    12e5:       48 83 c1 04             add    $0x4,%rcx
    12e9:       41 83 e1 01             and    $0x1,%r9d
    12ed:       44 31 cd                xor    %r9d,%ebp
    12f0:       48 81 f9 80 00 00 00    cmp    $0x80,%rcx
    12f7:       75 cf                   jne    12c8 <__cxa_finalize@plt+0x1d8>
    12f9:       45 31 e4                xor    %r12d,%r12d
    12fc:       0f 1f 40 00             nopl   0x0(%rax)
    1300:       8b 3c 0e                mov    (%rsi,%rcx,1),%edi
    1303:       45 01 e4                add    %r12d,%r12d
    1306:       44 21 df                and    %r11d,%edi
    1309:       e8 82 ff ff ff          call   1290 <__cxa_finalize@plt+0x1a0>
    130e:       8b 3c 0a                mov    (%rdx,%rcx,1),%edi
    1311:       41 89 c1                mov    %eax,%r9d
    1314:       21 df                   and    %ebx,%edi
    1316:       e8 75 ff ff ff          call   1290 <__cxa_finalize@plt+0x1a0>
    131b:       41 31 c1                xor    %eax,%r9d
    131e:       48 83 c1 04             add    $0x4,%rcx
    1322:       41 83 e1 01             and    $0x1,%r9d
    1326:       45 31 cc                xor    %r9d,%r12d
    1329:       48 81 f9 00 01 00 00    cmp    $0x100,%rcx
    1330:       75 ce                   jne    1300 <__cxa_finalize@plt+0x210>
    1332:       5b                      pop    %rbx
    1333:       41 89 2a                mov    %ebp,(%r10)
    1336:       45 89 62 04             mov    %r12d,0x4(%r10)
    133a:       5d                      pop    %rbp
    133b:       41 5c                   pop    %r12
    133d:       c3                      ret
    133e:       66 90                   xchg   %ax,%ax
    1340:       41 54                   push   %r12
    1342:       49 89 fc                mov    %rdi,%r12
    1345:       e8 46 fd ff ff          call   1090 <strlen@plt>
    134a:       48 83 f8 01             cmp    $0x1,%rax
    134e:       76 2a                   jbe    137a <__cxa_finalize@plt+0x28a>
    1350:       49 8d 44 04 ff          lea    -0x1(%r12,%rax,1),%rax
    1355:       49 39 c4                cmp    %rax,%r12
    1358:       73 20                   jae    137a <__cxa_finalize@plt+0x28a>
    135a:       4c 89 e2                mov    %r12,%rdx
    135d:       0f 1f 00                nopl   (%rax)
    1360:       0f b6 08                movzbl (%rax),%ecx
    1363:       0f b6 32                movzbl (%rdx),%esi
    1366:       48 83 e8 01             sub    $0x1,%rax
    136a:       48 83 c2 01             add    $0x1,%rdx
    136e:       40 88 70 01             mov    %sil,0x1(%rax)
    1372:       88 4a ff                mov    %cl,-0x1(%rdx)
    1375:       48 39 c2                cmp    %rax,%rdx
    1378:       72 e6                   jb     1360 <__cxa_finalize@plt+0x270>
    137a:       4c 89 e0                mov    %r12,%rax
    137d:       41 5c                   pop    %r12
    137f:       c3                      ret
    1380:       41 56                   push   %r14
    1382:       49 89 fe                mov    %rdi,%r14
    1385:       41 55                   push   %r13
    1387:       41 54                   push   %r12
    1389:       49 89 f4                mov    %rsi,%r12
    138c:       be 80 00 00 00          mov    $0x80,%esi
    1391:       55                      push   %rbp
    1392:       53                      push   %rbx
    1393:       48 81 ec e0 01 00 00    sub    $0x1e0,%rsp
    139a:       e8 e1 fc ff ff          call   1080 <strnlen@plt>
    139f:       48 3d 80 00 00 00       cmp    $0x80,%rax
    13a5:       0f 84 b5 00 00 00       je     1460 <__cxa_finalize@plt+0x370>
    13ab:       31 c0                   xor    %eax,%eax
    13ad:       b9 20 00 00 00          mov    $0x20,%ecx
    13b2:       4c 8d 6c 24 60          lea    0x60(%rsp),%r13
    13b7:       4c 89 f6                mov    %r14,%rsi
    13ba:       48 8d ac 24 e0 00 00    lea    0xe0(%rsp),%rbp
    13c1:       00 
    13c2:       48 89 ef                mov    %rbp,%rdi
    13c5:       f3 48 ab                rep stos %rax,%es:(%rdi)
    13c8:       4c 89 ef                mov    %r13,%rdi
    13cb:       e8 70 fc ff ff          call   1040 <stpcpy@plt>
    13d0:       4c 89 ee                mov    %r13,%rsi
    13d3:       48 89 ef                mov    %rbp,%rdi
    13d6:       49 89 c6                mov    %rax,%r14
    13d9:       48 89 c3                mov    %rax,%rbx
    13dc:       4d 29 ee                sub    %r13,%r14
    13df:       49 8d 56 01             lea    0x1(%r14),%rdx
    13e3:       e8 f8 fc ff ff          call   10e0 <memcpy@plt>
    13e8:       49 83 fe 01             cmp    $0x1,%r14
    13ec:       76 2c                   jbe    141a <__cxa_finalize@plt+0x32a>
    13ee:       4b 8d 44 35 ff          lea    -0x1(%r13,%r14,1),%rax
    13f3:       4c 39 e8                cmp    %r13,%rax
    13f6:       76 22                   jbe    141a <__cxa_finalize@plt+0x32a>
    13f8:       4c 89 ea                mov    %r13,%rdx
    13fb:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
    1400:       0f b6 08                movzbl (%rax),%ecx
    1403:       0f b6 32                movzbl (%rdx),%esi
    1406:       48 83 e8 01             sub    $0x1,%rax
    140a:       48 83 c2 01             add    $0x1,%rdx
    140e:       40 88 70 01             mov    %sil,0x1(%rax)
    1412:       88 4a ff                mov    %cl,-0x1(%rdx)
    1415:       48 39 c2                cmp    %rax,%rdx
    1418:       72 e6                   jb     1400 <__cxa_finalize@plt+0x310>
    141a:       4c 29 eb                sub    %r13,%rbx
    141d:       4c 89 ee                mov    %r13,%rsi
    1420:       49 89 e5                mov    %rsp,%r13
    1423:       48 8d 7c 1d 00          lea    0x0(%rbp,%rbx,1),%rdi
    1428:       e8 93 fc ff ff          call   10c0 <strcpy@plt>
    142d:       4c 89 ef                mov    %r13,%rdi
    1430:       e8 9b fc ff ff          call   10d0 <MD5_Init@plt>
    1435:       48 89 ee                mov    %rbp,%rsi
    1438:       4c 89 ef                mov    %r13,%rdi
    143b:       ba 00 01 00 00          mov    $0x100,%edx
    1440:       e8 6b fc ff ff          call   10b0 <MD5_Update@plt>
    1445:       4c 89 ee                mov    %r13,%rsi
    1448:       4c 89 e7                mov    %r12,%rdi
    144b:       e8 50 fc ff ff          call   10a0 <MD5_Final@plt>
    1450:       48 81 c4 e0 01 00 00    add    $0x1e0,%rsp
    1457:       5b                      pop    %rbx
    1458:       5d                      pop    %rbp
    1459:       41 5c                   pop    %r12
    145b:       41 5d                   pop    %r13
    145d:       41 5e                   pop    %r14
    145f:       c3                      ret
    1460:       bf 02 00 00 00          mov    $0x2,%edi
    1465:       e8 06 fc ff ff          call   1070 <exit@plt>
    146a:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
    1470:       53                      push   %rbx
    1471:       48 89 f3                mov    %rsi,%rbx
    1474:       48 83 ec 10             sub    $0x10,%rsp
    1478:       48 89 e6                mov    %rsp,%rsi
    147b:       e8 00 ff ff ff          call   1380 <__cxa_finalize@plt+0x290>
    1480:       48 8d 15 19 2e 00 00    lea    0x2e19(%rip),%rdx        # 42a0 <__cxa_finalize@plt+0x31b0>
    1487:       48 8d 35 12 2f 00 00    lea    0x2f12(%rip),%rsi        # 43a0 <__cxa_finalize@plt+0x32b0>
    148e:       48 89 df                mov    %rbx,%rdi
    1491:       e8 1a fe ff ff          call   12b0 <__cxa_finalize@plt+0x1c0>
    1496:       48 8d 7b 04             lea    0x4(%rbx),%rdi
    149a:       48 8d 15 ff 2b 00 00    lea    0x2bff(%rip),%rdx        # 40a0 <__cxa_finalize@plt+0x2fb0>
    14a1:       48 8d 35 f8 2c 00 00    lea    0x2cf8(%rip),%rsi        # 41a0 <__cxa_finalize@plt+0x30b0>
    14a8:       e8 03 fe ff ff          call   12b0 <__cxa_finalize@plt+0x1c0>
    14ad:       8b 0c 24                mov    (%rsp),%ecx
    14b0:       31 c0                   xor    %eax,%eax
    14b2:       39 0b                   cmp    %ecx,(%rbx)
    14b4:       74 0a                   je     14c0 <__cxa_finalize@plt+0x3d0>
    14b6:       48 83 c4 10             add    $0x10,%rsp
    14ba:       5b                      pop    %rbx
    14bb:       c3                      ret
    14bc:       0f 1f 40 00             nopl   0x0(%rax)
    14c0:       8b 54 24 04             mov    0x4(%rsp),%edx
    14c4:       39 53 04                cmp    %edx,0x4(%rbx)
    14c7:       75 ed                   jne    14b6 <__cxa_finalize@plt+0x3c6>
    14c9:       8b 44 24 08             mov    0x8(%rsp),%eax
    14cd:       39 43 08                cmp    %eax,0x8(%rbx)
    14d0:       0f 94 c0                sete   %al
    14d3:       48 83 c4 10             add    $0x10,%rsp
    14d7:       5b                      pop    %rbx
    14d8:       c3                      ret
    14d9:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    14e0:       41 57                   push   %r15
    14e2:       4c 8d 3d ef 28 00 00    lea    0x28ef(%rip),%r15        # 3dd8 <__cxa_finalize@plt+0x2ce8>
    14e9:       41 56                   push   %r14
    14eb:       49 89 d6                mov    %rdx,%r14
    14ee:       41 55                   push   %r13
    14f0:       49 89 f5                mov    %rsi,%r13
    14f3:       41 54                   push   %r12
    14f5:       41 89 fc                mov    %edi,%r12d
    14f8:       55                      push   %rbp
    14f9:       48 8d 2d e0 28 00 00    lea    0x28e0(%rip),%rbp        # 3de0 <__cxa_finalize@plt+0x2cf0>
    1500:       53                      push   %rbx
    1501:       4c 29 fd                sub    %r15,%rbp
    1504:       48 83 ec 08             sub    $0x8,%rsp
    1508:       e8 f3 fa ff ff          call   1000 <printf@plt-0x30>
    150d:       48 c1 fd 03             sar    $0x3,%rbp
    1511:       74 1b                   je     152e <__cxa_finalize@plt+0x43e>
    1513:       31 db                   xor    %ebx,%ebx
    1515:       0f 1f 00                nopl   (%rax)
    1518:       4c 89 f2                mov    %r14,%rdx
    151b:       4c 89 ee                mov    %r13,%rsi
    151e:       44 89 e7                mov    %r12d,%edi
    1521:       41 ff 14 df             call   *(%r15,%rbx,8)
    1525:       48 83 c3 01             add    $0x1,%rbx
    1529:       48 39 dd                cmp    %rbx,%rbp
    152c:       75 ea                   jne    1518 <__cxa_finalize@plt+0x428>
    152e:       48 83 c4 08             add    $0x8,%rsp
    1532:       5b                      pop    %rbx
    1533:       5d                      pop    %rbp
    1534:       41 5c                   pop    %r12
    1536:       41 5d                   pop    %r13
    1538:       41 5e                   pop    %r14
    153a:       41 5f                   pop    %r15
    153c:       c3                      ret
    153d:       0f 1f 00                nopl   (%rax)
    1540:       c3                      ret

Disassembly of section .fini:

0000000000001544 <.fini>:
    1544:       48 83 ec 08             sub    $0x8,%rsp
    1548:       48 83 c4 08             add    $0x8,%rsp
    154c:       c3                      ret