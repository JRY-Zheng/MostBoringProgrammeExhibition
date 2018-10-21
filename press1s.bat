@echo off
echo try to press 1000ms
:loop
set /p a=start...
set stt1=%time:~6,2%
if %stt1:~0,1%==0 set stt1=%stt1:~1,1%
set stt2=%time:~9,2%
if %stt2:~0,1%==0 set stt2=%stt2:~1,1%
::echo %stt%
set /p b=press!
set end1=%time:~6,2%
if %end1:~0,1%==0 set end1=%end1:~1,1%
set end2=%time:~9,2%
if %end2:~0,1%==0 set end2=%end2:~1,1%
set /a interval=%end1%*1000+%end2%*10-%stt1%*1000-%stt2%*10
if %interval% LSS 0 set /a interval=%interval%+60000
echo you pressed for %interval%ms!
if %interval% LEQ 800 goto bad
if %interval% GEQ 1200 goto bad
if %interval% == 1000 (goto perfect) else (goto good)
:bad
echo not bad!
goto loop
:good
echo well done!
goto loop
:perfect
echo perfect!
goto loop