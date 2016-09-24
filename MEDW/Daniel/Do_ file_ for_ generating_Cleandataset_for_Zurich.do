
* CREATING CLEANED DATASET USING ORIGINAL DATASET FOR ZURICH

*Cleaning time-stamp variables
drop tim*


*Generating turnout variable

generate turnout=.
recode turnout (.=1) if pq5_1==4 | pq5_2==1
recode turnout (.=0) if pq5_2==2
recode turnout (.=0) if pq5_1==1|pq5_1==2|pq5_1==3

*Only preelection and postelection completes are kept
tab section
drop if section==2| section==8

    *preelection completes
recode section (1/6=1) (7=0), gen(precompletes)

    *postelection completes
recode section (5=1) (7=1) (1=0) (6=0), gen(postcompletes)


*flag2 and flag3: The vote distribution grid for these individuals are recoded as missing.


replace  pq6b2a1=. if flag2==1
replace  pq6b2a2=. if flag2==1
replace  pq6b2a3=. if flag2==1
replace  pq6b2a4=. if flag2==1
replace  pq6b2a5=. if flag2==1
replace  pq6b2a6=. if flag2==1
replace  pq6b2a7=. if flag2==1
replace  pq6b2a8=. if flag2==1
replace  pq6b2a9=. if flag2==1
replace  pq6b2a10=. if flag2==1
replace  pq6b2a11=. if flag2==1
replace  pq6b2a12=. if flag2==1
replace  pq6b2a13=. if flag2==1
replace  pq6b2a14=. if flag2==1
replace  pq6b2a15=. if flag2==1
replace  pq6b2a16=. if flag2==1
replace  pq6b2a17=. if flag2==1



replace  pq6b2a1=. if flag3==1
replace  pq6b2a2=. if flag3==1
replace  pq6b2a3=. if flag3==1
replace  pq6b2a4=. if flag3==1
replace  pq6b2a5=. if flag3==1
replace  pq6b2a6=. if flag3==1
replace  pq6b2a7=. if flag3==1
replace  pq6b2a8=. if flag3==1
replace  pq6b2a9=. if flag3==1
replace  pq6b2a10=. if flag3==1
replace  pq6b2a11=. if flag3==1
replace  pq6b2a12=. if flag3==1
replace  pq6b2a13=. if flag3==1
replace  pq6b2a14=. if flag3==1
replace  pq6b2a15=. if flag3==1
replace  pq6b2a16=. if flag3==1
replace  pq6b2a17=. if flag3==1

*pre/post_resp and _time are DELETED

drop pre_resp  post_resp pre_time  post_time


*Demographic variables
gen agecon= (2011-sd1)
recode q268 (1=0) (2=1), gen(female)
recode sd2a (99=.), gen(education)
recode sd5 (98/99=.), gen(income)
recode sd7 (9=.), gen(townsize)

* Satisfaction with Democracy (SWD) Questions are asked at the beginning and the end for each wave.
*Here we combine both to create a single SWD variable.

*Preelection SWD

recode q1a1 q1a2 q1a3 q1a4 q1a1_2 q1a2_2 q1a3_2 q1a4_2  (99=.)

gen swdmunicpre=q1a1
recode  swdmunicpre (.=0) if q1a1_2 ==0
recode  swdmunicpre (.=1) if q1a1_2 ==1
recode  swdmunicpre (.=2) if q1a1_2 ==2
recode  swdmunicpre (.=3) if q1a1_2 ==3
recode  swdmunicpre (.=4) if q1a1_2 ==4
recode  swdmunicpre (.=5) if q1a1_2 ==5
recode  swdmunicpre (.=6) if q1a1_2 ==6
recode  swdmunicpre (.=7) if q1a1_2 ==7
recode  swdmunicpre (.=8) if q1a1_2 ==8
recode  swdmunicpre (.=9) if q1a1_2 ==9
recode  swdmunicpre (.=10) if q1a1_2 ==10

gen swdcantonpre=q1a2

recode swdcantonpre (.=0) if q1a2_2 ==0
recode swdcantonpre (.=1) if q1a2_2 ==1
recode swdcantonpre (.=2) if q1a2_2 ==2
recode swdcantonpre (.=3) if q1a2_2 ==3
recode swdcantonpre (.=4) if q1a2_2 ==4
recode swdcantonpre (.=5) if q1a2_2 ==5
recode swdcantonpre (.=6) if q1a2_2 ==6
recode swdcantonpre (.=7) if q1a2_2 ==7
recode swdcantonpre (.=8) if q1a2_2 ==8
recode swdcantonpre (.=9) if q1a2_2 ==9
recode swdcantonpre (.=10) if q1a2_2 ==10


gen swdfederalpre=q1a3

