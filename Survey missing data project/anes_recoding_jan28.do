***THIS FILE COMBINES RESULTS FROM JAN 28 AND JAN 29
***LISTS ALL THE NEW WEIGHTS IN THE ANES, WHAT THEY ARE
***JAN 29: PROBIT, LOGIT AND CORRELATION ANALYSES
***Test3 had to be abandoned because os some questions that should not be in there (arguably, at least), concernign registration, previous vote. 

use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\anes08_09_half_w1_to_w6-3.dta", clear

gen testjan28= flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e35 + flag_w1e38 + flag_w1e41 + flag_w1e47 +  flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 +flag_w1g_20+ flag_w1g_21+ flag_w1g_22+  flag_w1g_24  + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15

gen flag_w1m3=1 if w1m3==-7
recode flag_w1m3 .=0
replace	flag_w1m3=.	if	w1m3==-6																											
replace	flag_w1m3=.	if	w1m3==-5
replace	flag_w1m3=.	if	w1m3==-4																											
replace	flag_w1m3=.	if	w1m3==-3																											
replace	flag_w1m3=.	if	w1m3==-2																											
replace	flag_w1m3=.	if	w1m3==-1																											

****Decided NOT to add partisanship because of the huge amount of missing data in the first wave
***Previous results:
logit voted08  age age_sq edu edu_age [iw=testweight]
probit voted08  age age_sq edu edu_age if test3!=. [iw= wgtcs01]
probit voted08  age age_sq edu edu_age if test3!=. [iw= wgtcs11]
probit voted08  age age_sq edu edu_age if test3!=. [iw=  wgtl11]
probit voted08  age age_sq edu edu_age if test3!=. [iw=   wgtc11]
probit voted08  age age_sq edu edu_age if test3!=. [iw=   wgte11]
probit voted08  age age_sq edu edu_age if test3!=. [iw=    wgtpp11]
probit voted08  age age_sq edu edu_age if test3!=.

***Decided to add all approval votings in the weight, because it works better: 
																										
gen testjan28_1=(flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15) if flag_w1p24!=.


sum flag_w1e2	 flag_w1e5	 flag_w1e8	 flag_w1e11	 flag_w1e14 	 flag_w1e17 	flag_w1e20 	flag_w1e23	 flag_w1e26 	flag_w1e29 	flag_w1e32	 flag_w1e35 	 flag_w1e38 	 flag_w1e41 	  flag_w1e44	 flag_w1e47 	  flag_w1e50 	flag_w1e53	 flag_w1e56	 flag_w1e59	 flag_w1g_1	 flag_w1g_2	 flag_w1g_3 	 flag_w1g_4 	flag_w1g_5 	flag_w1g_6 	flag_w1g_7 	flag_w1g_8	 flag_w1g_9	 flag_w1g_20	 flag_w1g_21	 flag_w1g_22	   flag_w1g_23	 flag_w1g_24  	  flag_w1g_25 	 flag_w1g_26 	 flag_w1g_27	 flag_w1l1 	flag_w1l2 	 flag_w1n1	  flag_w1p1 	flag_w1p3 	flag_w1p4 	flag_w1p6 	flag_w1p7 	flag_w1p9	 flag_w1p10	 flag_w1p12 	flag_w1p13	 flag_w1p15	 flag_w1p16	 flag_w1p18	 flag_w1p19 	flag_w1p21	 flag_w1p22 	flag_w1p24 	flag_w1p25 	flag_w1p27	  flag_w1q1	 flag_w1q2 	flag_w1t1	 flag_w1t2	 flag_w1t3 	flag_w1t4	 flag_w1t5	 flag_w1t6 	flag_w1t7	 flag_w1t8 	flag_w1t9 	flag_w1t10	 flag_w1t11	 flag_w1u1	 flag_w1u4 	flag_w1v1	 flag_w1v3 	flag_w1v5	 flag_w1v7	 flag_w1v9	 flag_w1v11	 flag_w1w2 	 flag_w1w3 	 flag_w1w4 	 flag_w1w5 	 flag_w1w7 	 flag_w1w8 	 flag_w1w9 	 flag_w1w10 	 flag_w1w12 	 flag_w1w13 	 flag_w1w14 	 flag_w1w15 

***FINAL WEIGHT: Decided to add all candidate questions in the weight, works margunalyl better than testjan28_1 (more variation): 

sum  flag_w1f1 flag_w1f2 flag_w1f3 flag_w1f4 flag_w1f5 flag_w1f6 flag_w1f7 flag_w1f8

gen testjan28_2=(flag_w1f1 + flag_w1f3+ flag_w1f5 + flag_w1f7 + flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15) if flag_w1p24!=.

