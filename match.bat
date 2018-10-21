@echo off
echo wscript.sleep 100>sleep.vbs
:new
set group=ABCDEFGHIJKLMNOPQRSTUVWXYZ
:loop
::::::::::::::::::::::::::
set /a p1n=%random%%%26
set temp=0
set p1=%group%
:innerloop1
if %temp%==%p1n% goto setp1
set p1=%p1:~1%
set /a temp=%temp%+1
goto innerloop1
:setp1
set p1=%p1:~0,1%
::::::::::::::::::::::::::
:try
set /a p2n=%random%%%26
if %p2n%==%p1n% goto try
set temp=0
set p2=%group%
:innerloop2
if %temp%==%p2n% goto setp2
set p2=%p2:~1%
set /a temp=%temp%+1
goto innerloop2
:setp2
set p2=%p2:~0,1%
::::::::::::::::::::::::::
:try
set /a p3n=%random%%%26
if %p3n%==%p2n% goto try
set temp=0
set p3=%group%
:innerloop3
if %temp%==%p3n% goto setp3
set p3=%p3:~1%
set /a temp=%temp%+1
goto innerloop3
:setp3
set p3=%p3:~0,1%
::::::::::::::::::::::::::
if %p1%==%p3% (goto match) else (goto dismatch)
:match
echo Miss %p1% likes Mr. %p2%
echo and Mr. %p2% likes Miss %p3%
echo they match!
echo ----------------------------
start /wait sleep.vbs
pause
goto new
:dismatch
echo Miss %p1% likes Mr. %p2%
echo but Mr. %p2% likes Miss %p3%
echo they don't match!
echo ----------------------------
start /wait sleep.vbs
goto new