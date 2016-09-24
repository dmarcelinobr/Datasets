use "C:\Users\Deuta\Desktop\Survey missing data project\team_Montreal_test_dk.dta", clear
codebook, compact
tab w5_p110q1
tab w5_p310q1
tab w5_p400q1
tab w5_p400q1, nol
tab w5_p510q1
tab w5_p510q1, nol
tab w5_p770q1
tab w5_p770q1, nol
tab w5_p820q1
tab w5_p820q1, nol
tab w5_p1135q1
tab w5_p1135q1, nol
drop   flag_w5_p310q1 flag_w5_p320q1 flag_w5_p330q1 flag_w5_p340q1 flag_w5_p400q1 flag_w5_p410q1 flag_w5_p420q1 flag_w5_p510q1 flag_w5_p510q2 flag_w5_p520q1 flag_w5_p520q2 flag_w5_p530q1 flag_w5_p550q1 flag_w5_p650q1 flag_w5_p660q1 flag_w5_p670q1 flag_w5_p680q1 flag_w5_p690q1 flag_w5_p770q1 test2_w5 flag_w5_p820q1 flag_w5_p830q1 flag_w5_p1135q1 flag_w5_p1320q1 test_wave5 testweight new_testweight test_wave5_sq p test4 test5 test6 test_w5_final

***Gen new dk variable:

gen	flag_w5_p110q1	=	1	if	w5_p110q1	==	997
gen	flag_w5_p120q1	=	1	if	w5_p120q1	==	997
gen	flag_w5_p130q1	=	1	if	w5_p130q1	==	997
gen	flag_w5_p160q1	=	1	if	w5_p160q1	==	997
gen	flag_w5_p170q1	=	1	if	w5_p170q1	==	997
gen	flag_w5_p180q1	=	1	if	w5_p180q1	==	997
gen	flag_w5_p310q1	=	1	if	w5_p310q1	==	997
gen	flag_w5_p320q1	=	1	if	w5_p320q1	==	997
gen	flag_w5_p330q1	=	1	if	w5_p330q1	==	997
gen	flag_w5_p340q1	=	1	if	w5_p340q1	==	997
gen	flag_w5_p400q1	=	1	if	w5_p400q1	==	12
gen	flag_w5_p410q1	=	1	if	w5_p410q1	==	12
gen	flag_w5_p420q1	=	1	if	w5_p420q1	==	12
gen	flag_w5_p510q1	=	1	if	w5_p510q1	==	6
gen	flag_w5_p510q2	=	1	if	w5_p510q2	==	6
gen	flag_w5_p520q1	=	1	if	w5_p520q1	==	6
gen	flag_w5_p520q2	=	1	if	w5_p520q2	==	6
gen	flag_w5_p530q1	=	1	if	w5_p530q1	==	6
gen	flag_w5_p550q1	=	1	if	w5_p550q1	==	6
gen	flag_w5_p650q1	=	1	if	w5_p650q1	==	6
gen	flag_w5_p660q1	=	1	if	w5_p660q1	==	6
gen	flag_w5_p670q1	=	1	if	w5_p670q1	==	6
gen	flag_w5_p680q1	=	1	if	w5_p680q1	==	6
gen	flag_w5_p690q1	=	1	if	w5_p690q1	==	6
gen	flag_w5_p770q1	=	1	if	w5_p770q1	==	11
gen	flag_w5_p820q1	=	1	if	w5_p820q1	==	5
gen	flag_w5_p1135q1	=	1	if	w5_p1135q1	==	8

