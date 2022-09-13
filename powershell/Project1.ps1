#Variables:

$Name = 'Ethan'
$Time = (get-date).ToString('T')
$TotalHour = (Get-Date).Hour


#Script:

If ($TotalHour -lt 12) {"Good morning $Name! It is $Time. Have a great rest of your day!"}

ElseIf ($Hour -gt 17) {"Good Evening $Name! It is $Time. You should eat dinner and then get ready for bed."}

Else {"Good Afternoon $Name! It is $Time. It is not to late to go to the gym. Get moving!"}