recode swdfederalpre (.=0) if q1a3_2 ==0
recode swdfederalpre (.=1) if q1a3_2 ==1
recode swdfederalpre (.=2) if q1a3_2 ==2
recode swdfederalpre (.=3) if q1a3_2 ==3
recode swdfederalpre (.=4) if q1a3_2 ==4
recode swdfederalpre (.=5) if q1a3_2 ==5
recode swdfederalpre (.=6) if q1a3_2 ==6
recode swdfederalpre (.=7) if q1a3_2 ==7
recode swdfederalpre (.=8) if q1a3_2 ==8
recode swdfederalpre (.=9) if q1a3_2 ==9
recode swdfederalpre (.=10) if q1a3_2 ==10



gen swdEUpre=q1a4

recode swdEUpre(.=0) if q1a4_2 ==0
recode swdEUpre(.=1) if q1a4_2 ==1
recode swdEUpre(.=2) if q1a4_2 ==2
recode swdEUpre(.=3) if q1a4_2 ==3
recode swdEUpre(.=4) if q1a4_2 ==4
recode swdEUpre(.=5) if q1a4_2 ==5
recode swdEUpre(.=6) if q1a4_2 ==6
recode swdEUpre(.=7) if q1a4_2 ==7
recode swdEUpre(.=8) if q1a4_2 ==8
recode swdEUpre(.=9) if q1a4_2 ==9
recode swdEUpre(.=10) if q1a4_2 ==10

*Postelection SWD

recode pq1a1 pq1a2 pq1a3 pq1a4 pq1a1_2 pq1a2_2 pq1a3_2 pq1a4_2(99=.)

gen swdmunicpost=pq1a1
recode swdmunicpost (.=0) if pq1a1_2 ==0
recode swdmunicpost (.=1) if pq1a1_2 ==1
recode swdmunicpost (.=2) if pq1a1_2 ==2
recode swdmunicpost (.=3) if pq1a1_2 ==3
recode swdmunicpost (.=4) if pq1a1_2 ==4
recode swdmunicpost (.=5) if pq1a1_2 ==5
recode swdmunicpost (.=6) if pq1a1_2 ==6
recode swdmunicpost (.=7) if pq1a1_2 ==7
recode swdmunicpost (.=8) if pq1a1_2 ==8
recode swdmunicpost (.=9) if pq1a1_2 ==9
recode swdmunicpost (.=10) if pq1a1_2 ==10

gen  swdcantonpost=pq1a2

recode  swdcantonpost (.=0) if pq1a2_2 ==0
recode  swdcantonpost (.=1) if pq1a2_2 ==1
recode  swdcantonpost (.=2) if pq1a2_2 ==2
recode  swdcantonpost (.=3) if pq1a2_2 ==3
recode  swdcantonpost (.=4) if pq1a2_2 ==4
recode  swdcantonpost (.=5) if pq1a2_2 ==5
recode  swdcantonpost (.=6) if pq1a2_2 ==6
recode  swdcantonpost (.=7) if pq1a2_2 ==7
recode  swdcantonpost (.=8) if pq1a2_2 ==8
recode  swdcantonpost (.=9) if pq1a2_2 ==9
recode  swdcantonpost (.=10) if pq1a2_2 ==10


gen swdfederalpost=pq1a3

recode swdfederalpost (.=0) if pq1a3_2 ==0
recode swdfederalpost (.=1) if pq1a3_2 ==1
recode swdfederalpost (.=2) if pq1a3_2 ==2
recode swdfederalpost (.=3) if pq1a3_2 ==3
recode swdfederalpost (.=4) if pq1a3_2 ==4
recode swdfederalpost (.=5) if pq1a3_2 ==5
recode swdfederalpost (.=6) if pq1a3_2 ==6
recode swdfederalpost (.=7) if pq1a3_2 ==7
recode swdfederalpost (.=8) if pq1a3_2 ==8
recode swdfederalpost (.=9) if pq1a3_2 ==9
recode swdfederalpost (.=10) if pq1a3_2 ==10



gen swdEUpost=pq1a4

recode swdEUpost(.=0) if pq1a4_2 ==0
recode swdEUpost(.=1) if pq1a4_2 ==1
recode swdEUpost(.=2) if pq1a4_2 ==2
recode swdEUpost(.=3) if pq1a4_2 ==3
recode swdEUpost(.=4) if pq1a4_2 ==4
recode swdEUpost(.=5) if pq1a4_2 ==5
recode swdEUpost(.=6) if pq1a4_2 ==6
recode swdEUpost(.=7) if pq1a4_2 ==7
recode swdEUpost(.=8) if pq1a4_2 ==8
recode swdEUpost(.=9) if pq1a4_2 ==9
recode swdEUpost(.=10) if pq1a4_2 ==10


*Ordering
order agecon female townsize income education turnout vote swdmunicpre swdcantonpre swdfederalpre swdEUpre  swdmunicpost swdcantonpost swdfederalpost swdEUpost precompletes postcompletes  PRE_WEIGHT1 PRE_WEIGHT2 PRE_WEIGHT3 PRE_WEIGHT4 POST_WEIGHT1 POST_WEIGHT2 POST_WEIGHT3 POST_WEIGHT4
