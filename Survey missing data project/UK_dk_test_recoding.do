
gen flag_w5_p310q1=1 if w5_p310q1==997
gen flag_w5_p320q1=1 if w5_p320q1==997
gen flag_w5_p330q1=1 if w5_p330q1==997
gen flag_w5_p340q1=1 if w5_p340q1==997

gen flag_w5_p400q1=1 if w5_p400q1==12
gen flag_w5_p410q1=1 if w5_p410q1==12
gen flag_w5_p420q1=1 if w5_p420q1==12

gen flag_w5_p510q1=1 if w5_p510q1==6
gen flag_w5_p510q2=1 if w5_p510q2==6
gen flag_w5_p520q1=1 if w5_p520q1==6
gen flag_w5_p520q2=1 if w5_p520q2==6
gen flag_w5_p530q1=1 if w5_p530q1==6
gen flag_w5_p550q1=1 if w5_p550q1==6

gen flag_w5_p650q1=1 if w5_p650q1==6
gen flag_w5_p660q1=1 if w5_p660q1==6
gen flag_w5_p670q1=1 if w5_p670q1==6
gen flag_w5_p680q1=1 if w5_p680q1==6
gen flag_w5_p690q1=1 if w5_p690q1==6
gen flag_w5_p770q1=1 if w5_p770q1==11

gen flag_w5_p820q1=1 if w5_p820q1==5
gen flag_w5_p830q1=1 if w5_p830q1==5

gen flag_w5_p1135q1=1 if w5_p1135q1==8
gen flag_w5_p1320q1=1 if w5_p1320q1==5

***Last analyses:
***Basically, the idea being that if you account for overall DKs, then you 
***lower your estimates of the socially desirable, yet not engrained.
use "C:\Users\Deuta\Desktop\RFT\team_Montreal_test_dk.dta", clear
reg  w5_p830q1  test_wave5
reg  w5_p830q1  test_wave5 if w5_p830q1<12
tab  w5_p800q1
tab  w5_p800q1, nol
ologit   w5_p800q1 test_wave5 if  w5_p800q1<4
tab  w5_p814q1
tab  w6_p830q1
reg w6_p830q1 test_wave5 if w6_p830q1 <5
tab w6_p10050q1
reg  w6_p10050q1 test_wave5
ologit  w6_p10050q1 test_wave5
tab  w6_p820q1
ologit   w6_p820q1 test_wave5 if  w6_p820q1<5
tab  w6_p10050q9
tab  w6_p10050q9, nol
reg  w6_p10050q9 test_wave5 if  w6_p10050q9<6
tab  w5_p830q1
tab  w5_p805q1
tab voted
replace voted=voted-2
recode voted -1=1
tab voted
recode voted 1=0
recode voted -2=1
tab voted
tab voted [iw=test_wave5 ]
gen testweight=test_wave5
replace testweight=. if voted==.
tab voted
tab voted [iw=testweight  ]
tab  w5_p830q1
tab  w5_p830q1 if  w5_p830q1<5
tab  w5_p830q1 if  w5_p830q1<5 [iw= testweight]
gen combined_test=  testweight+ test
recode combined_test=. if voted ==.
recode combined_test=. if voted =.
replace combined_test=. if voted==.
tab  w5_p830q1 if  w5_p830q1<5 [iw= combined_test ]
tab  w5_p830q1 if  w5_p830q1<5 [iw= testweight]
drop combined

