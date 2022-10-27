# Project 2 Instruction

Hi there! This script is an improvement on project 1. 

First, make sure you launch powershell ISE as an ADMINISTRATOR. This will allow cmdlet to install.

Second, go ahead and click the green play button to run the script. The script will then check to get if the Get-Weather cmdlet is installed and if not then try to install it.
You may receive some prompts asking if you want to continue, you should answer yes.

Then you will be asked what your name is which you should answer with your first name only.

The command will then return a greeting based on the time of day, the time, and then an encouraging message based on the time of based on the time of day.

From there you will be asked if you want to know the weather for your area. You can answer with 'y' or 'n'

If 'y' then you will be asked to enter your zip then the weather will be displayed,

If 'n' then it will say goodbye with your name and then wish you a good rest of your day, whatever day it may be.

Below is an example of the scipt:

```powershell
Hello! What is your name
```

I entered Ethan

```powershell
Good Afternoon Ethan! It is 3:20:34 PM. It is not to late to go to the gym. Get moving!
Would you like to know the weather? y/n:
```
I answered 'y' for yes

```powershell
What is your Zip Code?:
```

I entered 88901 for Las Vegas.

```powershell
Date       maxTemp minTemp Summary     
----       ------- ------- -------     
10/17/2022 83      64      Mostly Sunny
10/18/2022 85      65      Partly Sunny
10/19/2022 86      65      Partly Sunny
10/20/2022 84      64      Partly Sunny
10/21/2022 84      63      Mostly Sunny
10/22/2022 82      58      Breezy      
10/23/2022 75      61      Mostly Sunny
```
Earlier if I had chosen to answer 'n' for no for the weather question it would have returned this

```powershell
Goodbye, Ethan! Enjoy the rest of your Monday!
```
