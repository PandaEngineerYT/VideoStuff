@ECHO OFF
C:\DOS\SMARTDRV.EXE /X
PROMPT $p$g
PATH C:\WINDOWS;C:\DOS
SET TEMP=C:\DOS
GOTO %CONFIG%
GOTO EXIT

:DOSH
REM SBEMU can be found here https://github.com/crazii/SBEMU/releases
C:\drivers\sbemu\jload.exe c:\drivers\sbemu\qpiemu.dll
C:\drivers\sbemu\hdpmi32i.exe -r -x
C:\drivers\sbemu\sbemu.exe /i7
REM Cute Mouse can be found here https://cutemouse.sourceforge.net/
C:\drivers\mouse\ctmouse.exe
GOTO EXIT

:DOSE
:DOSL
:EXIT