logit voted  w6_p10050q1
logit voted  w6_p10050q1 [iw=testw]
logit voted  w6_p10050q1
logit voted  w6_p10050q1  testweight
logit voted  w6_p10050q1  [iw=testweight]
logit voted  w6_p10050q1  [iw=test_wave5 ]
logit voted  w6_p10050q1 age  [iw=test_wave5 ]
logit voted  w6_p10050q1 age  age_sq [iw=test_wave5 ]
logit voted  w6_p10050q1 age  age_sq
logit voted  w6_p10050q1 age  age_sq [iw=test_wave5 ]
logit voted  w6_p10050q1 female age  age_sq [iw=test_wave5 ]
logit voted  w6_p10050q1 female age  age_sq
logit voted  w6_p10050q1 female age  age_sq [iw=test_wave5 ]
logit voted  w6_p10050q1 female age  age_sq [iw=test ]
logit voted  w6_p10050q1 female age  age_sq [iw=test_wave5 ] if test_wave5==0

***Weight which uses the wholse sample:***
gen new_testweight= testweight+1
logit voted  w6_p10050q1 female age  age_sq [iw=new_testweight ]
logit voted  w6_p10050q1 female age  age_sq

tab voted  [iw=new_testweight ] **overinflates sample***

tab voted  [iw=testweight  ]
tab voted  [iw=test_wave5   ]

logit voted  w6_p10050q1 female age  age_sq [iw=new_testweight ]
logit voted  w6_p10050q1 female age  age_sq [iw= w5_W8_oth ]

reg w1_p805q1 w1_p830q1 female age  age_sq  edu [iw=new_testweight ] if w1_p805q1<12 & w1_p830q1<5
reg w1_p805q1 w1_p830q1 female age  age_sq  edu [iw=testweight ] if w1_p805q1<12 & w1_p830q1<5
reg w1_p805q1 w1_p830q1 female age  age_sq  edu if w1_p805q1<12 & w1_p830q1<5
reg w1_p805q1 w1_p830q1 female age  age_sq  edu [iw=testweight ] if w1_p805q1<12 & w1_p830q1<5
reg w5_p805q1 w5_p830q1 female age  age_sq  edu [iw=testweight ] if w5_p805q1<12 & w5_p830q1<5
reg w5_p805q1 w5_p830q1 female age  age_sq  edu [iw=new_testweight] if w5_p805q1<12 & w5_p830q1<5
reg w5_p805q1 w5_p830q1 female age  age_sq  edu [iw=testweight] if w5_p805q1<12 & w5_p830q1<5
mlogit  w5_p1508q4 w5_p830q1 female age  age_sq  edu [iw=testweight] if w5_p805q1<12 & w5_p830q1<5
mlogit  w5_p1508q4 w5_p830q1 female age  age_sq  edu [iw=new_testweight] if w5_p805q1<12 & w5_p830q1<5
mlogit  w5_p1508q4 w5_p830q1 [iw=new_testweight] if w5_p805q1<12 & w5_p830q1<5

