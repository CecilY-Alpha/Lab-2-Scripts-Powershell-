#System Admin Lab 2
#Question 7

$SmtpServer = 'smtp.office365.com'
$SmtpUser = 'fakedummyaccount@outlook.com'
$SmtpPassword = 'fakedummypassword123'
$MailTo = 'genericreceiver@gmail.com'
$MailFrom = 'fakedummyaccount@outlook.com'
$MailSubject = "System Admin - Lab 2 Question 7 (Powershell Version)"

#$Attachment = "C:\Users\Bradl\pshell\log.txt"
#$Body = Get-Content "C:\Users\Bradl\pshell\log.txt"

$Attachment = ".\log.txt"
$Body = Get-Content ".\log.txt"


$password = ConvertTo-SecureString $SmtpPassword -AsPlainText -Force
$Credentials = New-Object System.Management.Automation.PSCredential ($SmtpUser, $password)

Send-MailMessage -To "$MailTo" -From "$MailFrom" -Subject $MailSubject -SmtpServer $SmtpServer -UseSsl -Credential $Credentials -Body $Body -Attachments $Attachment -Priority High -DeliveryNotificationOption OnSuccess, OnFailure
