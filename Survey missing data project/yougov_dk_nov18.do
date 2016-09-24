***Nov 18 -- corrections to the RF and RF weight variables in the QCBC data set. 

use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project\Survey missing data project\Turnout BC QC yougovpolymetrix_DK.dta", clear
sum test1 if bc==0 & voted!=.
sum  flag_aw1_q5 flag_aw1_q6 flag_aw1_q14a flag_aw1_q14b flag_aw1_q14c flag_aw1_q14d flag_aw1_q14e flag_aw1_q14f flag_aw1_q14g flag_aw1_q14h flag_aw1_q14i flag_aw1_q14j flag_aw1_q14k flag_aw1_q14l flag_aw1_q14m flag_aw1_q14n flag_aw1_q14o flag_aw1_q17 flag_aw1_q18 flag_aw1_q20e flag_aw1_q24a  flag_aw1_q29 flag_aw1_q43 flag_aw1_q44 flag_aw1_q45 flag_aw1_q49 flag_aw1_q50 flag_aw1_q56_merged flag_aw1_q61 if bc==0 & voted!=.
tab aw1_q5
tab flag_aw1_q43
tab aw1_q43
drop flag_aw1_q43
tab aw1_q56_merged
tab  flag_aw1_q56_merged
tab  flag_aw1_q56_merged if bc==0
tab  flag_aw1_q56_merged if bc==0 & voted!=.
tab  voted if bc==0
tab aw1_q61
drop  flag_aw1_q61
gen test1_new=sum( flag_aw1_q6 flag_aw1_q14a flag_aw1_q14b flag_aw1_q14c flag_aw1_q14d flag_aw1_q14e flag_aw1_q14f flag_aw1_q14g flag_aw1_q14h flag_aw1_q14i flag_aw1_q14j flag_aw1_q14k flag_aw1_q14l flag_aw1_q14m flag_aw1_q14n flag_aw1_q14o flag_aw1_q17 flag_aw1_q18 flag_aw1_q20e flag_aw1_q24a flag_aw1_q29 flag_aw1_q44 flag_aw1_q45 flag_aw1_q49 flag_aw1_q50 flag_aw1_q56_merged)
gen test1_new=(flag_aw1_q6 +flag_aw1_q14a +flag_aw1_q14b +flag_aw1_q14c+ flag_aw1_q14d +flag_aw1_q14e+ flag_aw1_q14f +flag_aw1_q14g+ flag_aw1_q14h+ flag_aw1_q14i +flag_aw1_q14j +flag_aw1_q14k+ flag_aw1_q14l+ flag_aw1_q14m+ flag_aw1_q14n +flag_aw1_q14o)
tatb test1_new
tab test1_new
tab test1_new if bc==0 & voted!=.
gen test1n_new=(flag_aw1_q17+ flag_aw1_q18 +flag_aw1_q20e+ flag_aw1_q24a +flag_aw1_q29 +flag_aw1_q44 +flag_aw1_q45+ flag_aw1_q49 +flag_aw1_q50 + flag_aw1_q56_merged)
tab test1n_new if bc==0 & voted!=.
gen test1_new1=test1_new+test1n_new
tab test1n_new1 if bc==0 & voted!=.
tab test1_new1 if bc==0 & voted!=.
tab test1
tab test1 if bc==0 & voted!=.
rename  test1_new1  test1_correct
tab voted if bc==0
tab voted if bc==0 [iw=test1_correct ]
tab voted if bc==0 [iw=1+test1_correct ]
sum test1_correct  if bc==0 & voted!=.
tab voted if bc==0 [iw=1+test1_correct ]
tab voted if bc==0 [iw=(1+test1_correct)*1483/1334 ]
tab voted if bc==0 [iw=(1+test1_correct)*1334/1483]
gen test_qc_correct=(1+test1_correct)*1334/1483]
gen test_qc_correct=(1+test1_correct)*1334/1483
replace test_qc_correct=. if bc==1
tab test_qc_correct
tab test_qc_correct if voted!=.
tab test_final_qc
tab test_final_qc if bc==0
tab test_final_qc if bc==0 & voted!=.
drop  test4 test_final_qc test2
logit voted  age age_sq edu
logit voted  age age_sq edu if bc==0
sum voted  age age_sq edu if bc==0
logit voted  age age_sq edu if bc==0 [iw= test_qc_correct]
logit voted   aw2_q1a age age_sq edu if bc==0 &  aw2_q1a<11 [iw= test_qc_correct]
logit voted   aw2_q1a age age_sq edu if bc==0 &  aw2_q1a<11
probit voted  aw2_q1a age age_sq edu if bc==0 &  aw2_q1a<11
probit voted  aw2_q1a age age_sq edu if bc==0 &  aw2_q1a<11 [iw=test_qc_correct ]
corr aw2_q1a  test_qc_correct
corr aw2_q1a   test1_correct
corr aw2_q1a  test_qc_correct
corr aw2_q1a  test_qc_correct if aw2_q1a<11
corr aw2_q1b  test_qc_correct if aw2_q1b<11
corr aw2_q1c  test_qc_correct if aw2_q1c<11
corr aw2_q1d  test_qc_correct if aw2_q1d<11
tab  aw2_q16
tab  aw2_q16, nol
corr  aw2_q16  test_qc_correct if aw2_q16<5
probit voted  aw2_q16 age age_sq edu if bc==0 &  aw2_q16,<5 [iw=test_qc_correct ]
probit voted  aw2_q16 age age_sq edu if bc==0 &  aw2_q16<5 [iw=test_qc_correct ]
probit voted  aw2_q16 age age_sq edu if bc==0 &  aw2_q16<5
probit voted  aw2_q16 age age_sq edu if bc==0 &  aw2_q16<5 [iw=aw1_weights  ]
probit voted  aw2_q16 age age_sq edu if bc==0 &  aw2_q16<5 [iw=aw2_weights  ]
sum  test_qc_correct
sum  test_qc_correct if bc==0
sum  test_qc_correct if bc==0 & voted!=.
