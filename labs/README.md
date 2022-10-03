# Lab 7 Excel Plugin

Here is how you can create Excel data and visualizations without using excel!

First, lets install the Module we are going to need

```powershell
Install-Module -Name ImportExcel
```
Next lets think about what kind of data we would like to use. For this example I am going to use Student Grades in a class.

```powershell
$data = ConvertFrom-Csv @"
Last,First,Grade
Smith,John,74.2
Casey,Sean,93
Doe,Jane,91
Oconnor,Stacy,53
James,Patrick,87
"@
```
The $data line is going to create the column titles for your data. You can choose as many columns as you would like.

Then we are going to want to export this data before we start to make visualizations with it.
```powershell
$data | Export-Excel .\studentGrade.xlsx
```
Now we need to import it again so the module knows what data to use.
```powershell
$data = Import-Excel .\studentGrade.xlsx
```
Now lets display our data in a bar chart!
```powershell
$data

$chart = New-ExcelChartDefinition -XRange Last -YRange Grade -Title "Grades by Student" -NoLegend

$data | Export-Excel .\studentGrade.xlsx -AutoNameRange -ExcelChartDefinition $chart -Show
```
Now your data is in a bar chart. Awesome!
Now lets try and put it into a pivot chart.
```powershell
$data | Export-Excel .\studentGrade.xlsx -AutoNameRange -Show -PivotRows Last -PivotData @{'Grade'='sum'} -PivotChartType PieExploded3D
```
Sweet! Now we have a pivot chart AND a bar chat in the same workbook.

For a scenario. Let's say your boss gives you a large excel workbook that has multiple sheets of data on it. The boss wnats you to make visualizations with it. We first need to split it up into indivual CSV files in order to create the desired chart type. The following command will help with that! Keep in mind "LotsOfFiles.xlsx" is a placeholder for your large woorkbook.
```powershell
(Import-Excel .\LotsOfFiles.xlsx *).GetEnumerator() |
ForEach-Object { $_.Value | Export-Csv ($_.key + '.csv') }
```
BOOM! There we go we now have multiple CSV files that we can create charts with