recode	flag_w5_p110q1	.=	0	if	age	!=.
recode	flag_w5_p120q1	.=	0	if	age	!=.
recode	flag_w5_p130q1	.=	0	if	age	!=.
recode	flag_w5_p160q1	.=	0	if	age	!=.
recode	flag_w5_p170q1	.=	0	if	age	!=.
recode	flag_w5_p180q1	.=	0	if	age	!=.
recode	flag_w5_p310q1	.=	0	if	age	!=.
recode	flag_w5_p320q1	.=	0	if	age	!=.
recode	flag_w5_p330q1	.=	0	if	age	!=.
recode	flag_w5_p340q1	.=	0	if	age	!=.
recode	flag_w5_p400q1	.=	0	if	age	!=.
recode	flag_w5_p410q1	.=	0	if	age	!=.
recode	flag_w5_p420q1	.=	0	if	age	!=.
recode	flag_w5_p510q1	.=	0	if	age	!=.
recode	flag_w5_p510q2	.=	0	if	age	!=.
recode	flag_w5_p520q1	.=	0	if	age	!=.
recode	flag_w5_p520q2	.=	0	if	age	!=.
recode	flag_w5_p530q1	.=	0	if	age	!=.
recode	flag_w5_p550q1	.=	0	if	age	!=.
recode	flag_w5_p650q1	.=	0	if	age	!=.
recode	flag_w5_p660q1	.=	0	if	age	!=.
recode	flag_w5_p670q1	.=	0	if	age	!=.
recode	flag_w5_p680q1	.=	0	if	age	!=.
recode	flag_w5_p690q1	.=	0	if	age	!=.
recode	flag_w5_p770q1	.=	0	if	age	!=.
recode	flag_w5_p820q1	.=	0	if	age	!=.
recode	flag_w5_p1135q1	.=	0	if	age	!=.

sum flag_w5_p110q1	flag_w5_p120q1	flag_w5_p130q1	flag_w5_p160q1	flag_w5_p170q1	flag_w5_p180q1	flag_w5_p310q1	flag_w5_p320q1	flag_w5_p330q1	flag_w5_p340q1	flag_w5_p400q1	flag_w5_p410q1	flag_w5_p420q1	flag_w5_p510q1	flag_w5_p510q2	flag_w5_p520q1	flag_w5_p520q2	flag_w5_p530q1	flag_w5_p550q1	flag_w5_p650q1	flag_w5_p660q1	flag_w5_p670q1	flag_w5_p680q1	flag_w5_p690q1	flag_w5_p770q1	flag_w5_p820q1	flag_w5_p1135q1

gen test_wave5= flag_w5_p110q1 + flag_w5_p120q1 + flag_w5_p130q1 + flag_w5_p160q1 + flag_w5_p170q1 + flag_w5_p180q1 + flag_w5_p310q1 + flag_w5_p320q1 + flag_w5_p330q1 + flag_w5_p340q1 + flag_w5_p400q1 + flag_w5_p410q1 + flag_w5_p420q1 + flag_w5_p510q1 + flag_w5_p510q2 + flag_w5_p520q1 + flag_w5_p520q2 + flag_w5_p530q1 + flag_w5_p550q1 + flag_w5_p650q1 + flag_w5_p660q1 + flag_w5_p670q1 + flag_w5_p680q1 + flag_w5_p690q1 + flag_w5_p770q1 + flag_w5_p820q1 + flag_w5_p1135q1

tab test_wave5
tab voted
tab voted [iw=test_wave5]
tab voted [iw=1+ test_wave5]
tab voted [iw=(1+ test_wave5)/2.1202]
gen scaled_testw5=(1+ test_wave5)/2.1202
logit voted age age_sq
logit voted age age_sq [iw=scaled_testw5 ]
logit voted age age_sq edu [iw=scaled_testw5 ]
logit voted age age_sq edu age_edu [iw=scaled_testw5 ]
logit voted age age_sq edu age_edu
logit voted age age_sq edu
logit voted age age_sq edu [iw=scaled_testw5 ]
corr scaled_testw5  w6_p1130q1
tab  w6_p1130q1
tab  w6_p1130q1, nol
corr scaled_testw5  w6_p1130q1 if  w6_p1130q1<5
corr test_wave5  w6_p1130q1 if  w6_p1130q1<5
codebook, compact
save "C:\Users\Deuta\Desktop\Survey missing data project\team_Montreal_test_dk.dta", replace

