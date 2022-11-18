# This is Ethan Putt's Final project submission
# This is a fun trivia game to test your knowledge of on my favorite Tv show: The Office

#Creating the questions assigned to a variable (See read me for credit to questions)
$q1 = "What’s Pam’s favorite flavor of yogurt? (EASY)"
$q2 = "How does Michael burn his foot? (EASY)"
$q3 = "Who bought Michael’s World’s Best Boss mug? (EASY)"
$q4 = "Who does Michael hit with a car? (EASY)"
$q5 = "Who is Henrietta? (MEDIUM)"
$q6 = "What color does Angela find whore-ish?(MEDIUM)"
$q7 = "Who is in charge of the warehouse? (MEDIUM)"
$q8 = "What did Kevin buy for his secret Santa? (HARD)"
$q9 = "What is Jim’s favorite food? (HARD)"
$q10 = "Who beats Kevin in poker on Casino Night? (HARD)"

#Stores user input from questions above
$answers = "","","","","","","","","",""

#Only entries acceptable from user input
$acceptable = "a","b","c","d"

#List of correct answers
$correctA= "B","C","A","B","D","C","D","A","B","C"

#player starting score
$nocorrect= 0

#gives player instructions
Clear-Host
Write-Host " "
Write-Host "Hello! Welcome to Ethan's Final Project trivia game on The Office"
Write-Host " "
Write-Host " "
Write-Host "Please Enter only the letters A B C or D for the corrsponding answers"
Write-Host "Press Enter to Get Started"
Read-Host

#This asks the user the trivia and receives their question input. A total of 10 questions follow
while ($acceptable -notcontains $answers[0]) {
 Write-Host " "
 Write-Host $q1
 Write-Host " "
 Write-Host " A. Strawberry"
 Write-Host " B. Mixed Berry"
 Write-Host " C. Raspberry"
 Write-Host " D. Blackberry"
 Write-Host " "
 $answers[0] = Read-Host "Type the letter with the correct answer and hit enter to continue"  
}

while ($acceptable -notcontains $answers[1]) {
 Write-Host " "
 Write-Host $q2
 Write-Host " "
 Write-Host " A. Walking across hot coals"
 Write-Host " B. Dropping his curling iron"
 Write-Host " C. George Foreman Grill"
 Write-Host " D. Kevins Chili"
 Write-Host " "
 $answers[1] = Read-Host "Type the letter with the correct answer and hit enter to continue"
 } 

 while ($acceptable -notcontains $answers[2]) {
 Write-Host " "
 Write-Host $q3
 Write-Host " "
 Write-Host " A. Michael"
 Write-Host " B. Dwight"
 Write-Host " C. Jim"
 Write-Host " D. Creed"
 Write-Host " "
 $answers[2] = Read-Host "Type the letter with the correct answer and hit enter to continue"
 } 

 while ($acceptable -notcontains $answers[3]) {
 Write-Host " "
 Write-Host $q4
 Write-Host " "
 Write-Host " A. Kelly"
 Write-Host " B. Meredith"
 Write-Host " C. Dwight"
 Write-Host " D. Stanley"
 Write-Host " "
 $answers[3] = Read-Host "Type the letter with the correct answer and hit enter to continue"
 } 

 while ($acceptable -notcontains $answers[4]) {
 Write-Host " "
 Write-Host $q5
 Write-Host " "
 Write-Host " A. Angela's cat"
 Write-Host " B. Stanley's Dog"
 Write-Host " C. Kelly's online dating name"
 Write-Host " D. Dwight's Porcupine"
 Write-Host " "
 $answers[4] = Read-Host "Type the letter with the correct answer and hit enter to continue"
 } 

 while ($acceptable -notcontains $answers[5]) {
 Write-Host " "
 Write-Host $q6
 Write-Host " "
 Write-Host " A. Red"
 Write-Host " B. Yellow"
 Write-Host " C. Green"
 Write-Host " D. Blue"
 Write-Host " "
 $answers[5] = Read-Host "Type the letter with the correct answer and hit enter to continue"
 } 

 while ($acceptable -notcontains $answers[6]) {
 Write-Host " "
 Write-Host $q7
 Write-Host " "
 Write-Host " A. Creed"
 Write-Host " B. Ryan"
 Write-Host " C. Michael"
 Write-Host " D. Darryl"
 Write-Host " "
 $answers[6] = Read-Host "Type the letter with the correct answer and hit enter to continue"
 } 

 while ($acceptable -notcontains $answers[7]) {
 Write-Host " "
 Write-Host $q8
 Write-Host " "
 Write-Host " A. A footbath"
 Write-Host " B. A shamrock keychain"
 Write-Host " C. An iPod"
 Write-Host " D. A teapot"
 Write-Host " "
 $answers[7] = Read-Host "Type the letter with the correct answer and hit enter to continue"
 } 

 while ($acceptable -notcontains $answers[8]) {
 Write-Host " "
 Write-Host $q9
 Write-Host " "
 Write-Host " A. Tuna"
 Write-Host " B. Softshell Crab"
 Write-Host " C. Oysters"
 Write-Host " D. Salmon"
 Write-Host " "
 $answers[8] = Read-Host "Type the letter with the correct answer and hit enter to continue"
 } 

   while ($acceptable -notcontains $answers[9]) {
 Write-Host " "
 Write-Host $q10
 Write-Host " "
 Write-Host " A. Stanley"
 Write-Host " B. Jan"
 Write-Host " C. Phyllis"
 Write-Host " D. Kelly"
 Write-Host " "
 $answers[9] = Read-Host "Type the letter with the correct answer and hit enter to continue"
 } 

