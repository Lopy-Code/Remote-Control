@echo off
echo Quel est le chemin d'acces de l'arborescense ?
set /p arbre=
echo Entrez votre webhook de log:
set /p webhooklog=
(
echo.
echo %webhooklog%
) > %arbre%\ControlComputer\Ressource\ProgramRessource\Ressource.txt
(
echo.
echo %webhooklog%
) > %arbre%\ControledComputer\Ressource\ProgramRessource\Ressource.txt