***CONCLUSIONS: THE WEIGHT STILL HOLDS. THE RESULTS ARE MARGINALLY DIFFERENT FROM test3, JUST BECAUSE THERE ARE MORE CASES. 
***must sort out all the differences. 


***January 29
***The weight with all the news behavioral patterns in it. (days watching tv, internet, etc)
gen testjan28_3=(flag_w1h1+ flag_w1h2 +flag_w1h3 +flag_w1h4+ flag_w1f1 + flag_w1f3+ flag_w1f5 + flag_w1f7 + flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15) if flag_w1p24!=.
gen newweight_jan28_3= (1+testjan28_3)*1380/1875

***The weight wihout behavioral patters, but with hypothetical vote choice: 

gen testjan28_4=(flag_w1f2+ flag_w1f4 + flag_w1f6 + flag_w1f8 + flag_w1f1 + flag_w1f3+ flag_w1f5 + flag_w1f7 + flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15) if flag_w1f8!=.
gen newweight_jan28_4= (1+testjan28_4)*1380/1433

***The weight with behavioral patters, *and* hypothetical vote choice:

gen testjan28_5=(flag_w1h1+ flag_w1h2 +flag_w1h3 +flag_w1h4+ flag_w1f2+ flag_w1f4 + flag_w1f6 + flag_w1f8 + flag_w1f1 + flag_w1f3+ flag_w1f5 + flag_w1f7 + flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15) if flag_w1f8!=.
gen  newweight_jan28_5=(1+testjan28_5)*1380/1435



****Below see all the data manipulations I made on Jan 28: 
****Below that, see all the manips I did on Jan 29. 

