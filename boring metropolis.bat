@echo off
set b=¨€
echo wscript.sleep 100>sleep.vbs
:new
set line=_
set /a rd=%random%%%11
set i=0
:loop
if %i% LEQ %rd% (
	set /a i=%i%+1
	set line=%line%%b%
	goto loop
)
echo %line%
start /wait sleep.vbs
goto new