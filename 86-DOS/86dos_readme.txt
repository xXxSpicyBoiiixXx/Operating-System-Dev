=====================================================
Quick Start Guide to running 86-DOS on SIMH/AltairZ80
Howard M. Harte, June 5, 2008 - www.86dos.org
=====================================================

0. Unzip all files from the archive into a directory on your PC.
1. Then run the AltairZ80 simulator using the scp86mon startup script.
2. Press <return> a few times to get the SCP 8086 Monitor '>' prompt.
3. Type 'B' at the monitor prompt (uppercase) to boot 86-DOS.
4. Enter a date, note that 86-DOS is not Y2K compliant, and will reject recent dates.
5. 86-DOS Manuals are available from: http://www.patersontech.com/dos/manuals.aspx

=====================================================
=========== Transcript of booting 86-DOS ============
=====================================================
C:\86DOS>AltairZ80.exe 86dos
Altair 8800 (Z80) simulator V3.8-0 build 1000 (scp created Jun 22 2008 at 08:01:
48)

2047 bytes [8 pages] loaded at 0.
2047 bytes [8 pages] loaded at ff800.
Mapped CCS2810 UART Status at 0x26

Press <return> to get monitor prompt, then type 'B' to boot



SCP 8086 Monitor 1.5
>B
?
86-DOS version 1.00
Copyright 1980,81 Seattle Computer Products, Inc.
Enter today's date (m-d-y): 2-2-82

COMMAND v. 1.00

A:dir
COMMAND   COM        1842  04-28-81
RDCPM     COM        1310  04-30-81
CHKDSK    COM        1110  04-24-81
TRANS     COM        3088  04-24-81
ASM       COM        6389  04-28-81
DEBUG     COM        5153  04-29-81
EDLIN     COM        2144  04-28-81
HEX2BIN   COM         483  04-18-81
SYS       COM         154  04-24-81
MAKRDCPM  COM         303  04-30-81
INITLARG  COM         509  04-28-81
INITSMAL  COM         507  04-28-81
CPMTAB    ASM        1072  04-30-81
BOOT      ASM        2602  04-28-81
INIT      ASM        5595  04-28-81
DOSIO     ASM       24277  04-30-81
MON       ASM       35502  04-28-81
NEWS      DOC        1404  04-28-81
NEW       BAT         101  04-24-81

A:chkdsk
        3072 bytes unallocated disk space freed

          19 disk files
      245760 bytes total disk space
      146944 bytes remain available

           0 bytes total system RAM
     1036448 bytes free

A: