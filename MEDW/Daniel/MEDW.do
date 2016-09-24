tab PRE_INT
tab POST_INT
replace POST_INT =3 if POST_INT==.
replace PRE_INT =3 if PRE_INT ==.
  
tab q35a PRE_INT, col row
tab q35b PRE_INT, col row
tab q35c PRE_INT, col row
  
tab pq26a2 POST_INT , col row
tab pq26a3 POST_INT , col row
tab pq26a4 POST_INT , col row
 
gen GROUPRESPONSES = 1 if PRE_INT==1 & POST_INT == 1
replace GROUPRESPONSES = 2 if PRE_INT==2 & POST_INT == 2
replace GROUPRESPONSES = 3 if PRE_INT==2 & POST_INT == 1
  
label define GROUPRESPONSESlbl 1"Yes=Yes" 2"No=No" 3"No=Yes"
label values GROUPRESPONSES GROUPRESPONSESlbl
label var GROUPRESPONSES "Pre and Pos respondente group"

tab pq26a2 GROUPRESPONSES , col row
tab pq26a3 GROUPRESPONSES , col row
tab pq26a4 GROUPRESPONSES , col row

 
 use "/Users/DM/Desktop/MEDW_Lucerne_and_Zurich/MEDW Switz Wave1-Zurich_cleaned_July7_2011.dta"
 gen Canton = "Zurich"
 keep POST_INT PRE_INT pq26a2 pq26a3 pq26a4 q35a1 q35a2  q35a3 Canton

save "/Users/DM/Desktop/MEDW_Zurich.dta"

use "/Users/DM/Desktop/MEDW_Lucerne_and_Zurich/MEDW Switz Wave1-Lucerne_cleaned_July6_2011.dta"
gen Canton = "Lucerne"
keep POST_INT PRE_INT pq26a2 pq26a3 pq26a4 q35a q35b q35c Canton

rename  q35a q35a1
rename  q35b q35a2
rename  q35c q35a3
save "/Users/DM/Desktop/MEDW_Lucerne.dta"

append using "/Users/DM/Desktop/MEDW_Zurich.dta"

save "/Users/DM/Desktop/MEDW.dta"
replace Canton ="1" if Canton=="Zurich"
replace Canton ="2" if Canton=="Lucerne"

/* to merge both dataset you need to transform var Q134 in the Lucerne
/* dataset to numeric format, so */

destring Q134, replace
append using "/Users/DM/Desktop/MEDW_Wave1-Zurich2011.dta"


/* recoding the scale in the variables q35a1 q35a2 q35a3 and pq26a2 pq26a3 pq26a4 */

foreach v of varlist q35a* pq26a* {
recode `v' (1=0) (2=0.25) (9=0.50) (3=0.75) (4=1)
}


label drop pq26a1
label drop pq26a2
label drop pq26a3
label drop pq26a4
label drop pq26a5
label drop q35a
label drop q35b
label drop q35c
tab POST_INT, gen(votedummy) 



ifwins if Lucerne ==0: regress pq26a2 q35a1 votedummy1

outreg using OLStables1, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("", Zurich)
		
ifwins if Lucerne ==1: regress pq26a2 q35a1 votedummy1

outreg using OLStables2, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("", Lucerne)
		
		
ifwins if Lucerne ==0: regress pq26a3 q35a2 votedummy1

outreg using OLStables1, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("", Zurich)
		
ifwins if Lucerne ==1: regress pq26a3 q35a2 votedummy1

outreg using OLStables2, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("", Lucerne)
			

ifwins if Lucerne ==0: regress pq26a4 q35a3 votedummy1

outreg using OLStables1, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("", Zurich)
		
ifwins if Lucerne ==1: regress pq26a4 q35a3 votedummy1

outreg using OLStables2, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("", Lucerne)
		

outreg using OLStables1, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1) sigsymbols(+,*,**) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("", Zurich)

*Information scale
information

outreg using OLStables2, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",)
		
	outreg using OLStables1, summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) /// 
varlabels merge replace


foreach v of varlist q34* {
recode `v'(99=.) (0=0) (1=0.1) (2=0.2) (3=0.3) (4=0.4) (5=0.5) (6=0.6) (7=0.7) (8=0.8) (9=0.9) (10=1) 
}

regress q34municipal q43municipal q42municipal

outreg using OLS1, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",DV=Importance/Municipal)

regress q34cantonal q43cantonal q42cantonal
outreg using OLS2, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",Importance/Cantonal)

regress q34federal q43federal q42federal
outreg using OLS3, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",Importance/Federal)


*Second Step
regress q34municipal q43municipal q43cantonal q43federal q42municipal q42cantonal q42federal
outreg using OLS4, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",DV=Importance/Municipal)


regress q34cantonal q43municipal q43cantonal q43federal q42municipal q42cantonal q42federal
outreg using OLS5, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",Importance/Cantonal)
		
		
regress q34federal q43municipal q43cantonal q43federal q42municipal q42cantonal q42federal
outreg using OLS6, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",Importance/Federal)
				
