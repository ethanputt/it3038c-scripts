#Checks to see if weather module is installed (MUST BE ADMINISTRATOR)
if ($cmd) {#
    'Weather Command is installed'
    }
else {
    Install-Script -Name Get-Weather
    }

#Variables:

$Name = Read-Host -Prompt 'Hello! What is your name'
$Time = (get-date).ToString('T')
$TotalHour = (Get-Date).Hour
$cmd= Get-Command Get-Weather -ErrorAction SilentlyContinue
$day= (Get-Date).DayOfWeek
#Script:


If ($TotalHour -lt 12) {"Good morning $Name! It is $Time. Have a great rest of your day!"}

ElseIf ($Hour -gt 17) {"Good Evening $Name! It is $Time. You should eat dinner and then get ready for bed."}

Else {"Good Afternoon $Name! It is $Time. It is not to late to go to the gym. Get moving!"}

$KnowWeather= Read-Host -Prompt 'Would you like to know the weather? y/n'

if ($KnowWeather -eq 'y') {
$Zip= Read-Host -Prompt 'What is your zip code?'
Get-Weather $Zip
} else { 
Write-Host "Goodbye, $Name! Enjoy the rest of your $day!"
}