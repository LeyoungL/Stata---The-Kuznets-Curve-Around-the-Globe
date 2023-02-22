cd "C:\Users\laule\Downloads\World_Kuznets_Data\Country_Data"

local files: dir "C:\Users\laule\Downloads\World_Kuznets_Data\Country_Data" files "*.dta"

foreach file in `files' {
	append using `file'
}

cd "C:\Users\laule\Downloads\World_Kuznets_Data\Country_Graphs"

levels Country, local(CountryList)

local i = 1

foreach Country of local CountryList {
	twoway scatter Gini GDP if Country == "`Country'" || qfit Gini GDP if Country == "`Country'", title("`Country'") ytitle(Gini) xtitle(GDP per Capita)
	local i = `i' + 1
	graph export `Country'.png, replace
}