*Gen differences between levels *

gen q34fed_mun = (q34federal-q34municipal)
gen q34fed_can = (q34federal-q34cantonal)
gen q42fed_mun = (q42federal-q42municipal)
gen q42fed_can = (q42federal-q42cantonal)
gen q43fed_mun = (q43federal-q43municipal)
gen q43fed_can = (q43federal-q43cantonal)

gen q34can_mun = (q34cantonal-q34municipal)


regress q34mun_fed q42mun_fed q43mun_fed
outreg using OLS7, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Municipal - Federal))
		
regress q34can_fed q42can_fed q43can_fed
outreg using OLS8, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Canton - Federal))
		
		

  
*Interaction Terms  
gen inter_mun_fed = q42mun_fed*q43mun_fed
gen inter_can_fed = q42can_fed*q43can_fed

regress q34mun_fed q42mun_fed q43mun_fed inter_mun_fed 
outreg using OLS9, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Municipal - Federal))
		
regress q34can_fed q42can_fed q43can_fed inter_can_fed 
outreg using OLS10, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Canton - Federal))
		
*Non-Linear Terms		
gen sqr_impact_mun_fed = q42mun_fed^2 
gen sqr_attach_mun_fed = q43mun_fed^2 

gen sqr_impact_can_fed = q42can_fed^2
gen sqr_attach_q43can_fed = q43can_fed^2


regress q34mun_fed q42mun_fed sqr_impact_mun_fed q43mun_fed sqr_attach_mun_fed
outreg using OLS11, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Municipal - Federal))
		
regress q34can_fed q42can_fed sqr_impact_can_fed q43can_fed sqr_attach_q43can_fed
outreg using OLS12, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Canton - Federal))
		
		
regress q34mun_fed q42mun_fed q43mun_fed inswitzerland switzerlandmother yearcanton i.switzerlandplace 		
	outreg using OLS13, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV= Municipal - Federal))
		
		
regress q34can_fed q42can_fed q43can_fed inswitzerland switzerlandmother yearcanton switzerlandplace 	
		outreg using OLS14, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Canton - Federal))
		
 regress q34mun_fed q42mun_fed sqr_impact_mun_fed q43mun_fed sqr_attach_mun_fed inswitzerland switzerlandmother year canton i.switzerlandplace 
	outreg using OLS15, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV= Municipal - Federal))
		
		
regress q34can_fed q42can_fed q43can_fed inswitzerland switzerlandmother yearcanton switzerlandplace 	
		outreg using OLS16, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Canton - Federal))
		
		

 
 
 
 regress q34mun_fed q42mun_fed q43mun_fed age gender sd6bornswitzerland sd6bswitzerlandmother sd6eyearcanton sd7switzerlandplace
 outreg using OLS17, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV= Municipal - Federal))
		
regress q34can_fed q42can_fed q43can_fed age gender sd6bornswitzerland sd6bswitzerlandmother sd6eyearcanton sd7switzerlandplace
 outreg using OLS18, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV= Canton - Federal))
		
regress q34mun_fed q42mun_fed q43mun_fed age gender sd6bswitzerlandmother sd6eyearcanton sd7switzerlandplace
	 outreg using OLS19, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV= Municipal - Federal))
		
regress q34can_fed q42can_fed q43can_fed age gender sd6bswitzerlandmother sd6eyearcanton sd7switzerlandplace
 outreg using OLS18, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV= Canton - Federal))

*		
regress q34mun_fed age gender sd6bswitzerlandmother sd6eyearcanton sd7switzerlandplace		
	outreg using OLS20, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV= Municipal - Federal))
		
regress q34can_fed age gender sd6bswitzerlandmother sd6eyearcanton sd7switzerlandplace		
	outreg using OLS21, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV= Canton - Federal))
	
*Regressing on		

regress q42mun_fed age gender sd6bswitzerlandmother sd6eyearcanton sd7switzerlandplace 		
outreg using OLS22, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Impact: Municipal - Federal))
		
		
regress q43mun_fed age gender sd6bswitzerlandmother sd6eyearcanton sd7switzerlandplace
		outreg using OLS23, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Attachment: Municipal - Federal))
		
		
regress q42can_fed age gender sd6bswitzerlandmother sd6eyearcanton sd7switzerlandplace 
outreg using OLS22, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Impact: Canton - Federal))
		
		
regress q43can_fed age gender sd6bswitzerlandmother sd6eyearcanton sd7switzerlandplace
		outreg using OLS23, replace ///
		squarebrack note(t statistics in brackets) ///
		starlevels(10 5 1 0.1) sigsymbols(+,*,**, ***) ///
		summstat(F\r2\N) summtitle(F statistic\R2\N) summdec(2 2 0) ///
		title(OLS Results) ///
		ctitle("",(DV=Attachment: Canton - Federal))
		

		

		











