use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\uwo_2010_medw_full_weights_2_mod_august_5_DK.dta", clear

***Using all the questions in the FINALJAN25 tab in the excel file that are not highlighted in green. 
gen newtestjan29= flag_q11+ flag_q12 +flag_q13 +flag_q14 +flag_q15 +flag_q16 +flag_q17a +flag_q17b +flag_q17c+ flag_q17d+ flag_q17e +flag_q18a +flag_q18b +flag_q18c +flag_q18d + flag_q18e +flag_q25 +flag_q26 +flag_q30 +flag_q31 +flag_q32a +flag_q32b +flag_q32c+ flag_q33a +flag_q33b +flag_q33c +flag_q34 +flag_q34a1 +flag_q34a2 +flag_q40a + flag_q47a +flag_q47b+ flag_q47c +flag_q47d +flag_q1a_merged +flag_q1b_merged + flag_q1c_merged
tab  newtestjan29
tab voted
tab voted [iw= 1+newtestjan29]
tab voted [iw= (1+newtestjan29)*786/2779]
logit voted age age_sq edu [iw= (1+newtestjan29)*786/2779]
logit voted age age_sq edu
logit voted interest_elect age age_sq edu [iw= wtpostges]
logit voted interest_elect age age_sq edu [iw= wtpost]
tab1 q38a
tab1 q38a q38b
gen flag_q38a=1 if q38a==9
gen flag_q38b=1 if q38b==9
gen flag_q39a=1 if q39a==9
gen flag_q39b=1 if q39b==9
gen flag_q41a=1 if q41a==9
gen flag_q41b=1 if q41b==9
gen flag_q41c=1 if q41c==9
gen flag_q46a=1 if q46a==99
tab q46a
gen flag_q46b=1 if q46b==99
tab q49
tab q50
gen flag_q49=1 if q49==9
gen flag_q50=1 if q50==9
recode  flag_q38a flag_q38b flag_q39a flag_q39b flag_q41a flag_q41b flag_q41c flag_q46a flag_q46b flag_q49 flag_q50 (.=0)

****Including all the questions in the FINALJAN25 tab in the excel file
gen newtestjan29_1= newtestjan29+ flag_q38a +flag_q38b+ flag_q39a+ flag_q39b +flag_q41a +flag_q41b +flag_q41c +flag_q46a+ flag_q46b +flag_q49 +flag_q50

tab voted [iw= 1+newtestjan29_1] if flag==.
tab voted [iw= 1+newtestjan29] if flag==.

****Adding corruption:
gen  newtestjan29_2= newtestjan29_1+ flag_q54a+ flag_q54b+ flag_q54c


tab voted [iw= 1+newtestjan29_2] if flag==.
tab voted if flag==.
logit voted age age_sq edu [iw=test7]
logit voted age age_sq edu [iw= (1+newtestjan29_2)*752/3362]
logit voted age age_sq edu [iw=wtpostges]
logit voted age age_sq edu [iw=wtpost]
logit voted age age_sq edu if flag==. [iw=wtpost]
logit voted age age_sq edu if flag==. [iw=wtpostges]
logit voted age age_sq edu [iw= (1+newtestjan29_2)*752/3362] if flag==.
logit voted age age_sq edu [iw= test7] if flag==.
tab q2

