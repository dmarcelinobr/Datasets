
cd "C:\users\fujiwara\Research\Benin\Replication Files\"

use survey_data_AEJ.dta

**** Panel A, Table 1 
foreach i in female  age   ethn_fon   ethn_yoruba   speaks_french   speaks_fon   christian   islam   primary_schooling   secondary_schooling   single   monog  polyg  reg_income    has_farm electri member {
areg `i' treat, rob  a(depcom)
permute treat _b[treat], strata(depcom) reps(1000) seed(0) nodots:  reg `i' treat dcom2-dcom12
} 

**** Panel A, Table 2
*Index
areg index treat, rob  a(depcom) 
permute treat _b[treat], strata(depcom) reps(1000) seed(0):  reg index treat dcom2-dcom12
*Index - vote-buying
areg index_nocash treat, rob  a(depcom) 
permute treat _b[treat], strata(depcom) reps(1000) seed(0):  reg index_nocash treat dcom2-dcom12
*Vote-buying
areg cash treat, rob  a(depcom) 
permute treat _b[treat], strata(depcom) reps(1000) seed(0):  reg cash treat dcom2-dcom12

**** Table A2.3, Column (1) 
table depcom if treat==1, c(mean index)
**** Table A2.3, Column (2)
table depcom if treat==0, c(mean index)

**** Table A3.1
foreach i in discuss_other_ethn discuss_total knows_plat plat_inform plat_convinc num_knows qualifications country_prob cash {
areg `i' treat, rob  a(depcom)
permute treat _b[treat], strata(depcom) reps(1000) seed(0) nodots:  reg `i' treat dcom2-dcom12
}
