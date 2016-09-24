***Attempts to see if there is indeed repsonse fatigue, by testing whether starting to say DK after a certain time makes one exagerate socially
***desirable qualities; turns out it doesn't matter the time you started to say DK, it only matters how many times you say it. 
***UK case
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\team_Montreal_test_dk.dta", clear
tab1  flag_w6_p110q1 flag_w6_p120q1 flag_w6_p130q1 flag_w6_p160q1 flag_w6_p170q1 flag_w6_p180q1
tab1  flag_w5_p110q1 flag_w5_p120q1 flag_w5_p130q1 flag_w5_p160q1 flag_w5_p170q1 flag_w5_p180q1 flag_w5_p310q1 flag_w5_p320q1 flag_w5_p330q1 flag_w5_p340q1
tab  test_wave5 if  flag_w5_p110q1==0 &  flag_w5_p120q1==0 & flag_w5_p130q1==0 & flag_w5_p160q1==0 & flag_w5_p170q1 ==0 & flag_w5_p180q1==0 & flag_w5_p310q1==0 & flag_w5_p320q1==0 & flag_w5_p330q1==0 &  flag_w5_p340q1==0 &  flag_w5_p400q1==0 & flag_w5_p410q1==0 & flag_w5_p420q1==0
tab test_wave5
sum  flag_w5_p110q1 flag_w5_p120q1 flag_w5_p130q1 flag_w5_p160q1 flag_w5_p170q1 flag_w5_p180q1 flag_w5_p310q1 flag_w5_p320q1 flag_w5_p330q1 flag_w5_p340q1 flag_w5_p400q1 flag_w5_p410q1 flag_w5_p420q1 flag_w5_p510q1 flag_w5_p510q2 flag_w5_p520q1 flag_w5_p520q2 flag_w5_p530q1 flag_w5_p550q1 flag_w5_p650q1 flag_w5_p660q1 flag_w5_p670q1 flag_w5_p680q1 flag_w5_p690q1 flag_w5_p770q1 flag_w5_p820q1 flag_w5_p1135q1
***Generating a flag for starting to say DK later in the survey:
gen new_flag==1  if  flag_w5_p110q1==0 &  flag_w5_p120q1==0 & flag_w5_p130q1==0 & flag_w5_p160q1==0 & flag_w5_p170q1 ==0 & flag_w5_p180q1==0 & flag_w5_p310q1==0 & flag_w5_p320q1==0 & flag_w5_p330q1==0 &  flag_w5_p340q1==0 &  flag_w5_p400q1==0 & flag_w5_p410q1==0 & flag_w5_p420q1==0 & test_wave5 !=0
gen new_flag=1  if  flag_w5_p110q1==0 &  flag_w5_p120q1==0 & flag_w5_p130q1==0 & flag_w5_p160q1==0 & flag_w5_p170q1 ==0 & flag_w5_p180q1==0 & flag_w5_p310q1==0 & flag_w5_p320q1==0 & flag_w5_p330q1==0 &  flag_w5_p340q1==0 &  flag_w5_p400q1==0 & flag_w5_p410q1==0 & flag_w5_p420q1==0 & test_wave5!=0
tab new_flag
recode new_flag .==0
recode new_flag .=0
reg  intent_2_vote new_flag
reg  intent_2_vote new_flag  itrst_pol
gen new_flag_interest= itrst_pol*new_flag
reg  intent_2_vote new_flag  itrst_pol  new_flag_interest
corr  new_flag itrst_pol
tab  itrst_pol if new
tab  itrst_pol if new_flag==1
gen new_flag2=new_flag

