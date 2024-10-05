@echo off
color 02
for /F "skip=1 delims=" %%i in ('Type "E:\Programme\RemoteControl\Ressource\ProgramRessource\Ressource.txt"') do set "webhook=%%i"
echo Entrez votre commande
echo 1) RemoteShutdown
echo 2) CloseApp
echo 3) RemoteRestart
echo.
set /p command=
if %command%==RemoteShutdown goto Shutdown
if %command%==1 goto Shutdown
if %command%==CloseApp goto CloseApp
if %command%==2 goto CloseApp
if %command%==RemoteRestart goto Restart
if %command%==3 goto Restart
:Shutdown
echo.
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"Shutdown\"}" %webhook%
:CloseApp
echo.
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"Close %ClosedApp%\"}" %webhook%
:Restart
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"Restart\"}" %webhook%
echo.
