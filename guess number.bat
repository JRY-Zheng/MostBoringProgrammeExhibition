echo off
:reset
set /a ans=%random%%%101
echo please input a number between 0 and 100
:fail
set /p gss=">>>"
if %gss%==%ans% (
	echo you win
	pause
)
if %gss% LSS %ans% (
	echo too small
	goto fail
)
if %gss% GTR %ans% (
	echo too big
	goto fail
)
goto reset