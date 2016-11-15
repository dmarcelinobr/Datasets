clear all

use "C:\Users\fujiwara\Research\Benin\Replication Files\AEJ_elec_data_A6.dta", clear

**** Table A6.1
foreach i in participation nuls_rate appuye_rate top_share sec_share trd_share fourth_share fifth_lower hhi  {
areg `i' treat [w=w2], rob a(comid)
permute treat _b[treat], strata(comid) nodots reps(1000) seed(0) force:  reg `i' treat dcom2-dcom12 [w=w2] 
} 

**** Table A6.2
foreach i in top_share appuye_rate  {
areg `i' treat if subsamp==1 [w=w2], rob a(comid)
permute treat _b[treat], strata(comid) reps(1000) seed(0) force:  reg `i' treat dcom1-dcom11 [w=w2] if  subsamp==1
} 
areg appuye_rate c.yayi#c.treat c.soglo#c.treat c.amoussou#c.treat  if  subsamp==1 [w=w2], rob a(comid)
permute treat _b[c.yayi#c.treat], strata(comid) reps(1000) seed(0) force:  reg appuye_rate c.yayi#c.treat c.soglo#c.treat c.amoussou#c.treat dcom1-dcom11 [w=w2] if  subsamp==1
permute treat _b[c.soglo#c.treat], strata(comid) reps(1000) seed(0) force:  reg appuye_rate c.yayi#c.treat c.soglo#c.treat c.amoussou#c.treat dcom1-dcom11 [w=w2] if subsamp==1
permute treat _b[c.amoussou#c.treat], strata(comid) reps(1000) seed(0) force:  reg appuye_rate c.yayi#c.treat c.soglo#c.treat c.amoussou#c.treat dcom1-dcom11 [w=w2] if subsamp==1
