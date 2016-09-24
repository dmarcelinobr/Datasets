* recoding the scale in the variables q35a1 q35a2 q35a3 and pq26a2 pq26a3 pq26a4 */

foreach v of varlist q35a* pq26a* {
recode `v' (1=0) (2=0.25) (9=0.50) (3=0.75) (4=1)
}

* recoding the scale in the variables q34 q42 q43 */

foreach v of varlist q34* q42* q43* {
recode `v'(99=.) (0=0) (1=0.1) (2=0.2) (3=0.3) (4=0.4) (5=0.5) (6=0.6) (7=0.7) (8=0.8) (9=0.9) (10=1) 
}

*Replicating variables and results
		
gen q34cantonal = q34a1
gen q34federal = q34a2
gen q34municipal = q34a3

gen q42cantonal = q42a3
gen q42federal = q42a2
gen q42municipal = q42a4

gen q43federal = q43a2
gen q43cantonal = q43a3
gen q43municipal = q43a4


*recoding what best describes the place where you live?
 recode sd7switzerlandplace (5=0) (4=0.25) (3=0.50) (2=0.75)


*Gen differences between levels 
gen q34fed_mun = (q34federal-q34municipal)
gen q34fed_can = (q34federal-q34cantonal)
gen q42fed_mun = (q42federal-q42municipal)
gen q42fed_can = (q42federal-q42cantonal)
gen q43fed_mun = (q43federal-q43municipal)
gen q43fed_can = (q43federal-q43cantonal)

label var q34fed_mun "Differences on the IMPORTANCE of election between Federal to Municipal" 
label var q34fed_can "Differences on the IMPORTANCE of election between Federal to Cantonal" 
label var q42fed_mun "Differences on the IMPACT of election between Federal to Municipal"
label var q42fed_can "Differences on the IMPACT of election between Federal to Cantonal" 
label var q43fed_mun "Differences on the ATTACHMENT of election between Federal to Municipal"
label var q43fed_can "Differences on the ATTACHMENT of election between Federal to Cantonal" 

*Table1
eststo: regress q34fed_mun age gender sd6bmother sd6eyears sd7place
eststo: regress q34fed_can age gender sd6bmother sd6eyears sd7place
eststo: regress q42fed_mun age gender sd6bmother sd6eyears sd7place
eststo: regress q42fed_can age gender sd6bmother sd6eyears sd7place
eststo: regress q43fed_mun age gender sd6bmother sd6eyears sd7place
eststo: regress q43fed_can age gender sd6bmother sd6eyears sd7place

esttab using medw_table1.rtf,  b(%8.2f) t r2 brackets title(TABLE 1) varwidth(12) modelwidth(5)  nonumbers mtitles("Import. Mun." "Import. Can." "Impact Mun." "Impact Can." "Attach Mun." "Attach Can.")

*Table2
eststo: regress q34fed_mun q42fed_mun q43fed_mun age gender sd6bmother sd6eyears sd7place
regeffectsize
eststo: regress q34fed_can q42fed_can q43fed_can age gender sd6bmother sd6eyears sd7place
regeffectsize
esttab using medw_table3.rtf, b(%8.2f) t r2 brackets title(TABLE 2) varwidth(12) modelwidth(5) nonumbers mtitles("Importance Fed-Mun") nogaps 

*Changing scale
gen Importance = -2 if q34fed_mun <=-2
replace Importance = +2 if q34fed_mun >=+2
replace Importance = 0 if Importance ==.

gen Influence = -2 if q42fed_mun <=-2
replace Influence = +2 if q42fed_mun >=+2
replace Influence = 0 if Influence ==.

gen Attachment = -2 if q43fed_mun <=-2
replace Attachment = +2 if q43fed_mun >=+2
replace Attachment = 0 if Attachment ==.

*Changing scale *Cantonal
gen ImportanceC = -2 if q34fed_can <=-2
replace ImportanceC = +2 if q34fed_can >=+2
replace ImportanceC = 0 if ImportanceC ==.

gen InfluenceC = -2 if q42fed_can <=-2
replace InfluenceC = +2 if q42fed_can >=+2
replace InfluenceC = 0 if InfluenceC ==.

gen AttachmentC = -2 if q43fed_can <=-2
replace AttachmentC = +2 if q43fed_can >=+2
replace AttachmentC = 0 if AttachmentC ==.

tab ImportanceC
tab InfluenceC
tab AttachmentC

*posterior
gen ImportanceCM = -2 if q34can_mun <=-2
replace ImportanceCM = +2 if q34can_mun >=+2
replace ImportanceCM = 0 if ImportanceCM ==.

ttest q34cantonal = q34municipal
ttest q34federal = q34cantonal
ttest q34federal = q34municipal