***New trials
use "C:\Users\Deuta\Desktop\RFT\team_Montreal_test_dk.dta", clear
tab  w5_p1130q1
tab w5_p830q1
reg w5_p830q1  test_wave5 if w5_p830q1<5
logit voted   test_wave5
tab test_wave5
gen test_wave5_sq=test_wave5*test_wave5
logit voted   test_wave5  test_wave5_sq
gen test3=ln( test_wave5)
logit voted   test3
predict p
twoway (fpfit p test3)
tab voted
tab voted [iw=1+ test_wave5]
tab voted [iw=test_wave5]
tab voted [iw= test3]
gen test4=exp( test_wave5)
tab voted [iw= test4]
gen test5= test_wave5* test_wave5
tab voted [iw= test5]
tab voted [iw= test5/5]
gen test6=sqrt( test_wave5)
tab voted [iw= test6]
gen newweight= test_wave5
replace newweight=5 if  test_wave5>5
tab newweight
tab voted [iw= newweight]
tab voted [iw=newweight *newweight ]
replace newweight=. if voted==.
tab voted [iw=newweigh]
tab voted [iw=newweight *newweight ]
save "C:\Users\Deuta\Desktop\RFT\team_Montreal_test_dk.dta", replace
tab voted [iw=1+ test_wave5]
tab voted [iw=test_wave5]
tab voted [iw=newweigh]
logit voted age age_sq edu female
logit voted age age_sq edu female [iw=1+ test_wave5]
logit voted age age_sq edu female [iw=1+ testweight]
logit voted age age_sq  female [iw=1+ testweight]
logit voted age age_sq  female [iw=1+  test3]
logit voted age age_sq  female [iw= test3]
logit voted age age_sq  female [iw=1+  test4]
logit voted age age_sq  female [iw=1+  test5]
logit voted age age_sq  female [iw=1+  test6]
logit voted age age_sq  female [iw=test6]
logit voted age age_sq  female [iw=1+  test5]
logit voted age age_sq  edu female [iw=1+  test5]
logit voted age age_sq  edu female [iw=1+   test_wave5]
logit voted age age_sq  edu female [iw=1+  testweight]
logit voted age age_sq  edu female
logit voted age age_sq  edu female [iw=1+  test2_w5]
logit voted age age_sq  edu female [iw=1+  test]
logit voted age age_sq  edu female [iw=1+   test_wave5]
logit voted age age_sq  edu female [iw=1+  test5]
tab voted [iw=1+  test5]
tab voted [iw=test5]
logit voted age age_sq  edu female [iw=1+  test5]/5
logit voted age age_sq  edu female [iw=1+  test5/5]
tab voted [iw=test5/5]
tab voted [iw=test5/6]
logit voted age age_sq  edu female [iw=1+  test5/6]
logit voted age age_sq  edu female [iw=1+  test5/10]
tab voted [iw=test5/10]
tab voted [iw=test5/8]
tab voted [iw=test5/7]
tab voted [iw=test5/6]
logit voted age age_sq  edu female [iw=1+  test5/7]
logit voted age age_sq  edu female [iw=1+  test5]
logit voted age age_sq  [iw=1+   test_wave5]
logit voted age age_sq
logit voted age
logit voted age [iw=1+   test_wave5]


***Second day: Wave 6; basically the same results, a bit less strong bc of the reinterviewed sample
sum  w6_p110q1 w6_p120q1 w6_p130q1 w6_p140q1 w6_p150q1 w6_p160q1 w6_p170q1 w6_p180q1 w6_p190q1 w6_p200q1 
w6_p310q1 w6_p310q2 w6_p320q1 w6_p320q2 w6_p320q1 w6_p320q2 w6_p330q1 w6_p340q1 w6_p340q2 w6_p400q1 
w6_p410q1 w6_p420q1 w6_p510q2 w6_p520q2 w6_p530q1 w6_p550q1 w6_p660q1 w6_p670q1 w6_p680q1 w6_p690q1 
w6_p820q1 w6_p830q1 w6_p1130q1 w6_p1508q4

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
   w6_p110q1 |       582    51.41581    208.7558          0        997
   w6_p120q1 |       582    21.57216    135.5304          0        997
   w6_p130q1 |       582    34.93471    167.0477          0        997
-------------+--------------------------------------------------------
   w6_p160q1 |       582     16.7732    115.8553          0        997
   w6_p170q1 |       582    30.50344    157.3544          0        997
   w6_p180q1 |       582    27.80412    146.6504          0        997
-------------+--------------------------------------------------------
   w6_p310q1 |       582    123.0189    320.8106          0        997
   w6_p320q1 |       582    122.8866     323.491          0        997
   w6_p320q1 |       582    122.8866     323.491          0        997
-------------+--------------------------------------------------------
   w6_p330q1 |       582    147.9089    349.0251          0        997
   w6_p340q1 |       582    121.1065    316.2013          0        997
   w6_p400q1 |       582    4.266323    2.939938          1         12
-------------+--------------------------------------------------------
   w6_p410q1 |       582     7.54811    2.487889          1         12
   w6_p420q1 |       582     6.88488    2.504827          1         12
   w6_p510q2 |       582    2.871134    1.319348          1          6
   w6_p520q2 |       582    2.934708    1.351686          1          6
   w6_p530q1 |       582    2.773196    1.369738          1          6
