@echo off
set i=0
:loop
if %i% LSS 5201314 (
	set /a i=%i%+1
	echo %i%
	goto loop
)
echo %i%, hey! I like you!
pause