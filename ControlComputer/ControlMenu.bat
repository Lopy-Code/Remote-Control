@echo off
color 02
:: Lecture de la ressource du webhook
for /F "skip=1 delims=" %%i in ('Type "E:\Programme\RemoteControl\Ressource\ProgramRessource\Ressource.txt"') do set "webhook=%%i"

:: Affichage des options de commande
echo Entrez votre commande
echo 1) RemoteShutdown
echo 2) CloseApp
echo 3) RemoteRestart
echo.

:: Lecture de la commande saisie par l'utilisateur
set /p command=

:: Vérification de la commande saisie et redirection vers les sections appropriées
if %command%==RemoteShutdown goto Shutdown
if %command%==1 goto Shutdown
if %command%==CloseApp goto CloseApp
if %command%==2 goto CloseApp
if %command%==RemoteRestart goto Restart
if %command%==3 goto Restart

:Shutdown
echo.
:: Envoi d'une requête POST pour éteindre
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"Shutdown\"}" %webhook%
goto end

:CloseApp
echo.
:: Envoi d'une requête POST pour fermer l'application
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"Close %ClosedApp%\"}" %webhook%
goto end

:Restart
:: Envoi d'une requête POST pour redémarrer
curl