-------------+--------------------------------------------------------
   w6_p550q1 |       582    2.977663    1.396276          1          6
   w6_p660q1 |       582    3.579038    .9921068          1          6
   w6_p670q1 |       582    3.159794    1.009541          1          6
   w6_p680q1 |       582    3.527491    .7926731          1          6
   w6_p690q1 |       582    3.493127    .9197325          1          6
-------------+--------------------------------------------------------
   w6_p820q1 |       582    2.630584    .9235638          1          5
   w6_p830q1 |       582     2.07732     .851768          1          5
  w6_p1130q1 |       582    2.058419    1.014536          1          5

***Generate flags
gen flag_w6_p110q1=1 if w6_p110q1== 997
gen flag_w6_p120q1=1 if	w6_p120q1==997
gen flag_w6_p130q1=1	if	w6_p130q1==	997
gen flag_w6_p160q1=1	if	w6_p160q1==997
gen flag_w6_p170q1=1	if	w6_p170q1==997
gen flag_w6_p180q1=1	if	w6_p180q1==997
gen flag_w6_p310q1=1	if	w6_p310q1==997
gen flag_w6_p320q1=1	if	w6_p320q1==997
gen flag_w6_p330q1=1	if	w6_p330q1==997
gen flag_w6_p340q1=1	if	w6_p340q1==997
gen flag_w6_p400q1=1	if	w6_p400q1==12
gen flag_w6_p410q1=1	if	w6_p410q1==12
gen flag_w6_p420q1=1	if	w6_p420q1==12
gen flag_w6_p510q2=1	if	w6_p510q2==6
gen flag_w6_p520q2=1	if	w6_p520q2==6
gen flag_w6_p530q1=1	if	w6_p530q1==6
gen flag_w6_p550q1=1	if	w6_p550q1==6
gen flag_w6_p660q1=1	if	w6_p660q1==6
gen flag_w6_p670q1=1	if	w6_p670q1==6
gen flag_w6_p680q1=1	if	w6_p680q1==6
gen flag_w6_p690q1=1	if	w6_p690q1==6
gen flag_w6_p820q1=1	if	w6_p820q1==5
gen flag_w6_p1130q1=1	if	w6_p1130q1==5

***Create variable test_wave6
do "C:\Users\Deuta\AppData\Local\Temp\STD00000000.tmp" (*see above*)
recode  flag_w6_p110q1 flag_w6_p120q1 flag_w6_p130q1 flag_w6_p160q1 flag_w6_p170q1 
flag_w6_p180q1 flag_w6_p310q1 flag_w6_p320q1 flag_w6_p330q1 flag_w6_p340q1 flag_w6_p400q1 
flag_w6_p410q1 flag_w6_p420q1 flag_w6_p510q2 flag_w6_p520q2 flag_w6_p530q1 flag_w6_p550q1 
flag_w6_p660q1 flag_w6_p670q1 flag_w6_p680q1 flag_w6_p690q1 flag_w6_p820q1 flag_w6_p830q1 flag_w6_p1130q1 (.=0)
gen test_wave6=(  flag_w6_p110q1 + flag_w6_p120q1 + flag_w6_p130q1 + flag_w6_p160q1+  
flag_w6_p170q1 + flag_w6_p180q1+ flag_w6_p310q1 +flag_w6_p320q1 +flag_w6_p330q1+ flag_w6_p340q1 +
flag_w6_p400q1 +flag_w6_p410q1 + flag_w6_p420q1 +flag_w6_p510q2+ flag_w6_p520q2+ flag_w6_p530q1 +
flag_w6_p550q1+ flag_w6_p660q1+ flag_w6_p670q1 +flag_w6_p680q1+ flag_w6_p690q1+ flag_w6_p820q1+ 
flag_w6_p830q1 +flag_w6_p1130q1)/24
replace test_wave6=. if voted ==.
***Remove interest from flags:
replace test_wave6=test_wave6-flag_w6_p830q1
tab test_wave6

