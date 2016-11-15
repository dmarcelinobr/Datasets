/**************************************************

Replication of results for paper 
"Interpreting Regression Discontinuity Designs with Multiple Cutoffs", Journal of Politics, forthcoming. 
By Matias Cattaneo, Luke Keele, Rocio Titiunik and Gonzalo Vazquez-Bare.
March 12, 2016

****************************************************/
clear all 
program drop _all
set more off

 * Open log file 
log using " 01-final-analysis.log", replace text

/************************************

Example 1: The Effect of Incumbency for the PSDB in Brazilian Elections

*************************************/

use "./data-election-example.dta", clear
/* Table 1 */
gen cutoff_index = .
replace cutoff_index = 1 if votesh_so >= 0  & votesh_so < 35
replace cutoff_index = 2 if votesh_so >= 35 & votesh_so < 40
replace cutoff_index = 3 if votesh_so >= 40 & votesh_so < 45
replace cutoff_index = 4 if votesh_so >= 45 & votesh_so < 50

gen victories = (x_norm > 0)
gen defeats   = (x_norm < 0) 
drop if cutoff_index==.
collapse (mean) victories=victories defeats=defeats (count) n=y, by(cutoff_index)
replace victories = victories * 100
replace defeats   = defeats * 100
label define cutoff_levels 1 "[0, 35)"  2 "[35, 40)"  3 "[40, 45)"  4 "[45, 50)"
label values cutoff_index cutoff_levels
order cutoff_index n victories defeats

use "./data-election-example.dta", clear
/* Information in  Figure 5 */
* Normalizing-and-pooling analysis
rdrobust y x_norm if votesh_so<= 52 , c(0) scaleregul(0)

* Analysis for every cutoff-value on the grid 
rdrobust y x_norm if cutoff_34==1, c(0) scaleregul(0)
rdrobust y x_norm if cutoff_37==1, c(0) scaleregul(0)
rdrobust y x_norm if cutoff_40==1, c(0) scaleregul(0)
rdrobust y x_norm if cutoff_43==1, c(0) scaleregul(0)
rdrobust y x_norm if cutoff_46==1, c(0) scaleregul(0)
rdrobust y x_norm if cutoff_49==1, c(0) scaleregul(0)

/************************************

Example 2: The Effect of Federal Transfers on Political Corruption in Brazil

*************************************/

/* Table 2 */
use "./data-population-example.dta", clear
matrix A = J(7,2,0)
matrix colnames A = "Cutoff Value" "Sample Size"
local i = 1
foreach x in 10189 13585 16981 23773 30565 37356 44148 {
	count if cutoff_`x' == 1 	
	matrix A[`i',1] = `x'
	matrix A[`i',2] = `r(N)'
	local i = `i' + 1
}
matrix list A

/* Information in  Figure 6 */
* Normalizing-and-pooling analysis
rdrobust y x_norm, c(0) scaleregul(0)

* Cutoff-by-cutoff analysis
rdrobust y x if cutoff_10189 ==1, c(10189) scaleregul(0) 
rdrobust y x if cutoff_13585 ==1, c(13585) scaleregul(0) 
rdrobust y x if cutoff_16981 ==1, c(16981) scaleregul(0) 
rdrobust y x if cutoff_23773 ==1, c(23773) scaleregul(0)
rdrobust y x if cutoff_30565 ==1, c(30565) scaleregul(0) 
rdrobust y x if cutoff_37356 ==1, c(37356) scaleregul(0) 
rdrobust y x if cutoff_44148 ==1, c(44148) scaleregul(0) 

/************************************

Example 3: The Effect of School Infrastructure Improvements in Chile

*************************************/

use  "./data-education-example.dta", replace
/* Table 3 */
replace x = (-1) * x 
replace cutoff = (-1) * cutoff 
collapse (max) cutoff (count) n=x (min) x_min=x (max) x_max=x, by(region_group)
label define cutoff_levels 1 "Region 7" 2 "Regions 6,8" 3 "Region 13"  4 "Region 9"  5 "Regions 2,5,10"  6 "Regions 1,3,4" 7 "Regions 11, 12" 
label values region_group cutoff_levels
order region_group cutoff n x_min x_max

use "./data-education-example.dta", replace
/* Information in Figure 7*/
* Normalizing-and-pooling analysis
rdrobust y x_norm, c(0) scaleregul(0)

* Cutoff-by-cutoff analysis
rdrobust y x_norm if region_group ==1, c(0) scaleregul(0) 
rdrobust y x_norm if region_group ==2, c(0) scaleregul(0) 
rdrobust y x_norm if region_group ==3, c(0) scaleregul(0) 
rdrobust y x_norm if region_group ==4, c(0) scaleregul(0) 
rdrobust y x_norm if region_group ==5, c(0) scaleregul(0) 
rdrobust y x_norm if region_group ==6, c(0) scaleregul(0) 


/************************************

Table S2 in Supplemental Appendix 

*************************************/
/* Democratic Party columns */
use "./data-senate.dta", clear
gen cutoff_index = .
replace cutoff_index = 1 if votesh_so >= 0  & votesh_so < 35
replace cutoff_index = 2 if votesh_so >= 35 & votesh_so < 40
replace cutoff_index = 3 if votesh_so >= 40 & votesh_so < 45
replace cutoff_index = 4 if votesh_so >= 45 & votesh_so < 50
drop if cutoff_index == .
gen victories = (demmv > 0)
gen defeats   = (demmv< 0) 
collapse (mean) victories=victories defeats=defeats (count) n=demwinnext2, by(cutoff_index)
label define cutoff_levels 1 "[0, 35)"  2 "[35, 40)"  3 "[40, 45)"  4 "[45, 50)"
label values cutoff_index cutoff_levels
replace victories = victories * 100
replace defeats   = defeats * 100
order cutoff_index n victories defeats

/* PSDB columns */
use "./data-election-example.dta", clear
gen cutoff_index = .
replace cutoff_index = 1 if votesh_so >= 0  & votesh_so < 35
replace cutoff_index = 2 if votesh_so >= 35 & votesh_so < 40
replace cutoff_index = 3 if votesh_so >= 40 & votesh_so < 45
replace cutoff_index = 4 if votesh_so >= 45 & votesh_so < 50
drop if cutoff_index == .
gen victories = (x_norm > 0)
gen defeats   = (x_norm < 0) 
collapse (mean) victories=victories defeats=defeats (count) n=y, by(cutoff_index)
label define cutoff_levels 1 "[0, 35)"  2 "[35, 40)"  3 "[40, 45)"  4 "[45, 50)"
label values cutoff_index cutoff_levels
replace victories = victories * 100
replace defeats   = defeats * 100
order cutoff_index n victories defeats

* Close log file
log close
