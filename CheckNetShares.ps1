$bod = "Please investigate"
$Computers = Get-Content 'c:\scripts\SQLservers.txt'
Foreach ($PCname in $Computers)
{
   if (test-path $pcname)
        {$Pcname}
    else
        {Send-MailMessage -SmtpServer autodiscover.ecinfosystems.com -From alerts@ecinfosystems.com -To "ftrezza@ecinfosystems.com","MChaliawala@ecinfosystems.com","FRodriguez@ecinfosystems.com","rng@ecinfosystems.com" -Subject "$PCname missing network shares" -Body $bod} 
} 