*** Analyses:
ologit w6_p10050q1 test_wave6
ologit  w6_p830q1 test_wave6 if  w6_p830q1<5
ologit  w5_p830q1 test_wave5 if  w6_p830q1<5
logit voted test_wave6
logit voted test_wave5
logit voted age age_sq edu female [iw=1+ test_wave5]
logit voted age age_sq edu female [iw=1+ test_wave6]
logit voted age age_sq edu female [iw=test_wave6*test_wave6]
logit voted age age_sq edu female [iw=1+test_wave6*test_wave6]
logit voted age age_sq edu female [iw=1+test_wave5*test_wave5]
tab voted [iw=test_wave6]
tab voted [iw=test_wave6*test_wave6]
***Log doesn't work that well
gen log_test_wave6=ln(test_wave6)
tab voted [iw=log_test_wave6 ]
logit voted age age_sq edu female [iw=log_test_wave6 ]
logit voted age age_sq edu female [iw=1+log_test_wave6 ]
logit voted log_test_wave6
logit voted test_wave6
save "C:\Users\Deuta\Desktop\RFT\team_Montreal_test_dk.dta", replace


****NEW ANALYSIS -correct
use "C:\Users\Deuta\Desktop\RFT\team_Montreal_test_dk.dta", clear
tab test_wave6
sum test_wave6
tab voted
tab test_wave5
tab voted
tab voted [iw=(1+test_wave5)/2.204]
logit voted age age_sq [iw=(1+test_wave5)/2.204]
logit voted age age_sq edu [iw=(1+test_wave5)/2.204]
logit voted age age_sq edu age_edu [iw=(1+test_wave5)/2.204]
probit voted age age_sq edu age_edu [iw=(1+test_wave5)/2.204]
probit voted age age_sq edu age_edu
tab test
corr test test_wave5
corr test test_wave5  test2_w5
corr  test_wave5 w6_p10050q1
logit voted age age_sq [iw=(1+test_wave5)/2.204]
logit voted age age_sq edu [iw=(1+test_wave5)/2.204]
logit voted age age_sq edu age_edu  [iw=(1+test_wave5)/2.204]
logit voted age age_sq edu
logit voted age age_sq edu age_edu
reg test_wave5 age age_sq
reg test_wave5 age
corr test_wave5 age
corr test_wave5 age_sq
logit voted age edu age_edu
logit voted age edu age_edu [iw=(1+test_wave5)/2.204]
logit voted age edu age_edu [iw=(1+test_wave5)/2.204] if age<40
logit voted age edu age_edu [iw=(1+test_wave5)/2.204] if age>40
logit voted age edu age_edu if age>40
corr test_wave5 age if age<40
corr test_wave5 age if age>40
corr test_wave5 age if age<=40
corr test_wave5 age if age>=40
corr test_wave5 age if age>40

gen test_w5_final=(1+test_wave5)/2.204

***Conclusions: just as with the NRW data, the logit doesn't come out significant; however, there are strong correlations b/w DKs and interest
***and a strange relationship b/w DK and age -- MUST investigate

***The weights narrow down the std error for reported stuff, not for given stuff.
***For example: the impact of interest in election

tab  w6_p1130q1
tab  w6_p1130q1, nol
probit voted  w6_p1130q1 age age_sq edu age_edu if  w6_p1130q1<5
probit voted  w6_p1130q1 age age_sq edu age_edu if  w6_p1130q1<5 [iw= test_w5_final]
probit voted  w6_p10050q1 age age_sq edu age_edu if   w6_p10050q1<5 [iw= test_w5_final]
probit voted  w6_p10050q1 age age_sq edu age_edu if   w6_p10050q1<5

