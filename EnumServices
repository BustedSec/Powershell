#Script grabs a list of all services running on all macines in domain and saves it to a csv file

#grab each computername out of AD and put into array
$ComputerArray = Get-ADComputer -Filter * -properties Name| Select Name
#run the following command on each machine in array 
foreach ($Computer in $ComputerArray) {
Get-WmiObject -Computer $Computer.name -Class win32_service | Select SystemName, Name, Description, Pathname, StartMode, State, StartName | export-csv -append -path "c:\temp\output.csv" -noTypeinformation 
}



