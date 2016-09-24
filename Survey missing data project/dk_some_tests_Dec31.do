***Analyses Dec 31
***on the German case: I need to account for the whole distributioon of DKs which is much 
***larger than in all other cases; hence, the marks of dk at 5, 10, 15 up to 50

use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\uwo_2010_medw_full_weights_2_mod_august_5_DK.dta", clear
reg intent_2_vote_q7b test1 interest_elect itrst_el_x_test1
reg intent_2_vote_q7a test1 interest_elect itrst_el_x_test1
reg intent_2_vote_q7a test1 interest_elect
tab  intent_2_vote_q7a
tab  intent_2_vote_q7b
reg intent_2_vote_q7b test1 interest_elect itrst_el_x_test1
reg intent_2_vote_q7b interest_elect
tab  test2
sum  test1 test2 test3 test4 test6 test7
reg intent_2_vote_q7b test2 interest_elect
reg intent_2_vote_q7b test1 interest_elect
gen interest_test2=test2* interest_elect
reg intent_2_vote_q7b test2 interest_elect  interest_test2


*** test1=test2 but just for those who were also in the posttest
corr test1 test2
reg intent_2_vote_q7b  interest_elect  if test2!=.
tab test1

***Trying to reduce the variation on the dk variable in the german case is not working, I drop the variable below.

gen new_test1=test1
recode new_test1=45 if test1>=45
replace new_test1=45 if test1>=45
reg intent_2_vote_q7b new_test1  interest_elect
gen interest_new_test1=new_test1 *  interest_elect
reg intent_2_vote_q7b new_test1  interest_elect  interest_new_test1
drop new_test1
drop interest_new_test1


reg intent_2_vote_q7b test1 interest_elect itrst_el_x_test1
reg intent_2_vote_q7b interest_elect
tab test1

***The variation on the dk variable is much lower in the other cases:
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\team_Montreal_test_dk.dta", clear
tab  test_wave5
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\Turnout BC QC yougovpolymetrix_DK.dta", clear
tab  test1
