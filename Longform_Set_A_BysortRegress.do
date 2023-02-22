import excel "C:\Users\laule\Downloads\(WorldKuznets)Data\Country_Data\Longform_Set_A.xlsx", sheet("Sheet1") cellrange(A1:C92) firstrow
gen GDP_2 = GDP*GDP
bysort Country: regress Gini GDP GDP_2