***generating a flag for the number of DSKs one says after a certain time, if they didn't say DK at all up to a certain point in the survey
replace new_flag2=test_wave5 if new_flag==1
reg  intent_2_vote new_flag2
reg  intent_2_vote new_flag2  itrst_pol
gen new_flag2_sq= new_flag2* new_flag2
reg  intent_2_vote new_flag2   new_flag2_sq
reg  intent_2_vote new_flag2   new_flag2_sq  itrst_pol
gen new_flag2_interest= new_flag2* itrst_pol
reg  intent_2_vote new_flag2   new_flag2_sq  itrst_pol  new_flag2_interest
logit voted new_flag2   new_flag2_sq  itrst_pol  new_flag2_interest
logit voted new_flag2    itrst_pol  new_flag2_interest
logit voted new_flag2    itrst_pol
logit voted  test_wave5   itrst_pol
logit voted  test_wave5
logit voted  test_wave5   itrst_pol
logit voted  itrst_pol
logit voted  test_wave5   itrst_pol
logit voted  test_wave5
reg  intent_2_vote  test_wave5 new_flag
reg  intent_2_vote  test_wave5 new_flag2
logit voted  test_wave5 new_flag2
logit voted  test_wave5  itrst_pol
logit voted  test_wave5  itrst_pol  interest_x_testw5
logit voted  test_wave5   intent_2_vote
logit voted   intent_2_vote
logit voted  test_wave5   intent_2_vote
logit voted   intent_2_vote
corr  test_wave5  intent_2_vote if voted==.
corr  test_wave5  intent_2_vote if voted!=.
save "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\team_Montreal_test_dk.dta", replace

