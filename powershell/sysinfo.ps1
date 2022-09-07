
$day = (get-date).day
$dayofweek = (get-date).dayofweek
$month = (Get-Culture).DateTimeFormat.GetMonthName(9)
$year = (get-date).year

$Version= $Host.Version.Major
$Computer = $env:COMPUTERNAME
$Name = $env:USERNAME
$IP = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias Ethernet).IPAddress

$Body = "This machine's IP is $IP. User is $Name. Hostname is $Computer. Powershell Version $Version. Today's Date is $dayofweek, $month $day $year. This is Ethan Putt's submission for Lab 3. Thank you!"

Send-MailMessage -To "putter@mail.uc.edu", "leonardf@ucmail.uc.edu" -From "emanp18@gmail.com" -Subject "IT3038C Windows SysInfo" -Body $Body -SmtpServer smtp.gmail.com -port 587 -UseSSL -Credential (Get-Credential)