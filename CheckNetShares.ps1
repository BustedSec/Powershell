$bod = "Please investigate"
$Computers = Get-Content 'c:\scripts\SQLservers.txt'
Foreach ($PCname in $Computers)
{
   if (test-path $pcname)
        {$Pcname}
    else
        {Send-MailMessage -SmtpServer mailserver.localdomain -From alerts@domain.com -To "address1@domain.com","address2@domain.com","address3@domain.com" -Subject "$PCname missing network shares" -Body $bod} 
} 
