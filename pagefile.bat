@ECHO OFF
for /f "tokens=1,2 skip=2 delims==" %%a in ('wmic pagefile list /format:list') do (
	IF "%%a"=="AllocatedBaseSize" SET TOTAL=%%b
	IF "%%a"=="CurrentUsage" SET USAGE=%%b
)
SET TOTAL
SET USAGE
set /a perc = 100 * USAGE / TOTAL
echo used: %perc%%%
echo NOTE: batch files can not handle floats

wmic pagefile list /format:list

pause