***MANIPS JAN 28
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\anes08_09_half_w1_to_w6-3.dta", clear
set mem 1000000
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\anes08_09_half_w1_to_w6-3.dta", clear
gen testjan28= flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e35 + flag_w1e38 + flag_w1e41 + flag_w1e47 +  flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 +flag_w1g_20+ flag_w1g_21+ flag_w1g_22+  flag_w1g_24  + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15
do "C:\Users\Deuta\AppData\Local\Temp\STD04000000.tmp"
do "C:\Users\Deuta\AppData\Local\Temp\STD04000000.tmp"
tab  flag_w1m3
tab  testjan28
tab  testw1
tab  test2w1
tab voted08
tab voted08 [iw= testjan28]
tab voted08 [iw= testw1]
tab voted08 [iw= testjan28]
tab voted08 [iw= 1+testjan28]
tab voted08
tab voted08 [iw= test3]
tab voted08 [iw= 1+testjan28]
tab voted08
tab voted08 [iw= 1+testjan28]
tab voted08 [iw= (1+testjan28)*1559/1380]
tab voted08 [iw= (1+testjan28)*1380/1559]
gen testweightjan28=(1+testjan28)*1380/1559
sum testweightjan28
logit voted08  age age_sq edu edu_age [iw=testweight]
logit voted08  age age_sq edu edu_age [iw=test3]
tab flag_w1f8
drop  testweightjan28
drop  testjan28
gen testjan28= (flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e35 + flag_w1e38 + flag_w1e41 + flag_w1e47 +  flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 +flag_w1g_20+ flag_w1g_21+ flag_w1g_22+  flag_w1g_24  + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15 ) if flag_w1f8!=.
tab  testjan28
drop  testjan28
gen testjan28= (flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e35 + flag_w1e38 + flag_w1e41 + flag_w1e47 +  flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 +flag_w1g_20+ flag_w1g_21+ flag_w1g_22+  flag_w1g_24  + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15 )
do "C:\Users\Deuta\AppData\Local\Temp\STD04000000.tmp"
do "C:\Users\Deuta\AppData\Local\Temp\STD04000000.tmp"
tab  testjan28_1
tab voted08 [iw= 1+testjan28_1]
tab voted08
tab voted08 [iw= (1+testjan28_1)*1380/1740]
gen newweightjan28=(1+testjan28_1)*1380/1740
logit voted08  age age_sq edu edu_age [iw=test3]
logit voted08  age age_sq edu edu_age [iw= newweightjan28]
logit voted08  age age_sq edu edu_age if  newweightjan28!=. [iw= wgtcs01]
logit voted08  age age_sq edu  if  newweightjan28!=. [iw= wgtcs01]
logit voted08  age age_sq edu  [iw= newweightjan28]
logit voted08  age age_sq edu  if  newweightjan28!=. [iw= wgtcs01]
logit voted08  age age_sq edu  if  newweightjan28!=. [iw= wgtcs11]
logit voted08  age age_sq edu  if  newweightjan28!=. [iw=  wgtl11]
logit voted08  age age_sq edu  if  newweightjan28!=. [iw=   wgtc11]
logit voted08  age age_sq edu  if  newweightjan28!=. [iw=   wgte11]
logit voted08  age age_sq edu  if  newweightjan28!=. [iw=    wgtpp11]
logit voted08  age age_sq edu  [iw= newweightjan28]
logit voted08  age age_sq edu
logit voted08  age age_sq edu  if  newweightjan28!=.
corr  newweightjan28 age age_sq
corr   test3 age age_sq
corr    testjan28 age age_sq
do "C:\Users\Deuta\AppData\Local\Temp\STD04000000.tmp"
logit voted08  interest age age_sq edu  [iw= newweightjan28]
logit voted08  interest age age_sq edu  if  newweightjan28!=. [iw=    wgtpp11]
logit voted08  interest age age_sq edu  edu_age [iw= newweightjan28]
logit voted08  interest age age_sq edu  edu_age if  newweightjan28!=. [iw=    wgtpp11]
corr  newweightjan28 edu
corr  newweightjan28 male interest edu age age_sq
corr   test3 male interest edu age age_sq
sum flag_w1f1 flag_w1f3 flag_w1f5
sum  flag_w1f1 flag_w1f2 flag_w1f3 flag_w1f4 flag_w1f5 flag_w1f6 flag_w1f7 flag_w1f8
do "C:\Users\Deuta\AppData\Local\Temp\STD04000000.tmp"
tab  testjan28_2
tab voted08  [iw=1+ testjan28_2]
tab voted08
tab voted08  [iw=(1+ testjan28_2)*1380/1865]
gen new_weight_jan28=(1+ testjan28_2)*1380/1865
logit voted08  age age_sq edu   [iw=  new_weight_jan28]
logit voted08  age age_sq edu   [iw=  newweightjan28]
logit voted08  age age_sq edu edu_age  [iw= new_weight_jan28]
logit voted08  age age_sq edu   [iw= new_weight_jan28]
logit voted08  age age_sq edu   [iw=  wgtpp11] if new_weight_jan28 !=.
logit voted08  age age_sq edu   [pw=  wgtpp11] if new_weight_jan28 !=.
logit voted08  age age_sq edu   [pw= new_weight_jan28]
logit voted08  age age_sq edu   [pw=  wgtpp13] if new_weight_jan28 !=.
logit voted08  age age_sq edu   [iw=  wgtpp13] if new_weight_jan28 !=.
logit voted08  age age_sq edu   [iw= new_weight_jan28]
logit voted08 interest  age age_sq edu   [iw= new_weight_jan28]
logit voted08 interest  age age_sq edu
logit voted08 interest  age age_sq edu   [pw= new_weight_jan28]
logit voted08 interest  age age_sq edu   [iw= new_weight_jan28]
logit voted08 interest  age  edu   [iw= new_weight_jan28]
logit voted08 interest  age  edu   [iw= newweightjan28 ]
corr  new_weight_jan28 interest
corr  new_weight_jan28  age edu age_sq male
tab interest
logit voted08 new_weight_jan28
logit voted08 new_weight_jan28 interest
logit voted08 test3 interest
logit voted08  newweightjan28 interest
logit voted08 new_weight_jan28 interest
gen new_weight_jan28_sq= new_weight_jan28* new_weight_jan28
logit voted08 new_weight_jan28  new_weight_jan28_sq interest
logit voted08  interest
drop  new_weight_jan28_sq
*************here end manips on Jan 28

*************here begin manips on Jan 29

