***UK results final, jan 23
**note that I've overwritten the data file

use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\team_Montreal_test_dk.dta", clear
sum  scaled_testw5

***rename previous interest in pols with w5; generate new variable for interest in pols reported at w6
rename  itrst_pol  itrst_pol_w5
sum  w6_p830q1
tab  w6_p830q1
gen interest_pols_w6=w6_p830q1 if w6_p830q1<5
tab  interest_pols_w6
replace  interest_pols_w6= 5-interest_pols_w6
tab  interest_pols_w6
pwcorr  test_wave5 interest_pols_w6 itrst_pol_w5
pwcorr  test_wave5 interest_pols_w6 itrst_pol_w5 age
pwcorr  test_wave5 interest_pols_w6 itrst_pol_w5 age  age_sq edu
pwcorr  test_wave5 interest_pols_w6 itrst_pol_w5 age  age_sq edu female
pwcorr  test_wave5 interest_pols_w6 itrst_pol_w5  voted age  age_sq edu female

***the variable voted is based on w6_p10050q3
tab  w6_p10050q3 voted
corr w6_p10050q3 voted

***see how the frequencies of voted come out; pct of not voted decreases most when weighted by the dkweight
tab voted
tab voted [iw= scaled_testw5]
tab voted [iw=  w5_W8_oth]
tab voted [iw=   itrst_pol_w5]
tab voted [iw= interest_pols_w6]
tab voted [iw= scaled_testw5]
tab voted [iw=  w5_W8_oth]

***check for correlations b/w dk & other variables: 
pwcorr  test_wave5 itrst_pol_w5   w5_p820q1
***satisfaction with democracy
tab  w5_p820q1
tab  w5_p820q1, nol
***dk & interest in politics
pwcorr  test_wave5 itrst_pol_w5
pwcorr  test_wave5 w5_p820q1 if w5_p820q1<5
pwcorr  test_wave5 w5_p820q1 if w5_p820q1<5, sig
pwcorr  test_wave5 w5_p820q1 if w5_p820q1<5
tab  test_wave5 w5_p820q1 if w5_p820q1<5
pwcorr  test_wave5 interest_pols_w6 voted
***cors with demographics
pwcorr  test_wave5 age  age_sq edu female
tab edu
pwcorr  test_wave5 age  age_sq edu female, sig

***wieghing models: all work best with dk as a weight; but all coefficients are significant when I leave age_sq out; 
***leaving age_sq out does not affect the rsq at all. 
***age only models:
logit voted age
logit voted age [iw= w5_W8_oth]
logit voted age [iw=  scaled_testw5]
***age edu models
logit voted age edu
logit voted age edu [iw=scaled_testw5 ]
logit voted age edu [iw=w5_W]
***age edu age_sq models
logit voted age edu age_sq
logit voted age edu age_sq [iw=scaled_testw5 ]
logit voted age edu age_sq [iw=w5_W8_oth ]
***age edu age_sq age*edu models
logit voted age edu age_sq age_edu  [iw=  scaled_testw5]
logit voted age edu age_sq age_edu
logit voted age edu age_sq age_edu  [iw=  w5_W8_oth ]
***with the interest variable measured in the posttest
logit voted age edu age_sq  interest_pols_w6
logit voted interest_pols_w6 age  age_sq edu
logit voted interest_pols_w6 age  age_sq edu [iw=scaled_testw5 ]
logit voted interest_pols_w6 age  age_sq edu [iw=w5_W8_oth ]
***with the interest variable measured in the posttest, without age_sq
logit voted interest_pols_w6 age  edu
logit voted interest_pols_w6 age  edu [iw=scaled_testw5 ]
logit voted interest_pols_w6 age  edu [iw=w5_W8_oth ]

***with the interest variable measured in the pretest
logit voted  itrst_pol_w5 age  age_sq edu
logit voted  itrst_pol_w5 age  age_sq edu [iw=scaled_testw5 ]
logit voted  itrst_pol_w5 age  age_sq edu [iw=w5_W ]
***with the interest variable measured in the pretest, woithout age_sq
logit voted  itrst_pol_w5 age  edu
logit voted  itrst_pol_w5 age  edu [iw=scaled_testw5 ]
logit voted  itrst_pol_w5 age  edu [iw=w5_W]
save "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\team_Montreal_test_dk.dta", replace
