@echo off
:new
set line=______________________¨€
set life=0
echo wscript.sleep 100>sleep.vbs
:loop
set /a life=%life%+1
set /a rd=%random%%%2
if %rd%==1 (
	if %line%==______________________¨€ (goto minus) else (goto add)
) else (
	if %line%==¨€ (goto dead) else (goto minus)
)
:add
set line=_%line%
echo %line%
start /wait sleep.vbs
goto loop
:minus
set line=%line:~1%
echo %line%
start /wait sleep.vbs
goto loop
:dead
set /a life=%life%/10
echo You died! You lived for %life% years.
pause
goto new