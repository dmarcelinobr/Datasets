***November 18 Investigating the missing cases in the DK weight. I find out that the correc
***form of the weight is the one with the missing cases, because those reflect instances in which
***the individual couln't have answered the question even if they wanted to, because 
***it was not asked (e.g. the 35 missing cases in the w1f2)
***The watered down RF variable does not work; and anyway, is incorrect. 

***The data were not saved 

set mem 100000
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project\Survey missing data project\anes08_09_half_w1_to_w6-3.dta", clear
sum  flag_w1e2 flag_w1e5 flag_w1e8 flag_w1e11 flag_w1e14 flag_w1e17 flag_w1e20 flag_w1e23 flag_w1e26 flag_w1e29 flag_w1e32 flag_w1e35 flag_w1e38 flag_w1e41 flag_w1e44 flag_w1e47 flag_w1e50 flag_w1e53 flag_w1e56 flag_w1e59
sum  flag_w1f1 flag_w1f2 flag_w1f3 flag_w1f4 flag_w1f5 flag_w1f6 flag_w1f7 flag_w1f8 flag_w1g_1 flag_w1g_2 flag_w1g_3 flag_w1g_4 flag_w1g_5 flag_w1g_6 flag_w1g_7 flag_w1g_8 flag_w1g_9 flag_w1g_20 flag_w1g_21 flag_w1g_22 flag_w1g_23 flag_w1g_24 flag_w1g_25 flag_w1g_26 flag_w1g_27
sum  flag_w1h1 flag_w1h2 flag_w1h3 flag_w1h4 flag_w1j1a_3 flag_w1j2 flag_w1k1 flag_w1k2 flag_w1l1 flag_w1l2 flag_w1n1
sum  flag_w1p1 flag_w1p3 flag_w1p4 flag_w1p6 flag_w1p7 flag_w1p9 flag_w1p10 flag_w1p12 flag_w1p13 flag_w1p15 flag_w1p16 flag_w1p18 flag_w1p19 flag_w1p21 flag_w1p22 flag_w1p24 flag_w1p25 flag_w1p27
sum  flag_w1q1 flag_w1q2 flag_w1t1 flag_w1t2 flag_w1t3 flag_w1t4 flag_w1t5 flag_w1t6 flag_w1t7 flag_w1t8 flag_w1t9 flag_w1t10 flag_w1t11 flag_w1u1 flag_w1u4 flag_w1v1 flag_w1v3 flag_w1v5 flag_w1v7 flag_w1v9 flag_w1v11 flag_w1w2 flag_w1w3 flag_w1w4 flag_w1w5 flag_w1w7 flag_w1w8 flag_w1w9 flag_w1w10 flag_w1w12 flag_w1w13 flag_w1w14 flag_w1w15
sum voted08
recode  flag_w1e2 flag_w1e5 flag_w1e8 flag_w1e11 flag_w1e14 flag_w1e17 flag_w1e20 flag_w1e23 flag_w1e26 flag_w1e29 flag_w1e32 flag_w1e35 flag_w1e38 flag_w1e41 flag_w1e44 flag_w1e47 flag_w1e50 flag_w1e53 flag_w1e56 flag_w1e59 (.=0) if voted!=.
recode flag_w1f1 flag_w1f2 flag_w1f3 flag_w1f4 flag_w1f5 flag_w1f6 flag_w1f7 flag_w1f8 flag_w1g_1 flag_w1g_2 flag_w1g_3 flag_w1g_4 flag_w1g_5 flag_w1g_6 flag_w1g_7 flag_w1g_8 flag_w1g_9 flag_w1g_20 flag_w1g_21 flag_w1g_22 flag_w1g_23 flag_w1g_24 flag_w1g_25 flag_w1g_26 flag_w1g_27 (.=0) if voted!=.
recode flag_w1h1 flag_w1h2 flag_w1h3 flag_w1h4 flag_w1j1a_3 flag_w1j2 flag_w1k1 flag_w1k2 flag_w1l1 flag_w1l2 flag_w1n1 (.=0) if voted!=.
recode  flag_w1p1 flag_w1p3 flag_w1p4 flag_w1p6 flag_w1p7 flag_w1p9 flag_w1p10 flag_w1p12 flag_w1p13 flag_w1p15 flag_w1p16 flag_w1p18 flag_w1p19 flag_w1p21 flag_w1p22 flag_w1p24 flag_w1p25 flag_w1p27 (.=0) if voted!=.
recode  flag_w1q1 flag_w1q2 flag_w1t1 flag_w1t2 flag_w1t3 flag_w1t4 flag_w1t5 flag_w1t6 flag_w1t7 flag_w1t8 flag_w1t9 flag_w1t10 flag_w1t11 flag_w1u1 flag_w1u4 flag_w1v1 flag_w1v3 flag_w1v5 flag_w1v7 flag_w1v9 flag_w1v11 flag_w1w2 flag_w1w3 flag_w1w4 flag_w1w5 flag_w1w7 flag_w1w8 flag_w1w9 flag_w1w10 flag_w1w12 flag_w1w13 flag_w1w14 flag_w1w15 (.=0) if voted!=.
gen new1= flag_w1e2 + flag_w1e5 + flag_w1e8 + flag_w1e11 + flag_w1e14 + flag_w1e17 + flag_w1e20 + flag_w1e23 + flag_w1e26 + flag_w1e29 +  flag_w1e32 + flag_w1e35 + flag_w1e38 + flag_w1e41 + flag_w1e44 + flag_w1e47 + flag_w1e50 + flag_w1e53 + flag_w1e56 + flag_w1e59
gen new2= flag_w1f1 + flag_w1f2 + flag_w1f3 + flag_w1f4 + flag_w1f5 + flag_w1f6 + flag_w1f7 + flag_w1f8 + flag_w1g_1 +  flag_w1g_2 + flag_w1g_3 + flag_w1g_4 + flag_w1g_5 + flag_w1g_6 + flag_w1g_7 + flag_w1g_8 + flag_w1g_9 + flag_w1g_20 + flag_w1g_21 + flag_w1g_22 + flag_w1g_23+  flag_w1g_24 + flag_w1g_25 + flag_w1g_26 + flag_w1g_27
gen new3= flag_w1h1 + flag_w1h2 + flag_w1h3 + flag_w1h4 + flag_w1j1a_3 + flag_w1j2 + flag_w1k1 + flag_w1k2 + flag_w1l1 + flag_w1l2 + flag_w1n1
gen  new4=  flag_w1p1 + flag_w1p3 + flag_w1p4 + flag_w1p6 + flag_w1p7 + flag_w1p9 + flag_w1p10 + flag_w1p12 + flag_w1p13 + flag_w1p15+  flag_w1p16 + flag_w1p18 + flag_w1p19 + flag_w1p21 + flag_w1p22 + flag_w1p24 + flag_w1p25 + flag_w1p27
gen new5 = flag_w1q1 + flag_w1q2 + flag_w1t1 + flag_w1t2+  flag_w1t3 + flag_w1t4 + flag_w1t5 + flag_w1t6 + flag_w1t7 + flag_w1t8 + flag_w1t9+  flag_w1t10 + flag_w1t11 + flag_w1u1 + flag_w1u4 + flag_w1v1 +  flag_w1v3 + flag_w1v5 + flag_w1v7 + flag_w1v9 + flag_w1v11 + flag_w1w2+  flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15
sum new1 new2 new3 new4 new5
gen new_test1=new1+new2+new3+new4 + new5
sum new_test1  testw1
tab1 new_test1  testw1
tab voted08
tab voted08 [iw=1+new_test1 ]
tab voted08 [iw=1+testw1 ]
tab voted08 [iw=1+new_test1 ]
tab voted08 [iw=(1+new_test1)*1380/2751]
gen new_test_weight=(1+new_test1)*1380/2751
probit voted08 age age_sq edu
probit voted08 age age_sq edu [iw=new_test_weight ]
probit voted08 age age_sq edu age_ed
probit voted08 age age_sq edu edu_age
probit voted08 age age_sq edu edu_age [iw=new_test_weight ]
sum test3
probit voted08 age age_sq edu edu_age [iw=test3 ]
probit voted08 age age_sq edu edu_age
probit voted08 age age_sq edu edu_age if test3!=.
probit voted08 age age_sq edu edu_age
probit voted08 age age_sq edu edu_age [iw= new_test_weight]
probit voted08 age age_sq edu edu_age [iw= new_test1]
probit voted08 age age_sq edu edu_age [iw= new_test_weight]
probit voted08 age age_sq edu edu_age [pw=new_test_weight ]
probit voted08 age age_sq edu edu_age [iw=wgtcs01]
probit voted08 age age_sq edu edu_age [pw=wgtcs01]
probit voted08 age age_sq edu edu_age [iw=wgtcs01]
probit voted08 age age_sq edu edu_age [iw=wgtcs11]
probit voted08 age age_sq edu edu_age [iw=wgtpp11]
probit voted08 age age_sq edu edu_age [iw=wgtc11]
probit voted08 age age_sq edu edu_age [pw=wgtc11]
probit voted08 age age_sq edu edu_age [iw=wgte11]
tab w1f2
