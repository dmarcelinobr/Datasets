clear all

use "C:\Users\fujiwara\Research\Benin\Replication Files\AEJ_elec_data_A6.dta", clear

**** Panel B, Table 1
areg inscrits treat [w=w2], rob a(comid)
permute treat _b[treat], strata(comid) nodots reps(1000) seed(0) force:  reg inscrits treat dcom2-dcom12 [w=w2] 

**** Panel B, Table 2
foreach i in participation nuls_rate appuye_rate top_share sec_share trd_share fourth_share fifth_lower hhi  {
areg `i' treat [w=w2], rob a(comid)
permute treat _b[treat], strata(comid) nodots reps(1000) seed(0) force:  reg `i' treat dcom2-dcom12 [w=w2] 
} 

**** Panel A, Table 3 
foreach i in top_share appuye_rate  {
areg `i' treat if subsamp==0 [w=w2], rob a(comid)
permute treat _b[treat], strata(comid) reps(1000) seed(0) force:  reg `i' treat dcom1-dcom11 [w=w2] if  subsamp==0
} 
areg appuye_rate c.yayi#c.treat c.soglo#c.treat c.houngbedji#c.treat if  subsamp==0 [w=w2], rob a(comid)
permute treat _b[c.houngbedji#c.treat], strata(comid) reps(1000) seed(0) force:  reg appuye_rate c.yayi#c.treat c.soglo#c.treat c.houngbedji#c.treat dcom1-dcom11 [w=w2] if subsamp==0
permute treat _b[c.yayi#c.treat], strata(comid) reps(1000) seed(0) force:  reg appuye_rate c.yayi#c.treat c.soglo#c.treat c.houngbedji#c.treat dcom1-dcom11 [w=w2] if  subsamp==0
permute treat _b[c.soglo#c.treat], strata(comid) reps(1000) seed(0) force:  reg appuye_rate c.yayi#c.treat c.soglo#c.treat c.houngbedji#c.treat dcom1-dcom11 [w=w2] if subsamp==0

**** Panel B, Table 3 
foreach i in top_share appuye_rate  {
areg `i' treat if subsamp==1 [w=w2], rob a(comid)
permute treat _b[treat], strata(comid) reps(1000) seed(0) force:  reg `i' treat dcom1-dcom11 [w=w2] if  subsamp==1
} 
areg appuye_rate c.yayi#c.treat c.soglo#c.treat  if  subsamp==1 [w=w2], rob a(comid)
permute treat _b[c.yayi#c.treat], strata(comid) reps(1000) seed(0) force:  reg appuye_rate c.yayi#c.treat c.soglo#c.treat c.houngbedji#c.treat dcom1-dcom11 [w=w2] if  subsamp==1
permute treat _b[c.soglo#c.treat], strata(comid) reps(1000) seed(0) force:  reg appuye_rate c.yayi#c.treat c.soglo#c.treat c.houngbedji#c.treat dcom1-dcom11 [w=w2] if subsamp==1

**** Table A2.1
*Column (1)
table comid if treat==1, c(mean top_share)
*Column (2)
table comid if treat==0 & samp1==1, c(mean top_share)
*Column (3)
table comid if treat==0, c(mean top_share)

**** Table A2.2
*Column (1)
table comid if treat==1, c(mean appuye_rate)
*Column (2)
table comid if treat==0 & samp1==1, c(mean appuye_rate)
*Column (3)
table comid if treat==0, c(mean appuye_rate)

**** Table A4
foreach i in BONI_YAYI ADRIEN_HOUNGBEDJI SEVERIN_ADJOVI GATIEN_HOUNGBEDJI LUC_GNACADJA BRUNO_AMOUSSOU ZUL_KIFL_SALAMI DANIEL_TAWEMA LEHADY_SOGLO RICHARD_ADJAHO LAZARE_SEHOUETO RAPHIOU_TOUKOUROU CELESTINE_ZANOU RICHARD_SENOU LIONEL_AGBO SOULE_DANKORO LEANDRE_DJAGOUE GALIOU_SOGLO ANTOINE_DAYORI MARCEL_GBAGUIDI IDRISSOU_IBRAHIMA JANVIER_YAHOUEDEHOU MARIE_ELISE_GBEDO ADOLPHE_D__HODONOU K__ANTOINE_IDJI KAMAROU_FASSASSI {
areg share_`i' treat [w=w2], rob a(comid)
permute treat _b[treat], strata(comid) reps(1000) seed(0) nodots force:  reg share_`i' treat dcom2-dcom12 [w=w2]
} 