***Corrlations with demographics and attitudinal variables
tab w6_p10050q1
corr scaled_testw5 w6_p10050q1
tab w6_p10050q1 [iw=scaled_testw5 ]
tab w6_p10050q9
tab w6_p10050q9, nol
corr  w6_p10050q9 scaled_testw5 if w6_p10050q9<6
tab  w6_p10050q9 [iw=scaled_testw5] if w6_p10050q9<6
tab  w6_p10050q9 if w6_p10050q9<6
tab w6_p820q1
tab w6_p820q1, nol
corr w6_p820q1 scaled_testw5 if w6_p820q1<5
tab w6_p830q1
corr w6_p830q1 scaled_testw5 if w6_p830q1<5
tab w6_p1130q1
tab w6_p1130q1 w6_p830q1
corr w6_p1130q1 scaled_testw5 if w6_p1130q1<5
corr scaled_testw5 age
corr scaled_testw5 age age_sq
reg scaled_testw5 age age_sq
reg scaled_testw5 age
corr female scaled_testw5
twoway (scatter test_wave5 age)
twoway (bar test_wave5 age)
twoway (bar test_wave5 female)
twoway (bar test_wave5 female, sort)
twoway (scatter test_wave5 female, sort)
twoway (scatter test_wave5 female if female==0, sort)
twoway (scatter test_wave5 female if female==0) (scatter test_wave5 female if female==1)
twoway (tsline test_wave5 if female==0) (tsline test_wave5 if female==1)
twoway (scatter test_wave5 female if female==0) (scatter test_wave5 female if female==1)
graph use "C:\Users\Deuta\Desktop\Survey missing data project\Graph.gph"
reg test_wave5 age female
reg test_wave5 age
reg test_wave5  female
reg test_wave5  edu
tab edu
tab edu, nol
reg test_wave5  edu if edu<6
corr test_wave5  edu if edu<6
tab  w5_p830q1
tab w6_p10050q1 [ iw=w5_p830q1] if  w5_p830q1<5
tab w6_p10050q1
tab w6_p10050q1 [ iw=w5_p830q1/2.1254] if  w5_p830q1<5
corr w6_p10050q1 w5_p830q1 if  w5_p830q1<5

*** TO do: run the turnout models with the attitudinal variables, and perhaps even just the demographic one; it works if no interaction b/w age & edu. 

***Nov 15

use "C:\Users\Deuta\Desktop\Survey missing data project\team_Montreal_test_dk.dta", clear
probit voted age age_sq edu female
probit voted age age_sq edu female [iw= scaled_testw5]
probit voted age age_sq edu  [iw= scaled_testw5]
probit voted age age_sq edu
probit voted age age_sq edu age_edu
probit voted age edu age_edu
probit voted age age_sq edu
logit voted age age_sq edu
logit voted age age_sq edu, robust
logit voted age age_sq edu age_edu , robust
logit voted age age_sq edu, robust
logit voted age age_sq edu, robust [iw=scaled_testw5 ]
logit voted age age_sq edu [iw=scaled_testw5 ], robust
probit voted age age_sq edu, robust
probit voted age age_sq edu [iw=scaled_testw5 ], robust
probit voted age age_sq edu
probit voted age age_sq edu [iw=scaled_testw5 ]
probit voted age age_sq edu [iw= w5_W8_oth ]
sum  w5_W8_oth
sum  w6_p1130q1 w6_p830q1 w6_p10050q9 w6_p10050q1
tab1  w6_p1130q1 w6_p830q1 w6_p10050q9 w6_p10050q1
probit voted w6_p1130q1 age age_sq edu
probit voted w6_p1130q1 age age_sq edu [iw=scaled_testw5 ]
probit voted w6_p1130q1 age age_sq edu if w6_p1130q1 <5
probit voted w6_p1130q1 age age_sq edu [iw=scaled_testw5 ] if w6_p1130q1 <5
probit voted  w6_p830q1  age age_sq edu if  w6_p830q1  <5
probit voted  w6_p830q1  age age_sq edu  [iw=scaled_testw5 ] if  w6_p830q1  <5
probit voted  w6_p830q1 scaled_testw5 age age_sq edu  if  w6_p830q1  <5
probit voted   scaled_testw5 age age_sq edu
probit voted   age age_sq edu
probit voted  w6_p830q1 scaled_testw5 age age_sq edu  if  w6_p830q1  <5
probit voted  w6_p830q1 age age_sq edu  if  w6_p830q1  <5
probit voted w6_p1130q1 age age_sq edu
sum  w6_p1130q1 w6_p830q1 w6_p10050q9 w6_p10050q1
sum  w6_p10050q9 w6_p10050q1
tab1  w6_p10050q9 w6_p10050q1

***The thing is that scaled_testw5 is a significant predictor which reduces the impact of the important IVs too in this survey. 
probit voted w6_p10050q9   age age_sq edu if w6_p10050q9  <6
probit voted w6_p10050q9  scaled_testw5  age age_sq edu if w6_p10050q9  <6
probit voted  w6_p10050q1 scaled_testw5  age age_sq edu
probit voted  w6_p10050q1  age age_sq edu
probit voted  w6_p10050q1  age age_sq edu, robust
probit voted  w6_p10050q1 scaled_testw5  age age_sq edu, robust
probit voted  scaled_testw5  age age_sq edu, robust
probit voted  age age_sq edu, robust

