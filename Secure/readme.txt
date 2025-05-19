In this folder you would be placing the credential file, you can use below commands to save your smtp credentials securely in a xml file. 


# This prompts you to enter username and password, then saves them encrypted
$cred = Get-Credential
$cred | Export-Clixml -Path "C:\Users\Pranav Pramod\Desktop\IDK\Project\Automatic System Health Checkup\Secure\creds.xml"