#this checkes the answer variable against the correct answer variable to see if it was correct or not. Then will add a point if correct

if ($answers[0] -eq $correctA[0]) { $noCorrect++ }
if ($answers[1] -eq $correctA[1]) { $noCorrect++ }
if ($answers[2] -eq $correctA[2]) { $noCorrect++ }
if ($answers[3] -eq $correctA[3]) { $noCorrect++ } 
if ($answers[4] -eq $correctA[4]) { $noCorrect++ } 
if ($answers[5] -eq $correctA[5]) { $noCorrect++ } 
if ($answers[6] -eq $correctA[6]) { $noCorrect++ } 
if ($answers[7] -eq $correctA[7]) { $noCorrect++ } 
if ($answers[8] -eq $correctA[8]) { $noCorrect++ } 
if ($answers[9] -eq $correctA[9]) { $noCorrect++ } 

Clear-Host

#this provides the user their score range along with the name of a character form the office

if (($noCorrect -eq 0) -or ($noCorrect -eq 1)){
    Write-Host 
    Write-Host "You got 0-1 questions correct"
    Write-Host 
    Write-Host "You are a Kelly"
}

if (($noCorrect -eq 2) -or ($noCorrect -eq 3)) {
    Write-Host 
    Write-Host "You got 2-3 question correct"
    Write-Host 
    Write-Host "You are a Kevin "
}

if (($noCorrect -eq 4) -or ($noCorrect -eq 5)) {
    Write-Host 
    Write-Host " You got 4-5 questions correct"
    Write-Host 
    Write-Host "You are a Creed"
}

if (($noCorrect -eq 6) -or ($noCorrect -eq 7)) {
    Write-Host 
    Write-Host "You got 6-7 questions correct."
    Write-Host 
    Write-Host "You are a Jim"
}

if (($noCorrect -eq 8) -or ($noCorrect -eq 9)) {
    Write-Host 
    Write-Host "You got 8-9 questions correct."
    Write-Host 
    Write-Host "You are a Michael"
}

if ($noCorrect -eq 10) {
    Write-Host 
    Write-Host "You got 10 questions correct"
    Write-Host 
    Write-Host " You are a Dwight. Some would say Genuis!"
    Write-Host
}

Write-Host "Thank you for playing!"
