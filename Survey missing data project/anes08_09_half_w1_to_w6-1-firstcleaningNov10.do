set mem 1000000
use "C:\Users\Deuta\Desktop\anes08_09_half_w1_to_w6.dta", clear
tab w1a7
tab w1m1
tab w1m3
drop  cd1 cd2 cdstate stratum  rhispmex rhispm_1 rhispcen rhispsou rhispchi rhisppr rhispcub rhispcar rhispoth rhispo_1 rhispdk rhispref rraceami rraceala rraceasi rracehaw rracepac rraceoth rraceo_1 rracedk rraceref
drop cpstartf cpdate cpbegtim cpendtim cplength cpresult cpresu_1 cpresu_2 cpresu_3 cpresu_4 cpresu_5 cpxpanel cps1_wtv cps1_pc cps2_9 cps2_8 cps3 cps6_wtv  cps7 cpq1 cpq2 cpq2_oth cpq3 cpq7 cpq5 cpmember cpmemb_1 cpmemb_2 cpmemb_3 cpmemb_4 cpmemb_5 cpmemb_6 cpmemb_7 cpmemb_8 cpmemb_9 cpmem_10 cpmem_11 cpmem_12 cpmem_13 cpmem_14 cpmem_15 cpmem_16 cpmem_17 cpmem_18 cpmem_19 cpmem_20 cpmem_21 cpmem_22 cpmem_23 cpmem_24 cpmem_25 cpmem_26 cpmem_27 cpq10_01 cpq10_02 cpq10_03 cpq10_04 cpq10_05 cpq10_06 cpq10_07 cpq10_08 cpq10_09 cpq10_10 cpq10_ot cpq11_mo cpq11_da cpq34 cpq35 cpq35a cpq36 cpq36a cpq36b cpq36c cpq36d cpq36e w1invite w1startf w1date w1begtim w1endtim w1endq w1length w1timeto w1resu_1 w1result w1resu_2 w1resu_3 w1resu_4 w1resu_5 w1incent w1timezo w1xdate w1xprima w1xbday w1xbmont w1xprofi w1xpanel w1x2004 w1xbyear w1order w1qhhsiz w1qhhs_1 w1qhhs_2 w1qhhs_3 w1qhhs_4 w1qhhs_5 w1qhhtot w1r_elig w1select w1sele_1 w1sele_2 w1sele_3 w1sele_4 w1sele_5 w1sele_6 w1sele_7 w1sele_8 w1sele_9 w1sel_10 w1sel_11 w1sel_12 w1sel_13 w1sel_14 w1sel_15 w1sel_16 w1sel_17 w1numche w1qtg1o w1qtg11o w1qdob_m w1qdob_1 w1qdob_d w1qdob_2 w1qtg2o w1a6orde w1county  w1primda w1c3orde w1c5orde w1eorder w1name1 w1name2 w1name3 w1name4 w1party w1candid w1m1orm3 w1p4orp7 w1torder w1vorder w1worder w1wworde w1x1tox4 w1x1orde w1x2orde w1pre1 w1pre1_c w1pre2 w1pre3
drop der03a der03b der03c der03d der03e der03f
drop  der07
drop ppmsacat
save "C:\Users\Deuta\Desktop\anes08_09_half_w1_to_w6-1.dta"
