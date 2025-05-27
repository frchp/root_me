ch73.bin:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:       f3 0f 1e fa             endbr64
    1004:       48 83 ec 08             sub    $0x8,%rsp
    1008:       48 8b 05 c1 2f 00 00    mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:       48 85 c0                test   %rax,%rax
    1012:       74 02                   je     1016 <_init+0x16>
    1014:       ff d0                   call   *%rax
    1016:       48 83 c4 08             add    $0x8,%rsp
    101a:       c3                      ret

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:       ff 35 ca 2f 00 00       push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:       ff 25 cc 2f 00 00       jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:       0f 1f 40 00             nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:       ff 25 ca 2f 00 00       jmp    *0x2fca(%rip)        # 4000 <puts@GLIBC_2.2.5>
    1036:       68 00 00 00 00          push   $0x0
    103b:       e9 e0 ff ff ff          jmp    1020 <_init+0x20>

0000000000001040 <strlen@plt>:
    1040:       ff 25 c2 2f 00 00       jmp    *0x2fc2(%rip)        # 4008 <strlen@GLIBC_2.2.5>
    1046:       68 01 00 00 00          push   $0x1
    104b:       e9 d0 ff ff ff          jmp    1020 <_init+0x20>

0000000000001050 <__stack_chk_fail@plt>:
    1050:       ff 25 ba 2f 00 00       jmp    *0x2fba(%rip)        # 4010 <__stack_chk_fail@GLIBC_2.4>
    1056:       68 02 00 00 00          push   $0x2
    105b:       e9 c0 ff ff ff          jmp    1020 <_init+0x20>

0000000000001060 <setbuf@plt>:
    1060:       ff 25 b2 2f 00 00       jmp    *0x2fb2(%rip)        # 4018 <setbuf@GLIBC_2.2.5>
    1066:       68 03 00 00 00          push   $0x3
    106b:       e9 b0 ff ff ff          jmp    1020 <_init+0x20>

0000000000001070 <printf@plt>:
    1070:       ff 25 aa 2f 00 00       jmp    *0x2faa(%rip)        # 4020 <printf@GLIBC_2.2.5>
    1076:       68 04 00 00 00          push   $0x4
    107b:       e9 a0 ff ff ff          jmp    1020 <_init+0x20>

