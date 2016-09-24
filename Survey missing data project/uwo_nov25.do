use "C:\Users\Delia\Desktop\Survey missing data project\Survey missing data project\uwo_2010_medw_full_weights_2_mod_august_5_DK.dta", clear
gen new_q4=q4
replace new_q4=. if q4==99
gen new_q4_test1=new_q4 *test1
reg q7a  new_q4  if q7a<8
reg q7a  new_q4 test1  if q7a<8
reg q7a  new_q4 test1 new_q4_test1  if q7a<8
reg q7b  new_q4 if q7b<11
reg q7b  new_q4 test1 if q7b<11
reg q7b  new_q4 test1  new_q4_test1 if q7b<11
***For the 10 point variable it works with and without wieghts. 
***For the 6 point variable works better without the weights
reg q7b  new_q4 test1  new_q4_test1 if q7b<11 [iw= wtpreges]
reg q7b  new_q4 test1  new_q4_test1 if q7b<11 [pw= wtpreges]
reg q7a  new_q4 test1 new_q4_test1  if q7a<9 [iw= wtpreges]
reg q7a  new_q4 test1 new_q4_test1  if q7a<9 [pw= wtpreges]
***Gives the same results:
gen newq4test1_plus1=new_q4*(1+test1)
gen test1_plus1=test1+1
reg q7b  new_q4 test1_plus1  newq4test1_plus1 if q7b<11
reg q7b  new_q4 test1_plus1  newq4test1_plus1 if q7b<11, robust
reg q7a  new_q4 test1_plus1  newq4test1_plus1 if q7a<7, robust
reg q7a  new_q4 test1_plus1  newq4test1_plus1 if q7a<7

. reg q7b  new_q4 if q7b<11

      Source |       SS       df       MS              Number of obs =     358
-------------+------------------------------           F(  1,   356) =  273.35
       Model |  1467.35522     1  1467.35522           Prob > F      =  0.0000
    Residual |  1911.02467   356  5.36804682           R-squared     =  0.4343
-------------+------------------------------           Adj R-squared =  0.4327
       Total |  3378.37989   357  9.46324899           Root MSE      =  2.3169

------------------------------------------------------------------------------
         q7b |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
      new_q4 |   .6872139   .0415654    16.53   0.000     .6054692    .7689586
       _cons |   3.370684   .3111869    10.83   0.000     2.758689     3.98268
------------------------------------------------------------------------------

. reg q7b  new_q4 test1 if q7b<11

      Source |       SS       df       MS              Number of obs =     358
-------------+------------------------------           F(  2,   355) =  147.57
       Model |  1533.64962     2  766.824809           Prob > F      =  0.0000
    Residual |  1844.73027   355  5.19642329           R-squared     =  0.4540
-------------+------------------------------           Adj R-squared =  0.4509
       Total |  3378.37989   357  9.46324899           Root MSE      =  2.2796

------------------------------------------------------------------------------
         q7b |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
      new_q4 |   .6142757   .0457105    13.44   0.000     .5243783    .7041732
       test1 |  -.0444883   .0124554    -3.57   0.000     -.068984   -.0199925
       _cons |   4.148074   .3756481    11.04   0.000     3.409299     4.88685
------------------------------------------------------------------------------

. reg q7b  new_q4 test1  new_q4_test1 if q7b<11

      Source |       SS       df       MS              Number of obs =     358
-------------+------------------------------           F(  3,   354) =  100.77
       Model |  1556.11191     3   518.70397           Prob > F      =  0.0000
    Residual |  1822.26798   354  5.14764966           R-squared     =  0.4606
-------------+------------------------------           Adj R-squared =  0.4560
       Total |  3378.37989   357  9.46324899           Root MSE      =  2.2688

------------------------------------------------------------------------------
         q7b |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
      new_q4 |   .5670741   .0507979    11.16   0.000     .4671705    .6669777
       test1 |  -.0742058   .0188698    -3.93   0.000    -.1113167   -.0370949
new_q4_test1 |   .0077644   .0037169     2.09   0.037     .0004543    .0150744
       _cons |   4.436589   .3985765    11.13   0.000     3.652714    5.220465
------------------------------------------------------------------------------

****The variables:

. tab new_q4

     new_q4 |      Freq.     Percent        Cum.
------------+-----------------------------------
          0 |         52        5.16        5.16
          1 |         19        1.88        7.04
          2 |         27        2.68        9.72
          3 |         38        3.77       13.49
          4 |         30        2.98       16.47
          5 |        107       10.62       27.08
          6 |         89        8.83       35.91
          7 |         89        8.83       44.74
          8 |        165       16.37       61.11
          9 |        111       11.01       72.12
         10 |        281       27.88      100.00
------------+-----------------------------------
      Total |      1,008      100.00

. tab q4

   q4.  how |
 interested |
 are you in |
        the |
  election? |      Freq.     Percent        Cum.
------------+-----------------------------------
          0 |         52        5.14        5.14
          1 |         19        1.88        7.02
          2 |         27        2.67        9.69
          3 |         38        3.76       13.45
          4 |         30        2.97       16.42
          5 |        107       10.58       27.00
          6 |         89        8.80       35.81
          7 |         89        8.80       44.61
          8 |        165       16.32       60.93
          9 |        111       10.98       71.91
         10 |        281       27.79       99.70
 don't know |          3        0.30      100.00
------------+-----------------------------------
      Total |      1,011      100.00

. tab q7a

 q7a.  how likely are you |
  to vote in the election |
                on 9 may? |      Freq.     Percent        Cum.
--------------------------+-----------------------------------
          certain to vote |        246       62.28       62.28
      very likely to vote |         49       12.41       74.68
  somewhat likely to vote |         33        8.35       83.04
somewhat unlikely to vote |         18        4.56       87.59
    very unlikely to vote |         11        2.78       90.38
      certain not to vote |         28        7.09       97.47
               don't know |         10        2.53      100.00
--------------------------+-----------------------------------
                    Total |        395      100.00

. tab q7a, nol

  q7a.  how |
 likely are |
you to vote |
     in the |
election on |
     9 may? |      Freq.     Percent        Cum.
------------+-----------------------------------
          1 |        246       62.28       62.28
          2 |         49       12.41       74.68
          3 |         33        8.35       83.04
          4 |         18        4.56       87.59
          5 |         11        2.78       90.38
          6 |         28        7.09       97.47
          9 |         10        2.53      100.00
------------+-----------------------------------
      Total |        395      100.00

. tab q7b

   q7b.  how likely are |
     you to vote in the |
     election on 9 may? |      Freq.     Percent        Cum.
------------------------+-----------------------------------
0 - certain not to vote |         21        5.72        5.72
                      1 |          8        2.18        7.90
                      2 |          7        1.91        9.81
                      3 |          6        1.63       11.44
                      4 |          8        2.18       13.62
                      5 |         18        4.90       18.53
                      6 |         12        3.27       21.80
                      7 |         20        5.45       27.25
                      8 |         18        4.90       32.15
                      9 |         23        6.27       38.42
   10 - certain to vote |        219       59.67       98.09
             don't know |          7        1.91      100.00
------------------------+-----------------------------------
                  Total |        367      100.00

. 
