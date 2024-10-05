@echo off
echo Quel est le chemin d'acces de l'arborescense ?
set /p arbre=
echo Entrez votre webhook de log:
set /p webhooklog=
(
echo.
echo %webhooklog%
) > %arbre%\Ressource\ProgramRessource\Ressource.txt
