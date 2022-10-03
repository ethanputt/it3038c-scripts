Install-Module -Name ImportExcel

$data = ConvertFrom-Csv @"
Last,First,Grade
Smith,John,74.2
Casey,Sean,93
Doe,Jane,91
Oconnor,Stacy,53
James,Patrick,87
"@

$data | Export-Excel .\studentGrade.xlsx

$data = Import-Excel .\studentGrade.xlsx

#Below Displays your input in a bar chart!
$data

$chart = New-ExcelChartDefinition -XRange Last -YRange Grade -Title "Grades by Student" -NoLegend

$data | Export-Excel .\studentGrade.xlsx -AutoNameRange -ExcelChartDefinition $chart -Show

#In case you wanted a pivot chart instead!
$data | Export-Excel .\studentGrade.xlsx -AutoNameRange -Show -PivotRows Last -PivotData @{'Grade'='sum'} -PivotChartType PieExploded3D

#If you wanted to use this tool but had multiple excel sheets in a workbook and wanted to sepearate them to CSV to use this plugin

#Only uncomment the below lines if needed to use
#(Import-Excel .\LotsOfFiles.xlsx *).GetEnumerator() |
#ForEach-Object { $_.Value | Export-Csv ($_.key + '.csv') }