cd "C:\Users\laule\Downloads\World_Kuznets_Data\Country_Excel_Data"

local files: dir "C:\Users\laule\Downloads\World_Kuznets_Data\Country_Excel_Data" files "*.xlsx"

foreach file in `files' {
	clear
	import excel `file', clear sheet("Sheet1") cellrange(A1) firstrow
	save `file'.dta, replace
}