set mem 1000000
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\anes08_09_half_w1_to_w6-3.dta", clear
sum  flag_w1h1 flag_w1h2 flag_w1h3 flag_w1h4
gen testjan28_3=(flag_w1h1+ flag_w1h2 +flag_w1h3 +flag_w1h4+ flag_w1f1 + flag_w1f3+ flag_w1f5 + flag_w1f7 + flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15) if flag_w1p24!=.
tab  testjan28_3
tab  testjan28_2
tab voted08 [iw=1+ testjan28_3]
tab voted08 [iw=1+ testjan28_2]
gen testjan28_4=(flag_w1f2+ flag_w1f4 + flag_w1f6 + flag_w1f8 + flag_w1f1 + flag_w1f3+ flag_w1f5 + flag_w1f7 + flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15) if flag_w1f8!=.
tab  testjan28_4
tab voted08 [iw=1+  testjan28_4]
gen testjan28_5=(flag_w1h1+ flag_w1h2 +flag_w1h3 +flag_w1h4+ flag_w1f2+ flag_w1f4 + flag_w1f6 + flag_w1f8 + flag_w1f1 + flag_w1f3+ flag_w1f5 + flag_w1f7 + flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15) if flag_w1f8!=.
tab  testjan28_5
tab voted08 [iw=1+testjan28_5]
tab  testw1
tab  test2w1
tab  testjan28_5
tab1  testw1  testjan28 testjan28_1 testjan28_2 testjan28_3 testjan28_4 testjan28_5
gen testjan28_6=(flag_w1f1 + flag_w1f3+ flag_w1f5 + flag_w1f7 + flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15)
tab  testjan28_6
tab  testjan28_2
corr  testjan28_2 testjan28_6
gen testjan28_7=(flag_w1h1+ flag_w1h2 +flag_w1h3 +flag_w1h4+ flag_w1f1 + flag_w1f3+ flag_w1f5 + flag_w1f7 + flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15)
corr  testjan28_7 testjan28_3
gen testjan28_8=(flag_w1f2+ flag_w1f4 + flag_w1f6 + flag_w1f8 + flag_w1f1 + flag_w1f3+ flag_w1f5 + flag_w1f7 + flag_w1e2+ flag_w1e5+ flag_w1e8+ flag_w1e11+ flag_w1e14 + flag_w1e17 +flag_w1e20 +flag_w1e23+ flag_w1e26 +flag_w1e29 +flag_w1e32+ flag_w1e35 + flag_w1e38 + flag_w1e41 +  flag_w1e44+ flag_w1e47 +  flag_w1e50 +flag_w1e53+ flag_w1e56+ flag_w1e59+ flag_w1g_1+ flag_w1g_2+ flag_w1g_3 + flag_w1g_4 +flag_w1g_5 +flag_w1g_6 +flag_w1g_7 +flag_w1g_8+ flag_w1g_9+ flag_w1g_20+ flag_w1g_21+ flag_w1g_22+   flag_w1g_23+ flag_w1g_24  +  flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1l1 +flag_w1l2 + flag_w1n1+  flag_w1p1 +flag_w1p3 +flag_w1p4 +flag_w1p6 +flag_w1p7 +flag_w1p9+ flag_w1p10+ flag_w1p12 +flag_w1p13+ flag_w1p15+ flag_w1p16+ flag_w1p18+ flag_w1p19 +flag_w1p21+ flag_w1p22 +flag_w1p24 +flag_w1p25 +flag_w1p27+  flag_w1q1+ flag_w1q2 +flag_w1t1+ flag_w1t2+ flag_w1t3 +flag_w1t4+ flag_w1t5+ flag_w1t6 +flag_w1t7+ flag_w1t8 +flag_w1t9 +flag_w1t10+ flag_w1t11+ flag_w1u1+ flag_w1u4 +flag_w1v1+ flag_w1v3 +flag_w1v5+ flag_w1v7+ flag_w1v9+ flag_w1v11+ flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15)
corr  testjan28_8 testjan28_4
summ testjan28_8 testjan28_4
drop  testjan28_6 testjan28_7 testjan28_8
tab voted08 [iw= 1+testjan28_3]
tab voted08
tab voted08 [iw= (1+testjan28_3)*1380/1875]
gen newweight_jan28_3= (1+testjan28_3)*1380/1875]
gen newweight_jan28_3= (1+testjan28_3)*1380/1875
logit voted08 age age_sq edu [iw= newweight_jan28_3]
logit voted08 age age_sq edu [iw=  new_weight_jan28]
tab voted08 [iw= 1+testjan28_4]
tab voted08 [iw= (1+testjan28_4)*1380/1433]
gen newweight_jan28_4= (1+testjan28_4)*1380/1433
tab voted08 [iw= 1+testjan28_5]
tab voted08 [iw= (1+testjan28_4)*1380/1435]
tab voted08 [iw= (1+testjan28_5)*1380/1435]
gen  newweight_jan28_5=(1+testjan28_5)*1380/1435
logit voted08 age age_sq edu [iw=   newweightjan28]
logit voted08 age age_sq edu [iw=   new_weight_jan28]
logit voted08 age age_sq edu [iw=    newweight_jan28_3]
logit voted08 age age_sq edu [iw=    newweight_jan28_4]
logit voted08 age age_sq edu [iw=    newweight_jan28_5]
logit voted08 age age_sq edu [iw=  test3]
logit voted08 age age_sq edu edu_age  [iw=    newweight_jan28_5]
logit voted08 age age_sq edu edu_age  [iw=   test3]
logit voted08 age age_sq edu edu_age  [iw=   test3]
progit voted08 age age_sq edu edu_age  [iw=   test3]
probit voted08 age age_sq edu edu_age  [iw=   test3]
probit voted08 age age_sq edu edu_age  [iw=   newweightjan28]
probit voted08 age age_sq edu edu_age  [iw= new_weight_jan28]
probit voted08 age age_sq edu edu_age  [iw=  newweight_jan28_3]
probit voted08 age age_sq edu edu_age  [iw=   newweight_jan28_4]
probit voted08 age age_sq edu edu_age  [iw=   newweight_jan28_5]
probit voted08 age age_sq edu   [iw=  newweight_jan28_3]
probit voted08 age age_sq edu edu_age  [iw=   test3]
probit voted08 age age_sq edu [iw=   newweightjan28]
probit voted08 age age_sq edu [iw=  new_weight_jan28]
probit voted08 age age_sq edu [iw=  newweight_jan28_3]
probit voted08 age age_sq edu [iw=  newweight_jan28_4]
probit voted08 age age_sq edu [iw=  newweight_jan28_5]
probit voted08 age age_sq edu [iw=  new_weight_jan28]
probit voted08 age age_sq edu [iw=  wgtcs01]
probit voted08 age age_sq edu [iw=  wgtcs11]
probit voted08 age age_sq edu [iw=  wgtpp11]
probit voted08 age age_sq edu [iw=  wgtc11]
probit voted08 age age_sq edu [iw= wgte11]
probit voted08 age age_sq edu [iw=  newweight_jan28_3]
probit voted08 age age_sq edu [iw=  newweight_jan28_4]
logit voted08 age age_sq edu [iw= wgtcs01]
logit voted08 age age_sq edu [iw= wgtcs11]
logit voted08 age age_sq edu [iw= wgtl11]
logit voted08 age age_sq edu [iw=wgtc11]
logit voted08 age age_sq edu [iw=wgte11]
logit voted08 age age_sq edu
logit voted08 age age_sq edu [iw= newweightjan28]
logit voted08 age age_sq edu [iw=  new_weight_jan28]
logit voted08 age age_sq edu [iw=   newweight_jan28_3]
logit voted08 age age_sq edu [iw=    newweight_jan28_4]
logit voted08 age age_sq edu [iw=    newweight_jan28_5]
logit voted08  interest age age_sq edu [iw= wgtcs01]
logit voted08  interest age age_sq edu [iw= wgtcs11]
logit voted08  interest age age_sq edu [iw= wgtl11]
logit voted08  interest age age_sq edu [iw= wgtc11]
logit voted08  interest age age_sq edu [iw= wgte11]
logit voted08  interest age age_sq edu
logit voted08  interest age age_sq edu [iw=  newweightjan28]
logit voted08  interest age age_sq edu [iw=   new_weight_jan28]
logit voted08  interest age age_sq edu [iw=    newweight_jan28_3]
logit voted08  interest age age_sq edu [iw=    newweight_jan28_4]
logit voted08  interest age age_sq edu [iw=    newweight_jan28_5]
pwcorr  newweightjan28 new_weight_jan28 newweight_jan28_3 newweight_jan28_4 newweight_jan28_5 age age_sq edu male interest
pwcorr  newweightjan28 new_weight_jan28 newweight_jan28_3 newweight_jan28_4 newweight_jan28_5 age age_sq edu male interest, sig
pwcorr test3 age age_sq edu male interest
pwcorr test3 age age_sq edu male interest, sig
list wgtcs01 wgtcs11 wgtl11 wgtpp11 wgtc11 wgte11
sum wgtcs01 wgtcs11 wgtl11 wgtpp11 wgtc11 wgte11, detail
probit voted08 age age_sq edu
sum  newweightjan28 new_weight_jan28 newweight_jan28_3 newweight_jan28_4 newweight_jan28_5, detail
logit voted08  newweightjan28
logit voted08  new_weight_jan28
logit voted08   newweight_jan28_3
logit voted08   newweight_jan28_4
logit voted08   newweight_jan28_5
corr voted08  newweightjan28 new_weight_jan28 newweight_jan28_3 newweight_jan28_4 newweight_jan28_5
pwcorr voted08  newweightjan28 new_weight_jan28 newweight_jan28_3 newweight_jan28_4 newweight_jan28_5
pwcorr voted08  newweightjan28 new_weight_jan28 newweight_jan28_3 newweight_jan28_4 newweight_jan28_5 test3
save "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project DEC30 (former NOV27\anes08_09_half_w1_to_w6-3.dta", replace