***Nov 27. Wave 1 analyses, see do file uk_nov25 (and yougov explanations). ** Note that I've saved the data to keep the new variables in. 
use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project\team_Montreal_test_dk.dta", clear
tab test_wave5
tab w5_p805q1
tab w5_p805q1, nol
gen intent_2_vote= w5_p805q1 if  w5_p805q1<12
replace intent_2_vote=11-intent_2_vote
tab intent_2_vote
drop intent_2_vote
gen intent_2_vote= w5_p805q1 if  w5_p805q1<12
replace intent_2_vote=intent_2_vote-1
tab intent_2_vote
tab w5_p830q1
tab w5_p830q1, nol
gen itrst_pol=w5_p830q1 if w5_p830q1<5
replace itrst_pol =5-itrst_pol
tab itrst_pol
replace itrst_pol =itrst_pol-1
tab itrst_pol
replace itrst_pol =itrst_pol+1
tab itrst_pol
gen interest_x_testw5= itrst_pol* test_wave5
reg  intent_2_vote itrst_pol
reg  intent_2_vote itrst_pol  test_wave5
reg  intent_2_vote itrst_pol  test_wave5  interest_x_testw5
save "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project\team_Montreal_test_dk.dta", replace

***Nov28
. use "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project NOV27\team_Montreal_test_dk.d
> ta", clear

. reg  intent_2_vote itrst_pol

      Source |       SS       df       MS              Number of obs =     754
-------------+------------------------------           F(  1,   752) =   52.18
       Model |  258.507416     1  258.507416           Prob > F      =  0.0000
    Residual |  3725.71142   752  4.95440348           R-squared     =  0.0649
-------------+------------------------------           Adj R-squared =  0.0636
       Total |  3984.21883   753  5.29112727           Root MSE      =  2.2258

------------------------------------------------------------------------------
intent_2_v~e |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
   itrst_pol |   .6984809   .0966972     7.22   0.000     .5086524    .8883094
       _cons |   7.139271   .2909665    24.54   0.000     6.568067    7.710474
------------------------------------------------------------------------------

. predict l1
(option xb assumed; fitted values)
(4 missing values generated)

. reg  intent_2_vote itrst_pol  test_wave5

      Source |       SS       df       MS              Number of obs =     754
-------------+------------------------------           F(  2,   751) =   40.12
       Model |  384.556145     2  192.278072           Prob > F      =  0.0000
    Residual |  3599.66269   751  4.79315937           R-squared     =  0.0965
-------------+------------------------------           Adj R-squared =  0.0941
       Total |  3984.21883   753  5.29112727           Root MSE      =  2.1893

------------------------------------------------------------------------------
intent_2_v~e |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
   itrst_pol |   .4995108   .1027203     4.86   0.000     .2978578    .7011638
  test_wave5 |  -.2239714   .0436751    -5.13   0.000    -.3097113   -.1382315
       _cons |   7.952508   .3271926    24.31   0.000     7.310187    8.594829
------------------------------------------------------------------------------

. predict l2
(option xb assumed; fitted values)
(4 missing values generated)

. reg  intent_2_vote itrst_pol  test_wave5  interest_x_testw5

      Source |       SS       df       MS              Number of obs =     754
-------------+------------------------------           F(  3,   750) =   32.61
       Model |  459.687103     3  153.229034           Prob > F      =  0.0000
    Residual |  3524.53173   750  4.69937564           R-squared     =  0.1154
-------------+------------------------------           Adj R-squared =  0.1118
       Total |  3984.21883   753  5.29112727           Root MSE      =  2.1678

------------------------------------------------------------------------------
intent_2_v~e |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
   itrst_pol |    .301033    .113177     2.66   0.008     .0788517    .5232143
  test_wave5 |  -.6122005   .1062907    -5.76   0.000    -.8208631   -.4035378
interest_x~5 |   .1818201   .0454729     4.00   0.000     .0925508    .2710894
       _cons |    8.49365   .3511081    24.19   0.000     7.804378    9.182922
------------------------------------------------------------------------------

. predict l3
(option xb assumed; fitted values)
(4 missing values generated)

