*clear old data
clear
*import data
import delimited "C:\Users\GTjohnso\Documents\Georges Project Data.csv"
*start log
log using "C:\Users\GTjohnso\Documents\Infant Mortality Project George Johnson.smcl", replace

*create scatter plot from most recent year data was taken from
scatter gdppercapita underfivemortalityrate if year == 2018 || lfit gdp underfivemortalityrate if year == 2018
graph export "C:\Users\GTjohnso\Documents\2018 GDP vs Infant Mortality.png", as(png) replace


*create scatter plot from oldest year data was taken from
scatter gdppercapita underfivemortalityrate if year == 1950 || lfit gdp underfivemortalityrate if year == 1950
graph export "C:\Users\GTjohnso\Documents\1950 GDP vs Infant Mortality.png", as(png) replace

*model 1 of just infant mortality as a function of gdp
reg underfivemortalityrate gdppercapita
estimates store model1

*model 2 of infant mortality as a function of gdp and years of schooling
reg gdppercapita underfivemortalityrate gdppercapita combinedaverageyearsofeducationf 
estimates store model2

*model 3 of infant mortality as a function of gdp, years of schooling, life expectancy, and urbanization
reg underfivemortalityrate gdppercapita combinedaverageyearsofeducationf lifeexpectancytypeperiodsexbotha urbanpopulationoftotalpopulation
estimates store model3

*create table
esttab model1 model2 model3 using "C:\Users\GTjohnso\Documents\table.csv", cells(b(star fmt(3)) se(fmt(3))) stats(r2 N) starlevels(* 0.10 ** 0.05 *** 0.01) mti("Model 1" "Model 2" "Model 3") label nonumber collabels(none) noobs replace


*close log
log close