****Adding corruption + the most important issue in the election
gen  newtestjan29_3= newtestjan29_2+ flag_q2
tab voted [iw=1+ newtestjan29_3]
tab voted [iw=1+ newtestjan29_3] if flag==.
tab voted  if flag==.
tab voted [iw=(1+ newtestjan29_3)*752/3377] if flag==.
logit voted age age_sq edu [iw=(1+ newtestjan29_3)*752/3377 ] if flag==.
tab q24
logit voted interest_elect age age_sq edu [iw=(1+ newtestjan29_3)*752/3377 ] if flag==.
logit voted interest_elect age age_sq edu [iw=wtpostges ] if flag==.
logit voted interest_elect age age_sq edu [iw=test7 ] if flag==.
logit voted interest_elect age age_sq edu [iw=wtpost ] if flag==.
logit voted interest_elect age age_sq edu [iw=wtpreges ] if flag==.
logit voted interest_elect age age_sq edu [iw=wtpreges ]
logit voted interest_elect age age_sq edu [iw=wtpre ]
logit voted interest_elect age age_sq edu [iw=wtpre ] if flag==.
tab interest_elect
logit voted q5 age age_sq edu [iw=wtpre ] if flag==. & q5<99
logit voted q5 age age_sq edu [iw=wtpost ] if flag==. & q5<99
logit voted q5 age age_sq edu [iw=wtpostges ] if flag==. & q5<99
logit voted q5 age age_sq edu [iw=wtpreges ] if flag==. & q5<99
logit voted q5 age age_sq edu [iw= iw=(1+ newtestjan29_3)*752/3377 ] if flag==. & q5<99
logit voted q5 age age_sq edu [iw=(1+ newtestjan29_3)*752/3377 ] if flag==. & q5<99
logit voted q5 age age_sq edu  if flag==. & q5<99
logit voted q5 age age_sq edu [iw=test7] if flag==. & q5<99
logit voted q5 age age_sq edu [iw=(1+ newtestjan29_3)*752/3377 ] if flag==. & q5<99
logit voted q5 age age_sq edu [pw=(1+ newtestjan29_3)*752/3377 ] if flag==. & q5<99
logit voted q5 age age_sq edu [pw=wtpost] if flag==. & q5<99
logit voted q5 age age_sq edu [pw=wtpre] if flag==. & q5<99
logit voted q5 age age_sq edu [pw=wtpostges] if flag==. & q5<99
logit voted q5 age age_sq edu [pw=wtpreges] if flag==. & q5<99
logit voted q5 age age_sq edu [pw=(1+newtestjan29_2)*752/3362] if flag==. & q5<99
logit voted q5 age age_sq edu [pw=test7] if flag==. & q5<99
logit voted q5 age edu [pw=(1+ newtestjan29_3)*752/3377 ] if flag==. & q5<99
logit voted q5 age edu [pw=wtpostges ] if flag==. & q5<99
corr  newtestjan29_1 interest_elect
corr  newtestjan29_2 interest_elect
corr  newtestjan29_3 interest_elect
corr  newtestjan29_3 interest_elect if flag==.
pwcorr   newtestjan29 newtestjan29_1 newtestjan29_2 newtestjan29_3 interest_elect if flag==.
pwcorr   newtestjan29 newtestjan29_1 newtestjan29_2 newtestjan29_3 interest_elect  qsd2 if flag==.
pwcorr   newtestjan29 newtestjan29_1 newtestjan29_2 newtestjan29_3 interest_elect age age_sq qsd2 if flag==.
tab q4
tab q4, nol
tab interest_elect
probit voted age age_sq edu if flag==.
probit voted age age_sq edu if flag==. [iw=wtpre]
probit voted age age_sq edu if flag==. [iw=wtpost]
probit voted age age_sq edu if flag==. [iw=wtpreges]
probit voted age age_sq edu if flag==. [iw=wtpostges]
probit voted age age_sq edu if flag==. [iw=(1+newtestjan29_2)*752/3362]
probit voted age age_sq edu if flag==. [iw=test7]
probit voted age age_sq edu [iw=test7]
probit voted age age_sq edu  [iw=(1+newtestjan29_2)*752/3362]
probit voted age age_sq edu [iw=wtpre]
probit voted age age_sq edu [iw=wtpost]
probit voted age age_sq edu [iw=wtpostges]
probit voted age age_sq edu [iw=wtpreges]
probit voted age age_sq edu [iw=test7]
probit voted age age_sq edu  [iw=(1+newtestjan29_2)*752/3362]
logit voted age age_sq edu  [iw=(1+newtestjan29_2)*752/3362]
logit voted age age_sq edu [iw=wtpreges]
logit voted age age_sq edu [iw=wtpostges]
logit voted age age_sq edu [iw=wtpre]
logit voted age age_sq edu [iw=wtpost]
tab voted [iw= 1+newtestjan29_1]
tab voted [iw= (1+newtestjan29_1)*786/3293]
logit  voted age age_sq [iw= (1+newtestjan29_1)*786/3293]
logit  voted age age_sq edu [iw= (1+newtestjan29_1)*786/3293]

***Generating the weights 
****FIRST WEIGHT: test_jan29 -- Including all the questions in the FINALJAN25 tab in the excel file

gen test_jan29=(1+newtestjan29_1)*786/3293
logit  voted age age_sq edu [iw= test_jan29 ]
logit  voted age age_sq edu [iw= wtpre]
logit  voted age age_sq edu [iw= wtpost]
logit  voted age age_sq edu [iw= wtpreges]
logit  voted age age_sq edu [iw= wtpostges]
logit  voted interest_elect  age age_sq edu [iw= test_jan29 ]
logit  voted interest_elect  age age_sq edu [iw= wtpre]
logit  voted interest_elect  age age_sq edu [iw= wtpost]
logit  voted interest_elect  age age_sq edu [iw= wtpreges]
logit  voted interest_elect  age age_sq edu [iw= wtpostges]

