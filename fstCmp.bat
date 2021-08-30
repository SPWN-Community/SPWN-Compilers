@Echo off
 
:m1
Echo Select:
Echo.
Echo ......!!!Script Requires level named fstCmp!!!......
Echo !!!You can modify lvl name by modifying this .bat!!!
Echo.
Echo You in the folder %~dp0
Echo.
Echo 1 - Compile File fstCmp.spwn
Echo 2 - exit
 
echo.
Set /p choice="Your choice is: "
if not defined choice goto m1
if "%choice%"=="1" (spwn build %~dp0\fstCmp.spwn --level-name "fstCmp")
if "%choice%"=="2" (exit)
Echo.
Echo Built! (or no).
Echo.
Echo.
goto m1
pause >nul