***German data
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\uwo_2010_medw_full_weights_2_mod_august_5_DK.dta", clear
sum  flag_q2 flag_q3 flag_q11 flag_q12 flag_q13 flag_q14 flag_q15 flag_q16 flag_q17a flag_q17b flag_q17c flag_q17d flag_q17e flag_q18a flag_q18b flag_q18c flag_q18d flag_q18e flag_q19a flag_q19b flag_q19c flag_q19d flag_q19e flag_q21a flag_q21b flag_q21c flag_q21d  flag_q21e flag_q21f flag_q21g flag_q21h flag_q24 flag_q25 flag_q26 flag_q29 flag_q30 flag_q31 flag_q32a flag_q32b flag_q32c flag_q32d flag_q32e flag_q33a flag_q33b flag_q33c flag_q33d flag_q33e flag_q34 flag_q34a1 flag_q34a2 flag_q37 flag_q40a flag_q40b flag_q40c flag_q42 flag_q47a flag_q47b flag_q47c flag_q47d flag_q48a flag_q48b flag_q48c flag_q54a flag_q54b flag_q54c flag_qsd3 flag_qsd3b
corr  intent_2_vote_q7a  flag_qsd3
corr  intent_2_vote_q7b  flag_qsd3
corr  intent_2_vote_q7a intent_2_vote_q7b  flag_q2 flag_q3 flag_q11 flag_q12 flag_q13 flag_q14 flag_q15 flag_q16 flag_q17a flag_q17b flag_q17c flag_q17d flag_q17e flag_q18a flag_q18b flag_q18c flag_q18d flag_q18e flag_q19a flag_q19b flag_q19c flag_q19d flag_q19e flag_q21a flag_q21b flag_q21c flag_q21d  flag_q21e flag_q21f flag_q21g flag_q21h flag_q24 flag_q25 flag_q26 flag_q29 flag_q30 flag_q31 flag_q32a flag_q32b flag_q32c flag_q32d flag_q32e flag_q33a flag_q33b flag_q33c flag_q33d flag_q33e flag_q34 flag_q34a1 flag_q34a2 flag_q37 flag_q40a flag_q40b flag_q40c flag_q42 flag_q47a flag_q47b flag_q47c flag_q47d flag_q48a flag_q48b flag_q48c flag_q54a flag_q54b flag_q54c flag_qsd3 flag_qsd3b  flag_q1a_merged flag_q1b_merged flag_q1c_merged
pwcorr  intent_2_vote_q7a intent_2_vote_q7b  flag_q2 flag_q3 flag_q11 flag_q12 flag_q13 flag_q14 flag_q15 flag_q16 flag_q17a flag_q17b flag_q17c flag_q17d flag_q17e flag_q18a flag_q18b flag_q18c flag_q18d flag_q18e flag_q19a flag_q19b flag_q19c flag_q19d flag_q19e flag_q21a flag_q21b flag_q21c flag_q21d  flag_q21e flag_q21f flag_q21g flag_q21h flag_q24 flag_q25 flag_q26 flag_q29 flag_q30 flag_q31 flag_q32a flag_q32b flag_q32c flag_q32d flag_q32e flag_q33a flag_q33b flag_q33c flag_q33d flag_q33e flag_q34 flag_q34a1 flag_q34a2 flag_q37 flag_q40a flag_q40b flag_q40c flag_q42 flag_q47a flag_q47b flag_q47c flag_q47d flag_q48a flag_q48b flag_q48c flag_q54a flag_q54b flag_q54c flag_qsd3 flag_qsd3b  flag_q1a_merged flag_q1b_merged flag_q1c_merged
tab voted
tab voted [iw= test7]
tab voted [pw= test7]
sum test7
tab test7
tab voted [iw= 1+ test1]
tab voted [iw=( 1+ test1)*786/5238]
svy tab voted [pw= test7]
svy voted [pw= test7]
svy: tab voted [pw= test7]
svy: voted [pw= test7]
tab voted [aw=( 1+ test1)*786/5238]
tab voted [pw=( 1+ test1)*786/5238]
tab voted [iw=( 1+ test1)*786/5238]
tab voted [fw=( 1+ test1)*786/5238]
tab voted [fw=( 1+ test1)]
tab voted [fw=(test1)]
logit voted age edu age_sq
logit voted age edu age_sq [pw=test7]
logit voted age edu age_sq [iw=test7]
logit voted age edu  [iw=test7]
logit voted age edu
logit voted age edu  age_sq [iw=test7]
logit voted age edu  age_sq [aw=test7]
logit voted age edu  age_sq [fw=test7]
logit voted age edu  age_sq [pw=test7]
logit voted age edu  age_sq [iw=test7]
logit voted age edu  age_sq
logit voted age edu  age_sq  age_edu [pw=test7]
logit voted age edu  age_sq  age_edu [iw=test7]
logit voted age edu  age_sq  age_edu [aw=test7]
logit voted age edu  age_sq  age_edu
logit voted age edu  age_sq
logit voted age edu  age_sq [iw=test7]
logit new_voted age edu  age_sq [iw=test7]
logit new_voted age edu  age_sq
logit new_voted age edu  age_sq  age_edu
logit new_voted age edu  age_sq  age_edu [iw=test7]
logit new_voted age edu  age_sq  age_edu [pw=test7]
logit new_voted age edu  age_sq  age_edu [iw=test7], robust
logit new_voted age edu  age_sq  age_edu [iw=test7]
logit new_voted age edu  age_sq  age_edu, robust
logit new_voted age edu  age_sq  age_edu
tab new_voted
tab modeified_voted
tab voted
tab voted [iw=test7]
tab voted [aw=test7]
tab  qpq3
tab voted
tab new_voted
corr voted new_voted
corr voted new_voted test7
logit voted age edu  age_sq  age_edu
logit voted age edu  age_sq  age_edu [iw=test7]
logit voted age edu  age_sq   [iw=test7]
logit voted age edu  age_sq
logit voted age edu  age_sq   [iw=test7], robust
logit voted age edu  age_sq   [pw=test7]
logit voted age edu  age_sq, robust
logit voted age edu  age_sq   [iw= wtpreges]
logit voted age edu  age_sq   [iw= test7]
logit voted age edu  age_sq   [iw=  wtpostges]
logit voted age edu  age_sq   [iw=  wtpostges], robust
logit voted q5 age age_sq edu if q5<11 [iw= wtpostges]
logit voted q5 age age_sq edu if q5<11 [iw= test7]
logit voted q5 age age_sq edu if q5<11 [iw= test7], robust
logit voted q5 age age_sq edu if q5<11 [iw= wtpostges], robust
logit voted q5 age age_sq  if q5<11 [iw= wtpostges], robust
logit voted q5 age age_sq  if q5<11 [iw= wtpostges]
logit voted q5 age age_sq  if q5<11 [iw= test7]
logit voted q5 age age_sq edu if q5<11 [iw= test7]
logit voted q5 age age_sq edu if q5<11 [iw= wtpostges]
logit voted q5 age age_sq edu if q5<11 [iw= wtpreges]
logit voted q5 age age_sq edu if q5<11 [iw= test7]
logit voted q5 age age_sq edu if q5<11 [iw= wtpost]
logit voted q5 age age_sq edu if q5<11 [iw= test7]
corr test7 edu
corr test7 age age_sq
corr test7 age  wtpre wtpost wtpostges wtpreges
