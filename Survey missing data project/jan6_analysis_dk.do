***The question was wether a better measurement of dk would be pct and not simple number of dks. Turns out that the results are identical. 
**but here they are

***UK data:
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\team_Montreal_test_dk.dta", clear
gen testw5_pct= test_wave5/27
sum test_wave5
corr  itrst_pol testw5_pct test_wave5
reg  intent_2_vote test_wave5
reg  intent_2_vote  testw5_pct


***NRW data:
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\uwo_2010_medw_full_weights_2_mod_august_5_DK.dta", clear
sum  test1
gen test1_pct=test1/70
reg  intent_2_vote_q7b  test1_pct
reg  intent_2_vote_q7b  test1
reg  intent_2_vote_q7b   interest_elect test1_pct
reg  intent_2_vote_q7b   interest_elect test1
tab test1_pct
twoway (scatter interest_elect test1_pct, sort)