. sum  l1 l2 l3

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
          l1 |       758    9.152702    .5891415   7.837751   9.933194
          l2 |       758    9.141235    .7527865   4.868476   9.950551
          l3 |       758    9.133767    .8640488   1.908597   10.27318

. tab  itrst_pol if  test_wave5==0

  itrst_pol |      Freq.     Percent        Cum.
------------+-----------------------------------
          1 |         12        2.53        2.53
          2 |         87       18.32       20.84
          3 |        232       48.84       69.68
          4 |        144       30.32      100.00
------------+-----------------------------------
      Total |        475      100.00

. tab  itrst_pol if  test_wave5==1

  itrst_pol |      Freq.     Percent        Cum.
------------+-----------------------------------
          1 |          6        5.36        5.36
          2 |         24       21.43       26.79
          3 |         60       53.57       80.36
          4 |         22       19.64      100.00
------------+-----------------------------------
      Total |        112      100.00

. tab  itrst_pol if  test_wave5==2

  itrst_pol |      Freq.     Percent        Cum.
------------+-----------------------------------
          1 |          2        5.13        5.13
          2 |          9       23.08       28.21
          3 |         23       58.97       87.18
          4 |          5       12.82      100.00
------------+-----------------------------------
      Total |         39      100.00

. tab  itrst_pol if  test_wave5==3

  itrst_pol |      Freq.     Percent        Cum.
------------+-----------------------------------
          1 |          4       10.53       10.53
          2 |         15       39.47       50.00
          3 |         16       42.11       92.11
          4 |          3        7.89      100.00
------------+-----------------------------------
      Total |         38      100.00

. tab  itrst_pol if  test_wave5==4

  itrst_pol |      Freq.     Percent        Cum.
------------+-----------------------------------
          1 |          4        9.76        9.76
          2 |         17       41.46       51.22
          3 |         14       34.15       85.37
          4 |          6       14.63      100.00
------------+-----------------------------------
      Total |         41      100.00

. tab  itrst_pol if  test_wave5>5

  itrst_pol |      Freq.     Percent        Cum.
------------+-----------------------------------
          1 |         14       43.75       43.75
          2 |         13       40.63       84.38
          3 |          5       15.63      100.00
------------+-----------------------------------
      Total |         32      100.00

. sum l1 l2 l3 if  test_wave5==0

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
          l1 |       475     9.28324    .5336734   7.837751   9.933194
          l2 |       475    9.485743    .3816507   8.452019   9.950551
          l3 |       475    9.417663    .2300037   8.794683   9.697782

. sum l1 l2 l3 if  test_wave5==1

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
          l1 |       112    9.147403     .547702   7.837751   9.933194
          l2 |       112     9.16463     .391683   8.228047    9.72658
          l3 |       112    9.269652    .3786213   8.364303   9.812862

. sum l1 l2 l3 if  test_wave5==2

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
          l1 |        39    9.091435    .5112586   7.837751   9.933194
          l2 |        39    8.900634    .3656209   8.004076   9.502608
          l3 |        39    9.126925    .4865129   7.933922   9.927942

. sum l1 l2 l3 if  test_wave5==3

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
          l1 |        38    8.867092    .5563451   7.837751   9.933194
          l2 |        38    8.516226     .397864   7.780105   9.278637
          l3 |        38    8.751006     .674238   7.503542   10.04302

. sum l1 l2 l3 if  test_wave5==4

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
          l1 |        41    8.911027    .6068661   7.837751   9.933194
          l2 |        41    8.323674    .4339935   7.556133   9.054666
          l3 |        41    8.653253     .893437   7.073162    10.1581

. sum l1 l2 l3 if  test_wave5==5

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
          l1 |        21    8.569494    .6430651   7.837751   9.933194
          l2 |        21    7.855459    .4598807   7.332162   8.830694
          l3 |        21     7.91054    1.114124   6.642781   10.27318

. sum l1 l2 l3 if  test_wave5>5

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
          l1 |        32    8.339785    .5091013   7.837751   9.234714
          l2 |        32    6.872289     .799404   4.868476   8.107212
          l3 |        32    6.325354    1.817527   1.908597   8.996308

. sum test_wave5

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
  test_wave5 |       762    1.192913    2.459833          0         27

save "C:\Users\Deuta\Desktop\Survey missing data project\Survey missing data project NOV27\team_Montreal_test_dk.dta", replace
