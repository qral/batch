@echo off
REM start cmd.exe

sc query spooler
sc qc spooler

echo.
@echo
echo.

set /P startit="START SPOOLER? y/N: "

REM echo %startit%
if %startit%==y goto :sc_start
goto:eof

:sc_start
echo [+] trying to start Spooler..
echo.
sc start spooler

REM 4 sec sleep
PING 1.1.1.1 -n 1 -w 4000 >NUL

sc query spooler
echo.
pause