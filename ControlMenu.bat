@echo off
color 02
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
echo Entrez un webook de log:
set /p webhook=
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"Shutdown\"}" %webhook%
:CloseApp
:Restart