0000000000001080 <__isoc99_scanf@plt>:
    1080:       ff 25 a2 2f 00 00       jmp    *0x2fa2(%rip)        # 4028 <__isoc99_scanf@GLIBC_2.7>
    1086:       68 05 00 00 00          push   $0x5
    108b:       e9 90 ff ff ff          jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001090 <_start>:
    1090:       f3 0f 1e fa             endbr64
    1094:       31 ed                   xor    %ebp,%ebp
    1096:       49 89 d1                mov    %rdx,%r9
    1099:       5e                      pop    %rsi
    109a:       48 89 e2                mov    %rsp,%rdx
    109d:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
    10a1:       50                      push   %rax
    10a2:       54                      push   %rsp
    10a3:       45 31 c0                xor    %r8d,%r8d
    10a6:       31 c9                   xor    %ecx,%ecx
    10a8:       48 8d 3d 53 02 00 00    lea    0x253(%rip),%rdi        # 1302 <main>
    10af:       ff 15 0b 2f 00 00       call   *0x2f0b(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10b5:       f4                      hlt
    10b6:       66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
    10bd:       00 00 00 
    10c0:       48 8d 3d 89 2f 00 00    lea    0x2f89(%rip),%rdi        # 4050 <__TMC_END__>
    10c7:       48 8d 05 82 2f 00 00    lea    0x2f82(%rip),%rax        # 4050 <__TMC_END__>
    10ce:       48 39 f8                cmp    %rdi,%rax
    10d1:       74 15                   je     10e8 <_start+0x58>
    10d3:       48 8b 05 ee 2e 00 00    mov    0x2eee(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10da:       48 85 c0                test   %rax,%rax
    10dd:       74 09                   je     10e8 <_start+0x58>
    10df:       ff e0                   jmp    *%rax
    10e1:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    10e8:       c3                      ret
    10e9:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    10f0:       48 8d 3d 59 2f 00 00    lea    0x2f59(%rip),%rdi        # 4050 <__TMC_END__>
    10f7:       48 8d 35 52 2f 00 00    lea    0x2f52(%rip),%rsi        # 4050 <__TMC_END__>
    10fe:       48 29 fe                sub    %rdi,%rsi
    1101:       48 89 f0                mov    %rsi,%rax
    1104:       48 c1 ee 3f             shr    $0x3f,%rsi
    1108:       48 c1 f8 03             sar    $0x3,%rax
    110c:       48 01 c6                add    %rax,%rsi
    110f:       48 d1 fe                sar    $1,%rsi
    1112:       74 14                   je     1128 <_start+0x98>
    1114:       48 8b 05 bd 2e 00 00    mov    0x2ebd(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    111b:       48 85 c0                test   %rax,%rax
    111e:       74 08                   je     1128 <_start+0x98>
    1120:       ff e0                   jmp    *%rax
    1122:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
    1128:       c3                      ret
    1129:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    1130:       f3 0f 1e fa             endbr64
    1134:       80 3d 4d 2f 00 00 00    cmpb   $0x0,0x2f4d(%rip)        # 4088 <stderr@GLIBC_2.2.5+0x8>
    113b:       75 33                   jne    1170 <_start+0xe0>
    113d:       55                      push   %rbp
    113e:       48 83 3d 9a 2e 00 00    cmpq   $0x0,0x2e9a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1145:       00 
    1146:       48 89 e5                mov    %rsp,%rbp
    1149:       74 0d                   je     1158 <_start+0xc8>
    114b:       48 8b 3d e6 2e 00 00    mov    0x2ee6(%rip),%rdi        # 4038 <__dso_handle>
    1152:       ff 15 88 2e 00 00       call   *0x2e88(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1158:       e8 63 ff ff ff          call   10c0 <_start+0x30>
    115d:       c6 05 24 2f 00 00 01    movb   $0x1,0x2f24(%rip)        # 4088 <stderr@GLIBC_2.2.5+0x8>
    1164:       5d                      pop    %rbp
    1165:       c3                      ret
    1166:       66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
    116d:       00 00 00 
    1170:       c3                      ret
    1171:       66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
    1178:       00 00 00 00 
    117c:       0f 1f 40 00             nopl   0x0(%rax)
    1180:       f3 0f 1e fa             endbr64
    1184:       e9 67 ff ff ff          jmp    10f0 <_start+0x60>

0000000000001189 <__do_global_ctors_aux>:
    1189:       55                      push   %rbp
    118a:       48 89 e5                mov    %rsp,%rbp
    118d:       b8 65 00 00 00          mov    $0x65,%eax
    1192:       bf 00 00 00 00          mov    $0x0,%edi
    1197:       be 00 00 00 00          mov    $0x0,%esi
    119c:       ba 00 00 00 00          mov    $0x0,%edx
    11a1:       0f 05                   syscall
    11a3:       89 c0                   mov    %eax,%eax
    11a5:       89 45 f4                mov    %eax,-0xc(%rbp)
    11a8:       83 7d f4 ff             cmpl   $0xffffffff,-0xc(%rbp)
    11ac:       74 5a                   je     1208 <__do_global_ctors_aux+0x7f>
    11ae:       48 8d 05 8b 2e 00 00    lea    0x2e8b(%rip),%rax        # 4040 <data_start>
    11b5:       48 89 45 f8             mov    %rax,-0x8(%rbp)
    11b9:       c7 45 f0 00 00 00 00    movl   $0x0,-0x10(%rbp)
    11c0:       eb 3d                   jmp    11ff <__do_global_ctors_aux+0x76>
    11c2:       48 8b 45 f8             mov    -0x8(%rbp),%rax
    11c6:       48 8b 10                mov    (%rax),%rdx
    11c9:       48 b8 a8 96 4f 7f 3e    movabs $0x950a943e7f4f96a8,%rax
    11d0:       94 0a 95 
    11d3:       48 39 c2                cmp    %rax,%rdx
    11d6:       75 1e                   jne    11f6 <__do_global_ctors_aux+0x6d>
    11d8:       48 8b 45 f8             mov    -0x8(%rbp),%rax
    11dc:       48 8b 00                mov    (%rax),%rax
    11df:       48 ba 19 01 19 01 19    movabs $0x119011901190119,%rdx
    11e6:       01 19 01 
    11e9:       48 31 c2                xor    %rax,%rdx
    11ec:       48 8b 45 f8             mov    -0x8(%rbp),%rax
    11f0:       48 89 10                mov    %rdx,(%rax)
    11f3:       90                      nop
    11f4:       eb 12                   jmp    1208 <__do_global_ctors_aux+0x7f>
    11f6:       48 83 45 f8 08          addq   $0x8,-0x8(%rbp)
    11fb:       83 45 f0 01             addl   $0x1,-0x10(%rbp)
    11ff:       81 7d f0 ff 00 00 00    cmpl   $0xff,-0x10(%rbp)
    1206:       7e ba                   jle    11c2 <__do_global_ctors_aux+0x39>
    1208:       90                      nop
    1209:       5d                      pop    %rbp
    120a:       c3                      ret

000000000000120b <check>:
    120b:       55                      push   %rbp
    120c:       48 89 e5                mov    %rsp,%rbp
    120f:       53                      push   %rbx
    1210:       48 83 ec 28             sub    $0x28,%rsp
    1214:       48 89 7d d8             mov    %rdi,-0x28(%rbp)
    1218:       c7 45 ec 00 00 00 00    movl   $0x0,-0x14(%rbp)
    121f:       eb 4a                   jmp    126b <check+0x60>
    1221:       8b 45 ec                mov    -0x14(%rbp),%eax
    1224:       48 63 d0                movslq %eax,%rdx
    1227:       48 8b 45 d8             mov    -0x28(%rbp),%rax
    122b:       48 01 d0                add    %rdx,%rax
    122e:       0f b6 30                movzbl (%rax),%esi
    1231:       8b 55 ec                mov    -0x14(%rbp),%edx
    1234:       89 d0                   mov    %edx,%eax
    1236:       c1 f8 1f                sar    $0x1f,%eax
    1239:       c1 e8 1d                shr    $0x1d,%eax
    123c:       01 c2                   add    %eax,%edx
    123e:       83 e2 07                and    $0x7,%edx
    1241:       29 c2                   sub    %eax,%edx
    1243:       89 d0                   mov    %edx,%eax
    1245:       48 98                   cltq
    1247:       48 8d 15 fa 2d 00 00    lea    0x2dfa(%rip),%rdx        # 4048 <key>
    124e:       48 01 d0                add    %rdx,%rax
    1251:       0f b6 08                movzbl (%rax),%ecx
    1254:       8b 45 ec                mov    -0x14(%rbp),%eax
    1257:       48 63 d0                movslq %eax,%rdx
    125a:       48 8b 45 d8             mov    -0x28(%rbp),%rax
    125e:       48 01 d0                add    %rdx,%rax
    1261:       31 ce                   xor    %ecx,%esi
    1263:       89 f2                   mov    %esi,%edx
    1265:       88 10                   mov    %dl,(%rax)
    1267:       83 45 ec 01             addl   $0x1,-0x14(%rbp)
    126b:       8b 45 ec                mov    -0x14(%rbp),%eax
    126e:       48 63 d8                movslq %eax,%rbx
    1271:       48 8b 45 d8             mov    -0x28(%rbp),%rax
    1275:       48 89 c7                mov    %rax,%rdi
    1278:       e8 c3 fd ff ff          call   1040 <strlen@plt>
    127d:       48 39 c3                cmp    %rax,%rbx
    1280:       72 9f                   jb     1221 <check+0x16>
    1282:       48 8b 45 d8             mov    -0x28(%rbp),%rax
    1286:       48 8b 10                mov    (%rax),%rdx
    1289:       48 b8 f9 fd 65 04 57    movabs $0xa377ad570465fdf9,%rax
    1290:       ad 77 a3 
    1293:       48 39 c2                cmp    %rax,%rdx
    1296:       75 11                   jne    12a9 <check+0x9e>
    1298:       48 8d 05 65 0d 00 00    lea    0xd65(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    129f:       48 89 c7                mov    %rax,%rdi
    12a2:       e8 89 fd ff ff          call   1030 <puts@plt>
    12a7:       eb 0f                   jmp    12b8 <check+0xad>
    12a9:       48 8d 05 64 0d 00 00    lea    0xd64(%rip),%rax        # 2014 <_IO_stdin_used+0x14>
    12b0:       48 89 c7                mov    %rax,%rdi
    12b3:       e8 78 fd ff ff          call   1030 <puts@plt>
    12b8:       90                      nop
    12b9:       48 8b 5d f8             mov    -0x8(%rbp),%rbx
    12bd:       c9                      leave
    12be:       c3                      ret

00000000000012bf <init>:
    12bf:       55                      push   %rbp
    12c0:       48 89 e5                mov    %rsp,%rbp
    12c3:       48 8b 05 96 2d 00 00    mov    0x2d96(%rip),%rax        # 4060 <stdout@GLIBC_2.2.5>
    12ca:       be 00 00 00 00          mov    $0x0,%esi
    12cf:       48 89 c7                mov    %rax,%rdi
    12d2:       e8 89 fd ff ff          call   1060 <setbuf@plt>
    12d7:       48 8b 05 92 2d 00 00    mov    0x2d92(%rip),%rax        # 4070 <stdin@GLIBC_2.2.5>
    12de:       be 00 00 00 00          mov    $0x0,%esi
    12e3:       48 89 c7                mov    %rax,%rdi
    12e6:       e8 75 fd ff ff          call   1060 <setbuf@plt>
    12eb:       48 8b 05 8e 2d 00 00    mov    0x2d8e(%rip),%rax        # 4080 <stderr@GLIBC_2.2.5>
    12f2:       be 00 00 00 00          mov    $0x0,%esi
    12f7:       48 89 c7                mov    %rax,%rdi
    12fa:       e8 61 fd ff ff          call   1060 <setbuf@plt>
    12ff:       90                      nop
    1300:       5d                      pop    %rbp
    1301:       c3                      ret

0000000000001302 <main>:
    1302:       55                      push   %rbp
    1303:       48 89 e5                mov    %rsp,%rbp
    1306:       48 83 c4 80             add    $0xffffffffffffff80,%rsp
    130a:       89 7d 8c                mov    %edi,-0x74(%rbp)
    130d:       48 89 75 80             mov    %rsi,-0x80(%rbp)
    1311:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1318:       00 00 
    131a:       48 89 45 f8             mov    %rax,-0x8(%rbp)
    131e:       31 c0                   xor    %eax,%eax
    1320:       b8 00 00 00 00          mov    $0x0,%eax
    1325:       e8 95 ff ff ff          call   12bf <init>
    132a:       48 8d 05 f3 0c 00 00    lea    0xcf3(%rip),%rax        # 2024 <_IO_stdin_used+0x24>
    1331:       48 89 c7                mov    %rax,%rdi
    1334:       b8 00 00 00 00          mov    $0x0,%eax
    1339:       e8 32 fd ff ff          call   1070 <printf@plt>
    133e:       48 8d 45 90             lea    -0x70(%rbp),%rax
    1342:       48 89 c6                mov    %rax,%rsi
    1345:       48 8d 05 de 0c 00 00    lea    0xcde(%rip),%rax        # 202a <_IO_stdin_used+0x2a>
    134c:       48 89 c7                mov    %rax,%rdi
    134f:       b8 00 00 00 00          mov    $0x0,%eax
    1354:       e8 27 fd ff ff          call   1080 <__isoc99_scanf@plt>
    1359:       48 8d 45 90             lea    -0x70(%rbp),%rax
    135d:       48 89 c7                mov    %rax,%rdi
    1360:       e8 a6 fe ff ff          call   120b <check>
    1365:       b8 00 00 00 00          mov    $0x0,%eax
    136a:       48 8b 55 f8             mov    -0x8(%rbp),%rdx
    136e:       64 48 2b 14 25 28 00    sub    %fs:0x28,%rdx
    1375:       00 00 
    1377:       74 05                   je     137e <main+0x7c>
    1379:       e8 d2 fc ff ff          call   1050 <__stack_chk_fail@plt>
    137e:       c9                      leave
    137f:       c3                      ret

Disassembly of section .fini:

0000000000001380 <_fini>:
    1380:       f3 0f 1e fa             endbr64
    1384:       48 83 ec 08             sub    $0x8,%rsp
    1388:       48 83 c4 08             add    $0x8,%rsp
    138c:       c3                      ret