***Generating the weights 
***SECOND WEIGHT: test_jan29_1 -- Including all the questions in the FINALJAN25 tab in the excel file + corruption

gen  test_jan29_1=(1+ newtestjan29_2)*786/3652
logit  voted age age_sq edu [iw= test_jan29_1 ]
logit  voted interest_elect age age_sq edu [iw= test_jan29_1 ]

***Generating the weights
***THIRD WEIGHT: test_jan29_2 -- Including all the questions in the FINALJAN25 tab in the excel file + corruption + most imp pb

gen  test_jan29_2=(1+ newtestjan29_3)*786/3671
logit  voted interest_elect age age_sq edu [iw= test_jan29_2 ]
logit  voted age age_sq edu [iw= test_jan29_2 ]

***Generating the weights
***FOURTH WEIGHT: test_jan29_0 -- Including all the questions in the FINALJAN25 tab in the excel file that are not highlighted in green
gen test_jan29_0=(1+ newtestjan29)*786/2779
logit  voted age age_sq edu [iw= test_jan29_0 ]
logit  voted interest_elect age age_sq edu [iw= test_jan29_0 ]

***I've checked for how I scale the wieghts, and what I do is divide with the mean, in all cases of those who are re-interviewed. I can
***also divide with the pre-test sample mean, and I get the same results
gen  test_jan29_trial1=1+  newtestjan29_1
sum  test_jan29_trial1 if voted!=.
replace  test_jan29_trial1=test_jan29_trial1/4.189567
tab voted [iw= test_jan29_trial1]
logit  voted interest_elect age age_sq edu [iw=  test_jan29_trial1]
pwcorr  test_jan29 test_jan29_1 test_jan29_2 test_jan29_0 test7 age age_sq edu interest_elect qsd2

***the dks and turnout are correlated
logit voted  test_jan29
logit voted  test_jan29_1
logit voted  test_jan29_2
logit voted  test_jan29_3
logit voted  test_jan29_0

sum  newtestjan29_1 newtestjan29_2 newtestjan29_3  newtestjan29
save "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\uwo_2010_medw_full_weights_2_mod_august_5_DK.dta", replace

***IV works as before, even better
***What it does, it add extra weight for those who day DK and report a higher than 0 interest in politics. In a way, it factors in sincerity. 
gen new_test29_1_interest= newtestjan29_1*interest_elect
***Before:
reg  intent_2_vote_q7b   interest_elect test1  itrst_el_x_test1
***Now:
reg intent_2_vote_q7b newtestjan29_1 interest_elect  new_test29_1_interest

***The things don't work as well if I remove the flagged individuals at the first wave; 
***That is, I still get significant results, but they don't beat the wtpreges anymore;
***They beat the wtpre.  
***Should consider it. perhaps I'm overthinking these details. 

logit  voted age age_sq edu [iw=  test_jan29 ] if flag==.
logit  voted age age_sq edu [iw=  test_jan29_1] if flag==.
logit  voted age age_sq edu [iw=  test_jan29_2] if flag==.
logit  voted age age_sq edu [iw=  test_jan29_0] if flag==.
logit  voted age age_sq edu [iw=  wtpre] if flag==.
logit  voted age age_sq edu [iw=  wtpost] if flag==.
logit  voted age age_sq edu [iw=  wtpreges] if flag==.
logit  voted age age_sq edu [iw=  wtpostges] if flag==.
logit  voted interest_elect age age_sq edu [iw=  test_jan29 ] if flag==.
logit  voted interest_elect age age_sq edu [iw=  test_jan29_1 ] if flag==.
logit  voted interest_elect age age_sq edu [iw=  test_jan29_2 ] if flag==.
logit  voted interest_elect age age_sq edu [iw=  test_jan29_0 ] if flag==.
logit  voted interest_elect age age_sq edu [iw=  wtpre ] if flag==.
logit  voted interest_elect age age_sq edu [iw=  wtpost ] if flag==.
logit  voted interest_elect age age_sq edu [iw=  wtpreges ] if flag==.
logit  voted interest_elect age age_sq edu [iw=  wtpostges ] if flag==.
