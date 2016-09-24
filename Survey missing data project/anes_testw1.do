use "C:\Users\Deuta\Desktop\anes08_09_half_w1_to_w6-1.dta", clear
tab1 w1a2 w1a3 w1a4	w1a5 w1a6 w1a8 w1b1 w1b2a w1b2 w1b12 w1b13 w1b14 w1b15 w1b16
tab1 w1e8	w1e11	w1e14	w1e17	w1e20	w1e23	w1e26	w1e29	w1e32	w1e35	w1e38	w1e41	w1e44	w1e47	w1e50	w1e53	w1e56	w1e59
tab1 w1f1	w1f2	w1f3	w1f4	w1f5	w1f6	w1f7	w1f8
tab1 w1g_1	w1g_2	w1g_3	w1g_4	w1g_5	w1g_6	w1g_7	w1g_8	w1g_9	w1g_20	w1g_21	w1g_22	w1g_23	w1g_24	w1g_25	w1g_26	w1g_27
tab1 w1h1	w1h2	w1h3	w1h4	w1j1a_3	w1j1b	w1j2	w1k1	w1k2	w1l1	w1l2	w1m3	w1n1
tab1 w1p1	w1p3	w1p4	w1p6	w1p7	w1p9	w1p10	w1p12	w1p13	w1p15	w1p16	w1p18	w1p19	w1p21	w1p22	w1p24	w1p25	w1p27
tab1 w1q1	w1q2	w1t1	w1t2	w1t3	w1t4	w1t5	w1t6	w1t7	w1t8	w1t9	w1t10	w1t11	w1u1	w1u2	w1u3	w1u4	w1u5	w1u6
tab1 w1v1	w1v3	w1v5	w1v7	w1v9	w1v11	w1w2	w1w3	w1w4	w1w5	w1w7	w1w8	w1w9	w1w10	w1w12	w1w13	w1w14	w1w15

****Gen test_w1
***Flags
***DID NOT RUN ANY OF THE BELOW*****
gen 	flag_w1a2	=1	if	w1a2	==	-7
gen 	flag_w1a3	=1	if	w1a3	==	-7
gen 	flag_w1a4	=1	if	w1a4	==	-7
gen 	flag_w1a6	=1	if	w1a6	==	-7
gen 	flag_w1b1	=1	if	w1b1	==	-7
gen 	flag_w1b2a	=1	if	w1b2a	==	-7
gen 	flag_w1b2	=1	if	w1b2	==	-7
gen 	flag_w1e2	=1	if	w1e2	==	-7
gen 	flag_w1e3	=1	if	w1e3	==	-7
gen 	flag_w1e4	=1	if	w1e4	==	-7
gen 	flag_w1e5	=1	if	w1e5	==	-7
gen 	flag_w1e6	=1	if	w1e6	==	-7
gen 	flag_w1e7	=1	if	w1e7	==	-7
gen 	flag_w1e8	=1	if	w1e8	==	-7
gen 	flag_w1e11	=1	if	w1e11	==	-7
gen 	flag_w1e14	=1	if	w1e14	==	-7
gen 	flag_w1e17	=1	if	w1e17	==	-7
gen 	flag_w1e20	=1	if	w1e20	==	-7
gen 	flag_w1e23	=1	if	w1e23	==	-7
gen 	flag_w1e26	=1	if	w1e26	==	-7
gen 	flag_w1e29	=1	if	w1e29	==	-7
gen 	flag_w1e32	=1	if	w1e32	==	-7
gen 	flag_w1e35	=1	if	w1e35	==	-7
gen 	flag_w1e38	=1	if	w1e38	==	-7
gen 	flag_w1e41	=1	if	w1e41	==	-7
gen 	flag_w1e44	=1	if	w1e44	==	-7
gen 	flag_w1e47	=1	if	w1e47	==	-7
gen 	flag_w1e50	=1	if	w1e50	==	-7
gen 	flag_w1e53	=1	if	w1e53	==	-7
gen 	flag_w1e56	=1	if	w1e56	==	-7
gen 	flag_w1e59	=1	if	w1e59	==	-7
gen 	flag_w1f1	=1	if	w1f1	==	-7
gen 	flag_w1f2	=1	if	w1f2	==	-7
gen 	flag_w1f3	=1	if	w1f3	==	-7
gen 	flag_w1f4	=1	if	w1f4	==	-7
gen 	flag_w1f5	=1	if	w1f5	==	-7
gen 	flag_w1f6	=1	if	w1f6	==	-7
gen 	flag_w1f7	=1	if	w1f7	==	-7
gen 	flag_w1f8	=1	if	w1f8	==	-7
gen 	flag_w1g_1	=1	if	w1g_1	==	-7
gen 	flag_w1g_2	=1	if	w1g_2	==	-7
gen 	flag_w1g_3	=1	if	w1g_3	==	-7
gen 	flag_w1g_4	=1	if	w1g_4	==	-7
gen 	flag_w1g_5	=1	if	w1g_5	==	-7
gen 	flag_w1g_6	=1	if	w1g_6	==	-7
gen 	flag_w1g_7	=1	if	w1g_7	==	-7
gen 	flag_w1g_8	=1	if	w1g_8	==	-7
gen 	flag_w1g_9	=1	if	w1g_9	==	-7
gen 	flag_w1g_20	=1	if	w1g_20	==	-7
gen 	flag_w1g_21	=1	if	w1g_21	==	-7
gen 	flag_w1g_22	=1	if	w1g_22	==	-7
gen 	flag_w1g_23	=1	if	w1g_23	==	-7
gen 	flag_w1g_24	=1	if	w1g_24	==	-7
gen 	flag_w1g_25	=1	if	w1g_25	==	-7
gen 	flag_w1g_26	=1	if	w1g_26	==	-7
gen 	flag_w1g_27	=1	if	w1g_27	==	-7
gen 	flag_w1h1	=1	if	w1h1	==	-7
gen 	flag_w1h2	=1	if	w1h2	==	-7
gen 	flag_w1h3	=1	if	w1h3	==	-7
gen 	flag_w1h4	=1	if	w1h4	==	-7
gen 	flag_w1j1a_3	=1	if	w1j1a_3	==	-7
gen 	flag_w1j2	=1	if	w1j2	==	-7
gen 	flag_w1k1	=1	if	w1k1	==	-7
gen 	flag_w1k2	=1	if	w1k2	==	-7
gen 	flag_w1l1	=1	if	w1l1	==	-7
gen 	flag_w1l2	=1	if	w1l2	==	-7
gen 	flag_w1m3	=1	if	w1m3	==	-7
gen 	flag_w1n1	=1	if	w1n1	==	-7
gen 	flag_w1p1	=1	if	w1p1	==	-7
gen 	flag_w1p3	=1	if	w1p3	==	-7
gen 	flag_w1p4	=1	if	w1p4	==	-7
gen 	flag_w1p6	=1	if	w1p6	==	-7
gen 	flag_w1p7	=1	if	w1p7	==	-7
gen 	flag_w1p9	=1	if	w1p9	==	-7
gen 	flag_w1p10	=1	if	w1p10	==	-7
gen 	flag_w1p12	=1	if	w1p12	==	-7
gen 	flag_w1p13	=1	if	w1p13	==	-7
gen 	flag_w1p15	=1	if	w1p15	==	-7
gen 	flag_w1p16	=1	if	w1p16	==	-7
gen 	flag_w1p18	=1	if	w1p18	==	-7
gen 	flag_w1p19	=1	if	w1p19	==	-7
gen 	flag_w1p21	=1	if	w1p21	==	-7
gen 	flag_w1p22	=1	if	w1p22	==	-7
gen 	flag_w1p24	=1	if	w1p24	==	-7
gen 	flag_w1p25	=1	if	w1p25	==	-7
gen 	flag_w1p27	=1	if	w1p27	==	-7
gen 	flag_w1q1	=1	if	w1q1	==	-7
gen 	flag_w1q2	=1	if	w1q2	==	-7
gen 	flag_w1t1	=1	if	w1t1	==	-7
gen 	flag_w1t2	=1	if	w1t2	==	-7
gen 	flag_w1t3	=1	if	w1t3	==	-7
gen 	flag_w1t4	=1	if	w1t4	==	-7
gen 	flag_w1t5	=1	if	w1t5	==	-7
gen 	flag_w1t6	=1	if	w1t6	==	-7
gen 	flag_w1t7	=1	if	w1t7	==	-7
gen 	flag_w1t8	=1	if	w1t8	==	-7
gen 	flag_w1t9	=1	if	w1t9	==	-7
gen 	flag_w1t10	=1	if	w1t10	==	-7
gen 	flag_w1t11	=1	if	w1t11	==	-7
gen 	flag_w1u1	=1	if	w1u1	==	-7
gen 	flag_w1u4	=1	if	w1u4	==	-7
gen 	flag_w1v1	=1	if	w1v1	==	-7
gen 	flag_w1v3	=1	if	w1v3	==	-7
gen 	flag_w1v5	=1	if	w1v5	==	-7
gen 	flag_w1v7	=1	if	w1v7	==	-7
gen 	flag_w1v9	=1	if	w1v9	==	-7
gen 	flag_w1v11	=1	if	w1v11	==	-7
gen 	flag_w1w2	=1	if	w1w2	==	-7
gen 	flag_w1w3	=1	if	w1w3	==	-7
gen 	flag_w1w4	=1	if	w1w4	==	-7
gen 	flag_w1w5	=1	if	w1w5	==	-7
gen 	flag_w1w7	=1	if	w1w7	==	-7
gen 	flag_w1w8	=1	if	w1w8	==	-7
gen 	flag_w1w9	=1	if	w1w9	==	-7
gen 	flag_w1w10	=1	if	w1w10	==	-7
gen 	flag_w1w12	=1	if	w1w12	==	-7
gen 	flag_w1w13	=1	if	w1w13	==	-7
gen 	flag_w1w14	=1	if	w1w14	==	-7
gen 	flag_w1w15	=1	if	w1w15	==	-7

recode	flag_w1a2	flag_w1a3	flag_w1a4	flag_w1a6	flag_w1b1	flag_w1b2a	flag_w1b2	flag_w1e2	flag_w1e3	flag_w1e4	flag_w1e5	flag_w1e6	flag_w1e7	flag_w1e8	flag_w1e11	flag_w1e14	flag_w1e17	flag_w1e20	flag_w1e23	flag_w1e26	flag_w1e29	flag_w1e32	flag_w1e35	flag_w1e38	flag_w1e41	flag_w1e44	flag_w1e47	flag_w1e50	flag_w1e53	flag_w1e56	flag_w1e59	(.=0)

recode	flag_w1f1	flag_w1f2	flag_w1f3	flag_w1f4	flag_w1f5	flag_w1f6	flag_w1f7	flag_w1f8	flag_w1g_1	flag_w1g_2	flag_w1g_3	flag_w1g_4	flag_w1g_5	flag_w1g_6	flag_w1g_7	flag_w1g_8	flag_w1g_9	flag_w1g_20	flag_w1g_21	flag_w1g_22	flag_w1g_23	flag_w1g_24	flag_w1g_25	flag_w1g_26	flag_w1g_27	(.=0)

recode	flag_w1h1	flag_w1h2	flag_w1h3	flag_w1h4	flag_w1j1a_3	flag_w1j2	flag_w1k1	flag_w1k2	flag_w1l1	flag_w1l2	flag_w1m3	flag_w1n1	flag_w1p1	flag_w1p3	flag_w1p4	flag_w1p6	flag_w1p7	flag_w1p9	flag_w1p10	flag_w1p12	flag_w1p13	flag_w1p15	flag_w1p16	flag_w1p18	flag_w1p19	flag_w1p21	flag_w1p22	flag_w1p24	flag_w1p25	flag_w1p27	flag_w1q1	flag_w1q2	(.=0)

recode	flag_w1t1	flag_w1t2	flag_w1t3	flag_w1t4	flag_w1t5	flag_w1t6	flag_w1t7	flag_w1t8	flag_w1t9	flag_w1t10	flag_w1t11	flag_w1u1	flag_w1u4	flag_w1v1	flag_w1v3	flag_w1v5	flag_w1v7	flag_w1v9	flag_w1v11	flag_w1w2	flag_w1w3	flag_w1w4	flag_w1w5	flag_w1w7	flag_w1w8	flag_w1w9	flag_w1w10	flag_w1w12	flag_w1w13	flag_w1w14	flag_w1w15	(.=0)


replace	flag_w1a2	=.	if	w1a2	==	-6
replace	flag_w1a3	=.	if	w1a3	==	-6
replace	flag_w1a4	=.	if	w1a4	==	-6
replace	flag_w1a6	=.	if	w1a6	==	-6
replace	flag_w1b1	=.	if	w1b1	==	-6
replace	flag_w1b1	=.	if	w1b1	==	-9
replace	flag_w1b2a	=.	if	w1b2a	==	-6
replace	flag_w1b2	=.	if	w1b2	==	-6
replace	flag_w1e2	=.	if	w1e2	==	-6
replace	flag_w1e3	=.	if	w1e3	==	-6
replace	flag_w1e4	=.	if	w1e4	==	-6
replace	flag_w1e5	=.	if	w1e5	==	-6
replace	flag_w1e6	=.	if	w1e6	==	-6
replace	flag_w1e7	=.	if	w1e7	==	-6
replace	flag_w1e8	=.	if	w1e8	==	-6
replace	flag_w1e11	=.	if	w1e11	==	-6
replace	flag_w1e14	=.	if	w1e14	==	-6
replace	flag_w1e17	=.	if	w1e17	==	-6
replace	flag_w1e20	=.	if	w1e20	==	-6
replace	flag_w1e23	=.	if	w1e23	==	-6
replace	flag_w1e26	=.	if	w1e26	==	-6
replace	flag_w1e29	=.	if	w1e29	==	-6
replace	flag_w1e32	=.	if	w1e32	==	-6
replace	flag_w1e35	=.	if	w1e35	==	-6
replace	flag_w1e38	=.	if	w1e38	==	-6
replace	flag_w1e41	=.	if	w1e41	==	-6
replace	flag_w1e44	=.	if	w1e44	==	-6
replace	flag_w1e47	=.	if	w1e47	==	-6
replace	flag_w1e50	=.	if	w1e50	==	-6
replace	flag_w1e53	=.	if	w1e53	==	-6
replace	flag_w1e56	=.	if	w1e56	==	-6
replace	flag_w1e59	=.	if	w1e59	==	-6
replace	flag_w1f1	=.	if	w1f1	==	-6
replace	flag_w1f2	=.	if	w1f2	==	-6
replace	flag_w1f3	=.	if	w1f3	==	-6
replace	flag_w1f4	=.	if	w1f4	==	-6
replace	flag_w1f5	=.	if	w1f5	==	-6
replace	flag_w1f6	=.	if	w1f6	==	-6
replace	flag_w1f7	=.	if	w1f7	==	-6
replace	flag_w1f8	=.	if	w1f8	==	-6
replace	flag_w1g_1	=.	if	w1g_1	==	-6
replace	flag_w1g_2	=.	if	w1g_2	==	-6
replace	flag_w1g_3	=.	if	w1g_3	==	-6
replace	flag_w1g_4	=.	if	w1g_4	==	-6
replace	flag_w1g_5	=.	if	w1g_5	==	-6
replace	flag_w1g_6	=.	if	w1g_6	==	-6
replace	flag_w1g_7	=.	if	w1g_7	==	-6
replace	flag_w1g_8	=.	if	w1g_8	==	-6
replace	flag_w1g_9	=.	if	w1g_9	==	-6
replace	flag_w1g_20	=.	if	w1g_20	==	-6
replace	flag_w1g_21	=.	if	w1g_21	==	-6
replace	flag_w1g_22	=.	if	w1g_22	==	-6
replace	flag_w1g_23	=.	if	w1g_23	==	-6
replace	flag_w1g_24	=.	if	w1g_24	==	-6
replace	flag_w1g_25	=.	if	w1g_25	==	-6
replace	flag_w1g_26	=.	if	w1g_26	==	-6
replace	flag_w1g_27	=.	if	w1g_27	==	-6
replace	flag_w1h1	=.	if	w1h1	==	-6
replace	flag_w1h2	=.	if	w1h2	==	-6
replace	flag_w1h3	=.	if	w1h3	==	-6
replace	flag_w1h4	=.	if	w1h4	==	-6
replace	flag_w1j1a_3	=.	if	w1j1a_3	==	-6
replace	flag_w1j2	=.	if	w1j2	==	-6
replace	flag_w1k1	=.	if	w1k1	==	-6
replace	flag_w1k2	=.	if	w1k2	==	-6
replace	flag_w1l1	=.	if	w1l1	==	-6
replace	flag_w1l2	=.	if	w1l2	==	-6
replace	flag_w1m3	=.	if	w1m3	==	-6
replace	flag_w1n1	=.	if	w1n1	==	-6
replace	flag_w1p1	=.	if	w1p1	==	-6
replace	flag_w1p3	=.	if	w1p3	==	-6
replace	flag_w1p4	=.	if	w1p4	==	-6
replace	flag_w1p6	=.	if	w1p6	==	-6
replace	flag_w1p7	=.	if	w1p7	==	-6
replace	flag_w1p9	=.	if	w1p9	==	-6
replace	flag_w1p10	=.	if	w1p10	==	-6
replace	flag_w1p12	=.	if	w1p12	==	-6
replace	flag_w1p13	=.	if	w1p13	==	-6
replace	flag_w1p15	=.	if	w1p15	==	-6
replace	flag_w1p16	=.	if	w1p16	==	-6
replace	flag_w1p18	=.	if	w1p18	==	-6
replace	flag_w1p19	=.	if	w1p19	==	-6
replace	flag_w1p21	=.	if	w1p21	==	-6
replace	flag_w1p22	=.	if	w1p22	==	-6
replace	flag_w1p24	=.	if	w1p24	==	-6
replace	flag_w1p25	=.	if	w1p25	==	-6
replace	flag_w1p27	=.	if	w1p27	==	-6
replace	flag_w1q1	=.	if	w1q1	==	-6
replace	flag_w1q2	=.	if	w1q2	==	-6
replace	flag_w1t1	=.	if	w1t1	==	-6
replace	flag_w1t2	=.	if	w1t2	==	-6
replace	flag_w1t3	=.	if	w1t3	==	-6
replace	flag_w1t4	=.	if	w1t4	==	-6
replace	flag_w1t5	=.	if	w1t5	==	-6
replace	flag_w1t6	=.	if	w1t6	==	-6
replace	flag_w1t7	=.	if	w1t7	==	-6
replace	flag_w1t8	=.	if	w1t8	==	-6
replace	flag_w1t9	=.	if	w1t9	==	-6
replace	flag_w1t10	=.	if	w1t10	==	-6
replace	flag_w1t11	=.	if	w1t11	==	-6
replace	flag_w1u1	=.	if	w1u1	==	-6
replace	flag_w1u4	=.	if	w1u4	==	-6
replace	flag_w1v1	=.	if	w1v1	==	-6
replace	flag_w1v3	=.	if	w1v3	==	-6
replace	flag_w1v5	=.	if	w1v5	==	-6
replace	flag_w1v7	=.	if	w1v7	==	-6
replace	flag_w1v9	=.	if	w1v9	==	-6
replace	flag_w1v11	=.	if	w1v11	==	-6
replace	flag_w1w2	=.	if	w1w2	==	-6
replace	flag_w1w3	=.	if	w1w3	==	-6
replace	flag_w1w4	=.	if	w1w4	==	-6
replace	flag_w1w5	=.	if	w1w5	==	-6
replace	flag_w1w7	=.	if	w1w7	==	-6
replace	flag_w1w8	=.	if	w1w8	==	-6
replace	flag_w1w9	=.	if	w1w9	==	-6
replace	flag_w1w10	=.	if	w1w10	==	-6
replace	flag_w1w12	=.	if	w1w12	==	-6
replace	flag_w1w13	=.	if	w1w13	==	-6
replace	flag_w1w14	=.	if	w1w14	==	-6
replace	flag_w1w15	=.	if	w1w15	==	-6
						
replace	flag_w1a2	=.	if	w1a2	==	-5
replace	flag_w1a3	=.	if	w1a3	==	-5
replace	flag_w1a4	=.	if	w1a4	==	-5
replace	flag_w1a6	=.	if	w1a6	==	-5
replace	flag_w1b1	=.	if	w1b1	==	-5
replace	flag_w1b2a	=.	if	w1b2a	==	-5
replace	flag_w1b2	=.	if	w1b2	==	-5
replace	flag_w1e2	=.	if	w1e2	==	-5
replace	flag_w1e3	=.	if	w1e3	==	-5
replace	flag_w1e4	=.	if	w1e4	==	-5
replace	flag_w1e5	=.	if	w1e5	==	-5
replace	flag_w1e6	=.	if	w1e6	==	-5
replace	flag_w1e7	=.	if	w1e7	==	-5
replace	flag_w1e8	=.	if	w1e8	==	-5
replace	flag_w1e11	=.	if	w1e11	==	-5
replace	flag_w1e14	=.	if	w1e14	==	-5
replace	flag_w1e17	=.	if	w1e17	==	-5
replace	flag_w1e20	=.	if	w1e20	==	-5
replace	flag_w1e23	=.	if	w1e23	==	-5
replace	flag_w1e26	=.	if	w1e26	==	-5
replace	flag_w1e29	=.	if	w1e29	==	-5
replace	flag_w1e32	=.	if	w1e32	==	-5
replace	flag_w1e35	=.	if	w1e35	==	-5
replace	flag_w1e38	=.	if	w1e38	==	-5
replace	flag_w1e41	=.	if	w1e41	==	-5
replace	flag_w1e44	=.	if	w1e44	==	-5
replace	flag_w1e47	=.	if	w1e47	==	-5
replace	flag_w1e50	=.	if	w1e50	==	-5
replace	flag_w1e53	=.	if	w1e53	==	-5
replace	flag_w1e56	=.	if	w1e56	==	-5
replace	flag_w1e59	=.	if	w1e59	==	-5
replace	flag_w1f1	=.	if	w1f1	==	-5
replace	flag_w1f2	=.	if	w1f2	==	-5
replace	flag_w1f3	=.	if	w1f3	==	-5
replace	flag_w1f4	=.	if	w1f4	==	-5
replace	flag_w1f5	=.	if	w1f5	==	-5
replace	flag_w1f6	=.	if	w1f6	==	-5
replace	flag_w1f7	=.	if	w1f7	==	-5
replace	flag_w1f8	=.	if	w1f8	==	-5
replace	flag_w1g_1	=.	if	w1g_1	==	-5
replace	flag_w1g_2	=.	if	w1g_2	==	-5
replace	flag_w1g_3	=.	if	w1g_3	==	-5
replace	flag_w1g_4	=.	if	w1g_4	==	-5
replace	flag_w1g_5	=.	if	w1g_5	==	-5
replace	flag_w1g_6	=.	if	w1g_6	==	-5
replace	flag_w1g_7	=.	if	w1g_7	==	-5
replace	flag_w1g_8	=.	if	w1g_8	==	-5
replace	flag_w1g_9	=.	if	w1g_9	==	-5
replace	flag_w1g_20	=.	if	w1g_20	==	-5
replace	flag_w1g_21	=.	if	w1g_21	==	-5
replace	flag_w1g_22	=.	if	w1g_22	==	-5
replace	flag_w1g_23	=.	if	w1g_23	==	-5
replace	flag_w1g_24	=.	if	w1g_24	==	-5
replace	flag_w1g_25	=.	if	w1g_25	==	-5
replace	flag_w1g_26	=.	if	w1g_26	==	-5
replace	flag_w1g_27	=.	if	w1g_27	==	-5
replace	flag_w1h1	=.	if	w1h1	==	-5
replace	flag_w1h2	=.	if	w1h2	==	-5
replace	flag_w1h3	=.	if	w1h3	==	-5
replace	flag_w1h4	=.	if	w1h4	==	-5
replace	flag_w1j1a_3	=.	if	w1j1a_3	==	-5
replace	flag_w1j2	=.	if	w1j2	==	-5
replace	flag_w1k1	=.	if	w1k1	==	-5
replace	flag_w1k2	=.	if	w1k2	==	-5
replace	flag_w1l1	=.	if	w1l1	==	-5
replace	flag_w1l2	=.	if	w1l2	==	-5
replace	flag_w1m3	=.	if	w1m3	==	-5
replace	flag_w1n1	=.	if	w1n1	==	-5
replace	flag_w1p1	=.	if	w1p1	==	-5
replace	flag_w1p3	=.	if	w1p3	==	-5
replace	flag_w1p4	=.	if	w1p4	==	-5
replace	flag_w1p6	=.	if	w1p6	==	-5
replace	flag_w1p7	=.	if	w1p7	==	-5
replace	flag_w1p9	=.	if	w1p9	==	-5
replace	flag_w1p10	=.	if	w1p10	==	-5
replace	flag_w1p12	=.	if	w1p12	==	-5
replace	flag_w1p13	=.	if	w1p13	==	-5
replace	flag_w1p15	=.	if	w1p15	==	-5
replace	flag_w1p16	=.	if	w1p16	==	-5
replace	flag_w1p18	=.	if	w1p18	==	-5
replace	flag_w1p19	=.	if	w1p19	==	-5
replace	flag_w1p21	=.	if	w1p21	==	-5
replace	flag_w1p22	=.	if	w1p22	==	-5
replace	flag_w1p24	=.	if	w1p24	==	-5
replace	flag_w1p25	=.	if	w1p25	==	-5
replace	flag_w1p27	=.	if	w1p27	==	-5
replace	flag_w1q1	=.	if	w1q1	==	-5
replace	flag_w1q2	=.	if	w1q2	==	-5
replace	flag_w1t1	=.	if	w1t1	==	-5
replace	flag_w1t2	=.	if	w1t2	==	-5
replace	flag_w1t3	=.	if	w1t3	==	-5
replace	flag_w1t4	=.	if	w1t4	==	-5
replace	flag_w1t5	=.	if	w1t5	==	-5
replace	flag_w1t6	=.	if	w1t6	==	-5
replace	flag_w1t7	=.	if	w1t7	==	-5
replace	flag_w1t8	=.	if	w1t8	==	-5
replace	flag_w1t9	=.	if	w1t9	==	-5
replace	flag_w1t10	=.	if	w1t10	==	-5
replace	flag_w1t11	=.	if	w1t11	==	-5
replace	flag_w1u1	=.	if	w1u1	==	-5
replace	flag_w1u4	=.	if	w1u4	==	-5
replace	flag_w1v1	=.	if	w1v1	==	-5
replace	flag_w1v3	=.	if	w1v3	==	-5
replace	flag_w1v5	=.	if	w1v5	==	-5
replace	flag_w1v7	=.	if	w1v7	==	-5
replace	flag_w1v9	=.	if	w1v9	==	-5
replace	flag_w1v11	=.	if	w1v11	==	-5
replace	flag_w1w2	=.	if	w1w2	==	-5
replace	flag_w1w3	=.	if	w1w3	==	-5
replace	flag_w1w4	=.	if	w1w4	==	-5
replace	flag_w1w5	=.	if	w1w5	==	-5
replace	flag_w1w7	=.	if	w1w7	==	-5
replace	flag_w1w8	=.	if	w1w8	==	-5
replace	flag_w1w9	=.	if	w1w9	==	-5
replace	flag_w1w10	=.	if	w1w10	==	-5
replace	flag_w1w12	=.	if	w1w12	==	-5
replace	flag_w1w13	=.	if	w1w13	==	-5
replace	flag_w1w14	=.	if	w1w14	==	-5
replace	flag_w1w15	=.	if	w1w15	==	-5
						
replace	flag_w1a2	=.	if	w1a2	==	-4
replace	flag_w1a3	=.	if	w1a3	==	-4
replace	flag_w1a4	=.	if	w1a4	==	-4
replace	flag_w1a6	=.	if	w1a6	==	-4
replace	flag_w1b1	=.	if	w1b1	==	-4
replace	flag_w1b2a	=.	if	w1b2a	==	-4
replace	flag_w1b2	=.	if	w1b2	==	-4
replace	flag_w1e2	=.	if	w1e2	==	-4
replace	flag_w1e3	=.	if	w1e3	==	-4
replace	flag_w1e4	=.	if	w1e4	==	-4
replace	flag_w1e5	=.	if	w1e5	==	-4
replace	flag_w1e6	=.	if	w1e6	==	-4
replace	flag_w1e7	=.	if	w1e7	==	-4
replace	flag_w1e8	=.	if	w1e8	==	-4
replace	flag_w1e11	=.	if	w1e11	==	-4
replace	flag_w1e14	=.	if	w1e14	==	-4
replace	flag_w1e17	=.	if	w1e17	==	-4
replace	flag_w1e20	=.	if	w1e20	==	-4
replace	flag_w1e23	=.	if	w1e23	==	-4
replace	flag_w1e26	=.	if	w1e26	==	-4
replace	flag_w1e29	=.	if	w1e29	==	-4
replace	flag_w1e32	=.	if	w1e32	==	-4
replace	flag_w1e35	=.	if	w1e35	==	-4
replace	flag_w1e38	=.	if	w1e38	==	-4
replace	flag_w1e41	=.	if	w1e41	==	-4
replace	flag_w1e44	=.	if	w1e44	==	-4
replace	flag_w1e47	=.	if	w1e47	==	-4
replace	flag_w1e50	=.	if	w1e50	==	-4
replace	flag_w1e53	=.	if	w1e53	==	-4
replace	flag_w1e56	=.	if	w1e56	==	-4
replace	flag_w1e59	=.	if	w1e59	==	-4
replace	flag_w1f1	=.	if	w1f1	==	-4
replace	flag_w1f2	=.	if	w1f2	==	-4
replace	flag_w1f3	=.	if	w1f3	==	-4
replace	flag_w1f4	=.	if	w1f4	==	-4
replace	flag_w1f5	=.	if	w1f5	==	-4
replace	flag_w1f6	=.	if	w1f6	==	-4
replace	flag_w1f7	=.	if	w1f7	==	-4
replace	flag_w1f8	=.	if	w1f8	==	-4
replace	flag_w1g_1	=.	if	w1g_1	==	-4
replace	flag_w1g_2	=.	if	w1g_2	==	-4
replace	flag_w1g_3	=.	if	w1g_3	==	-4
replace	flag_w1g_4	=.	if	w1g_4	==	-4
replace	flag_w1g_5	=.	if	w1g_5	==	-4
replace	flag_w1g_6	=.	if	w1g_6	==	-4
replace	flag_w1g_7	=.	if	w1g_7	==	-4
replace	flag_w1g_8	=.	if	w1g_8	==	-4
replace	flag_w1g_9	=.	if	w1g_9	==	-4
replace	flag_w1g_20	=.	if	w1g_20	==	-4
replace	flag_w1g_21	=.	if	w1g_21	==	-4
replace	flag_w1g_22	=.	if	w1g_22	==	-4
replace	flag_w1g_23	=.	if	w1g_23	==	-4
replace	flag_w1g_24	=.	if	w1g_24	==	-4
replace	flag_w1g_25	=.	if	w1g_25	==	-4
replace	flag_w1g_26	=.	if	w1g_26	==	-4
replace	flag_w1g_27	=.	if	w1g_27	==	-4
replace	flag_w1h1	=.	if	w1h1	==	-4
replace	flag_w1h2	=.	if	w1h2	==	-4
replace	flag_w1h3	=.	if	w1h3	==	-4
replace	flag_w1h4	=.	if	w1h4	==	-4
replace	flag_w1j1a_3	=.	if	w1j1a_3	==	-4
replace	flag_w1j2	=.	if	w1j2	==	-4
replace	flag_w1k1	=.	if	w1k1	==	-4
replace	flag_w1k2	=.	if	w1k2	==	-4
replace	flag_w1l1	=.	if	w1l1	==	-4
replace	flag_w1l2	=.	if	w1l2	==	-4
replace	flag_w1m3	=.	if	w1m3	==	-4
replace	flag_w1n1	=.	if	w1n1	==	-4
replace	flag_w1p1	=.	if	w1p1	==	-4
replace	flag_w1p3	=.	if	w1p3	==	-4
replace	flag_w1p4	=.	if	w1p4	==	-4
replace	flag_w1p6	=.	if	w1p6	==	-4
replace	flag_w1p7	=.	if	w1p7	==	-4
replace	flag_w1p9	=.	if	w1p9	==	-4
replace	flag_w1p10	=.	if	w1p10	==	-4
replace	flag_w1p12	=.	if	w1p12	==	-4
replace	flag_w1p13	=.	if	w1p13	==  -4
replace	flag_w1p15	=.	if	w1p15	==	-4
replace	flag_w1p16	=.	if	w1p16	==	-4
replace	flag_w1p18	=.	if	w1p18	==	-4
replace	flag_w1p19	=.	if	w1p19	==	-4
replace	flag_w1p21	=.	if	w1p21	==	-4
replace	flag_w1p22	=.	if	w1p22	==	-4
replace	flag_w1p24	=.	if	w1p24	==	-4
replace	flag_w1p25	=.	if	w1p25	==	-4
replace	flag_w1p27	=.	if	w1p27	==	-4
replace	flag_w1q1	=.	if	w1q1	==	-4
replace	flag_w1q2	=.	if	w1q2	==	-4
replace	flag_w1t1	=.	if	w1t1	==	-4
replace	flag_w1t2	=.	if	w1t2	==	-4
replace	flag_w1t3	=.	if	w1t3	==	-4
replace	flag_w1t4	=.	if	w1t4	==	-4
replace	flag_w1t5	=.	if	w1t5	==	-4
replace	flag_w1t6	=.	if	w1t6	==	-4
replace	flag_w1t7	=.	if	w1t7	==	-4
replace	flag_w1t8	=.	if	w1t8	==	-4
replace	flag_w1t9	=.	if	w1t9	==	-4
replace	flag_w1t10	=.	if	w1t10	==	-4
replace	flag_w1t11	=.	if	w1t11	==	-4
replace	flag_w1u1	=.	if	w1u1	==	-4
replace	flag_w1u4	=.	if	w1u4	==	-4
replace	flag_w1v1	=.	if	w1v1	==	-4
replace	flag_w1v3	=.	if	w1v3	==	-4
replace	flag_w1v5	=.	if	w1v5	==	-4
replace	flag_w1v7	=.	if	w1v7	==	-4
replace	flag_w1v9	=.	if	w1v9	==	-4
replace	flag_w1v11	=.	if	w1v11	==	-4
replace	flag_w1w2	=.	if	w1w2	==	-4
replace	flag_w1w3	=.	if	w1w3	==	-4
replace	flag_w1w4	=.	if	w1w4	==	-4
replace	flag_w1w5	=.	if	w1w5	==	-4
replace	flag_w1w7	=.	if	w1w7	==	-4
replace	flag_w1w8	=.	if	w1w8	==	-4
replace	flag_w1w9	=.	if	w1w9	==	-4
replace	flag_w1w10	=.	if	w1w10	==	-4
replace	flag_w1w12	=.	if	w1w12	==	-4
replace	flag_w1w13	=.	if	w1w13	==	-4
replace	flag_w1w14	=.	if	w1w14	==	-4
replace	flag_w1w15	=.	if	w1w15	==	-4
						
replace	flag_w1a2	=.	if	w1a2	==	-3
replace	flag_w1a3	=.	if	w1a3	==	-3
replace	flag_w1a4	=.	if	w1a4	==	-3
replace	flag_w1a6	=.	if	w1a6	==	-3
replace	flag_w1b1	=.	if	w1b1	==	-3
replace	flag_w1b2a	=.	if	w1b2a	==	-3
replace	flag_w1b2	=.	if	w1b2	==	-3
replace	flag_w1e2	=.	if	w1e2	==	-3
replace	flag_w1e3	=.	if	w1e3	==	-3
replace	flag_w1e4	=.	if	w1e4	==	-3
replace	flag_w1e5	=.	if	w1e5	==	-3
replace	flag_w1e6	=.	if	w1e6	==	-3
replace	flag_w1e7	=.	if	w1e7	==	-3
replace	flag_w1e8	=.	if	w1e8	==	-3
replace	flag_w1e11	=.	if	w1e11	==	-3
replace	flag_w1e14	=.	if	w1e14	==	-3
replace	flag_w1e17	=.	if	w1e17	==	-3
replace	flag_w1e20	=.	if	w1e20	==	-3
replace	flag_w1e23	=.	if	w1e23	==	-3
replace	flag_w1e26	=.	if	w1e26	==	-3
replace	flag_w1e29	=.	if	w1e29	==	-3
replace	flag_w1e32	=.	if	w1e32	==	-3
replace	flag_w1e35	=.	if	w1e35	==	-3
replace	flag_w1e38	=.	if	w1e38	==	-3
replace	flag_w1e41	=.	if	w1e41	==	-3
replace	flag_w1e44	=.	if	w1e44	==	-3
replace	flag_w1e47	=.	if	w1e47	==	-3
replace	flag_w1e50	=.	if	w1e50	==	-3
replace	flag_w1e53	=.	if	w1e53	==	-3
replace	flag_w1e56	=.	if	w1e56	==	-3
replace	flag_w1e59	=.	if	w1e59	==	-3
replace	flag_w1f1	=.	if	w1f1	==	-3
replace	flag_w1f2	=.	if	w1f2	==	-3
replace	flag_w1f3	=.	if	w1f3	==	-3
replace	flag_w1f4	=.	if	w1f4	==	-3
replace	flag_w1f5	=.	if	w1f5	==	-3
replace	flag_w1f6	=.	if	w1f6	==	-3
replace	flag_w1f7	=.	if	w1f7	==	-3
replace	flag_w1f8	=.	if	w1f8	==	-3
replace	flag_w1g_1	=.	if	w1g_1	==	-3
replace	flag_w1g_2	=.	if	w1g_2	==	-3
replace	flag_w1g_3	=.	if	w1g_3	==	-3
replace	flag_w1g_4	=.	if	w1g_4	==	-3
replace	flag_w1g_5	=.	if	w1g_5	==	-3
replace	flag_w1g_6	=.	if	w1g_6	==	-3
replace	flag_w1g_7	=.	if	w1g_7	==	-3
replace	flag_w1g_8	=.	if	w1g_8	==	-3
replace	flag_w1g_9	=.	if	w1g_9	==	-3
replace	flag_w1g_20	=.	if	w1g_20	==	-3
replace	flag_w1g_21	=.	if	w1g_21	==	-3
replace	flag_w1g_22	=.	if	w1g_22	==	-3
replace	flag_w1g_23	=.	if	w1g_23	==	-3
replace	flag_w1g_24	=.	if	w1g_24	==	-3
replace	flag_w1g_25	=.	if	w1g_25	==	-3
replace	flag_w1g_26	=.	if	w1g_26	==	-3
replace	flag_w1g_27	=.	if	w1g_27	==	-3
replace	flag_w1h1	=.	if	w1h1	==	-3
replace	flag_w1h2	=.	if	w1h2	==	-3
replace	flag_w1h3	=.	if	w1h3	==	-3
replace	flag_w1h4	=.	if	w1h4	==	-3
replace	flag_w1j1a_3	=.	if	w1j1a_3	==	-3
replace	flag_w1j2	=.	if	w1j2	==	-3
replace	flag_w1k1	=.	if	w1k1	==	-3
replace	flag_w1k2	=.	if	w1k2	==	-3
replace	flag_w1l1	=.	if	w1l1	==	-3
replace	flag_w1l2	=.	if	w1l2	==	-3
replace	flag_w1m3	=.	if	w1m3	==	-3
replace	flag_w1n1	=.	if	w1n1	==	-3
replace	flag_w1p1	=.	if	w1p1	==	-3
replace	flag_w1p3	=.	if	w1p3	==	-3
replace	flag_w1p4	=.	if	w1p4	==	-3
replace	flag_w1p6	=.	if	w1p6	==	-3
replace	flag_w1p7	=.	if	w1p7	==	-3
replace	flag_w1p9	=.	if	w1p9	==	-3
replace	flag_w1p10	=.	if	w1p10	==	-3
replace	flag_w1p12	=.	if	w1p12	==	-3
replace	flag_w1p13	=.	if	w1p13	==	-3
replace	flag_w1p15	=.	if	w1p15	==	-3
replace	flag_w1p16	=.	if	w1p16	==	-3
replace	flag_w1p18	=.	if	w1p18	==	-3
replace	flag_w1p19	=.	if	w1p19	==	-3
replace	flag_w1p21	=.	if	w1p21	==	-3
replace	flag_w1p22	=.	if	w1p22	==	-3
replace	flag_w1p24	=.	if	w1p24	==	-3
replace	flag_w1p25	=.	if	w1p25	==	-3
replace	flag_w1p27	=.	if	w1p27	==	-3
replace	flag_w1q1	=.	if	w1q1	==	-3
replace	flag_w1q2	=.	if	w1q2	==	-3
replace	flag_w1t1	=.	if	w1t1	==	-3
replace	flag_w1t2	=.	if	w1t2	==	-3
replace	flag_w1t3	=.	if	w1t3	==	-3
replace	flag_w1t4	=.	if	w1t4	==	-3
replace	flag_w1t5	=.	if	w1t5	==	-3
replace	flag_w1t6	=.	if	w1t6	==	-3
replace	flag_w1t7	=.	if	w1t7	==	-3
replace	flag_w1t8	=.	if	w1t8	==	-3
replace	flag_w1t9	=.	if	w1t9	==	-3
replace	flag_w1t10	=.	if	w1t10	==	-3
replace	flag_w1t11	=.	if	w1t11	==	-3
replace	flag_w1u1	=.	if	w1u1	==	-3
replace	flag_w1u4	=.	if	w1u4	==	-3
replace	flag_w1v1	=.	if	w1v1	==	-3
replace	flag_w1v3	=.	if	w1v3	==	-3
replace	flag_w1v5	=.	if	w1v5	==	-3
replace	flag_w1v7	=.	if	w1v7	==	-3
replace	flag_w1v9	=.	if	w1v9	==	-3
replace	flag_w1v11	=.	if	w1v11	==	-3
replace	flag_w1w2	=.	if	w1w2	==	-3
replace	flag_w1w3	=.	if	w1w3	==	-3
replace	flag_w1w4	=.	if	w1w4	==	-3
replace	flag_w1w5	=.	if	w1w5	==	-3
replace	flag_w1w7	=.	if	w1w7	==	-3
replace	flag_w1w8	=.	if	w1w8	==	-3
replace	flag_w1w9	=.	if	w1w9	==	-3
replace	flag_w1w10	=.	if	w1w10	==	-3
replace	flag_w1w12	=.	if	w1w12	==	-3
replace	flag_w1w13	=.	if	w1w13	==	-3
replace	flag_w1w14	=.	if	w1w14	==	-3
replace	flag_w1w15	=.	if	w1w15	==	-3
						
replace	flag_w1a2	=.	if	w1a2	==	-2
replace	flag_w1a3	=.	if	w1a3	==	-2
replace	flag_w1a4	=.	if	w1a4	==	-2
replace	flag_w1a6	=.	if	w1a6	==	-2
replace	flag_w1b1	=.	if	w1b1	==	-2
replace	flag_w1b2a	=.	if	w1b2a	==	-2
replace	flag_w1b2	=.	if	w1b2	==	-2
replace	flag_w1e2	=.	if	w1e2	==	-2
replace	flag_w1e3	=.	if	w1e3	==	-2
replace	flag_w1e4	=.	if	w1e4	==	-2
replace	flag_w1e5	=.	if	w1e5	==	-2
replace	flag_w1e6	=.	if	w1e6	==	-2
replace	flag_w1e7	=.	if	w1e7	==	-2
replace	flag_w1e8	=.	if	w1e8	==	-2
replace	flag_w1e11	=.	if	w1e11	==	-2
replace	flag_w1e14	=.	if	w1e14	==	-2
replace	flag_w1e17	=.	if	w1e17	==	-2
replace	flag_w1e20	=.	if	w1e20	==	-2
replace	flag_w1e23	=.	if	w1e23	==	-2
replace	flag_w1e26	=.	if	w1e26	==	-2
replace	flag_w1e29	=.	if	w1e29	==	-2
replace	flag_w1e32	=.	if	w1e32	==	-2
replace	flag_w1e35	=.	if	w1e35	==	-2
replace	flag_w1e38	=.	if	w1e38	==	-2
replace	flag_w1e41	=.	if	w1e41	==	-2
replace	flag_w1e44	=.	if	w1e44	==	-2
replace	flag_w1e47	=.	if	w1e47	==	-2
replace	flag_w1e50	=.	if	w1e50	==	-2
replace	flag_w1e53	=.	if	w1e53	==	-2
replace	flag_w1e56	=.	if	w1e56	==	-2
replace	flag_w1e59	=.	if	w1e59	==	-2
replace	flag_w1f1	=.	if	w1f1	==	-2
replace	flag_w1f2	=.	if	w1f2	==	-2
replace	flag_w1f3	=.	if	w1f3	==	-2
replace	flag_w1f4	=.	if	w1f4	==	-2
replace	flag_w1f5	=.	if	w1f5	==	-2
replace	flag_w1f6	=.	if	w1f6	==	-2
replace	flag_w1f7	=.	if	w1f7	==	-2
replace	flag_w1f8	=.	if	w1f8	==	-2
replace	flag_w1g_1	=.	if	w1g_1	==	-2
replace	flag_w1g_2	=.	if	w1g_2	==	-2
replace	flag_w1g_3	=.	if	w1g_3	==	-2
replace	flag_w1g_4	=.	if	w1g_4	==	-2
replace	flag_w1g_5	=.	if	w1g_5	==	-2
replace	flag_w1g_6	=.	if	w1g_6	==	-2
replace	flag_w1g_7	=.	if	w1g_7	==	-2
replace	flag_w1g_8	=.	if	w1g_8	==	-2
replace	flag_w1g_9	=.	if	w1g_9	==	-2
replace	flag_w1g_20	=.	if	w1g_20	==	-2
replace	flag_w1g_21	=.	if	w1g_21	==	-2
replace	flag_w1g_22	=.	if	w1g_22	==	-2
replace	flag_w1g_23	=.	if	w1g_23	==	-2
replace	flag_w1g_24	=.	if	w1g_24	==	-2
replace	flag_w1g_25	=.	if	w1g_25	==	-2
replace	flag_w1g_26	=.	if	w1g_26	==	-2
replace	flag_w1g_27	=.	if	w1g_27	==	-2
replace	flag_w1h1	=.	if	w1h1	==	-2
replace	flag_w1h2	=.	if	w1h2	==	-2
replace	flag_w1h3	=.	if	w1h3	==	-2
replace	flag_w1h4	=.	if	w1h4	==	-2
replace	flag_w1j1a_3	=.	if	w1j1a_3	==	-2
replace	flag_w1j2	=.	if	w1j2	==	-2
replace	flag_w1k1	=.	if	w1k1	==	-2
replace	flag_w1k2	=.	if	w1k2	==	-2
replace	flag_w1l1	=.	if	w1l1	==	-2
replace	flag_w1l2	=.	if	w1l2	==	-2
replace	flag_w1m3	=.	if	w1m3	==	-2
replace	flag_w1n1	=.	if	w1n1	==	-2
replace	flag_w1p1	=.	if	w1p1	==	-2
replace	flag_w1p3	=.	if	w1p3	==	-2
replace	flag_w1p4	=.	if	w1p4	==	-2
replace	flag_w1p6	=.	if	w1p6	==	-2
replace	flag_w1p7	=.	if	w1p7	==	-2
replace	flag_w1p9	=.	if	w1p9	==	-2
replace	flag_w1p10	=.	if	w1p10	==	-2
replace	flag_w1p12	=.	if	w1p12	==	-2
replace	flag_w1p13	=.	if	w1p13	==	-2
replace	flag_w1p15	=.	if	w1p15	==	-2
replace	flag_w1p16	=.	if	w1p16	==	-2
replace	flag_w1p18	=.	if	w1p18	==	-2
replace	flag_w1p19	=.	if	w1p19	==	-2
replace	flag_w1p21	=.	if	w1p21	==	-2
replace	flag_w1p22	=.	if	w1p22	==	-2
replace	flag_w1p24	=.	if	w1p24	==	-2
replace	flag_w1p25	=.	if	w1p25	==	-2
replace	flag_w1p27	=.	if	w1p27	==	-2
replace	flag_w1q1	=.	if	w1q1	==	-2
replace	flag_w1q2	=.	if	w1q2	==	-2
replace	flag_w1t1	=.	if	w1t1	==	-2
replace	flag_w1t2	=.	if	w1t2	==	-2
replace	flag_w1t3	=.	if	w1t3	==	-2
replace	flag_w1t4	=.	if	w1t4	==	-2
replace	flag_w1t5	=.	if	w1t5	==	-2
replace	flag_w1t6	=.	if	w1t6	==	-2
replace	flag_w1t7	=.	if	w1t7	==	-2
replace	flag_w1t8	=.	if	w1t8	==	-2
replace	flag_w1t9	=.	if	w1t9	==	-2
replace	flag_w1t10	=.	if	w1t10	==	-2
replace	flag_w1t11	=.	if	w1t11	==	-2
replace	flag_w1u1	=.	if	w1u1	==	-2
replace	flag_w1u4	=.	if	w1u4	==	-2
replace	flag_w1v1	=.	if	w1v1	==	-2
replace	flag_w1v3	=.	if	w1v3	==	-2
replace	flag_w1v5	=.	if	w1v5	==	-2
replace	flag_w1v7	=.	if	w1v7	==	-2
replace	flag_w1v9	=.	if	w1v9	==	-2
replace	flag_w1v11	=.	if	w1v11	==	-2
replace	flag_w1w2	=.	if	w1w2	==	-2
replace	flag_w1w3	=.	if	w1w3	==	-2
replace	flag_w1w4	=.	if	w1w4	==	-2
replace	flag_w1w5	=.	if	w1w5	==	-2
replace	flag_w1w7	=.	if	w1w7	==	-2
replace	flag_w1w8	=.	if	w1w8	==	-2
replace	flag_w1w9	=.	if	w1w9	==	-2
replace	flag_w1w10	=.	if	w1w10	==	-2
replace	flag_w1w12	=.	if	w1w12	==	-2
replace	flag_w1w13	=.	if	w1w13	==	-2
replace	flag_w1w14	=.	if	w1w14	==	-2
replace	flag_w1w15	=.	if	w1w15	==	-2
						
replace	flag_w1a2	=.	if	w1a2	==	-1
replace	flag_w1a3	=.	if	w1a3	==	-1
replace	flag_w1a4	=.	if	w1a4	==	-1
replace	flag_w1a6	=.	if	w1a6	==	-1
replace	flag_w1b1	=.	if	w1b1	==	-1
replace	flag_w1b2a	=.	if	w1b2a	==	-1
replace	flag_w1b2	=.	if	w1b2	==	-1
replace	flag_w1e2	=.	if	w1e2	==	-1
replace	flag_w1e3	=.	if	w1e3	==	-1
replace	flag_w1e4	=.	if	w1e4	==	-1
replace	flag_w1e5	=.	if	w1e5	==	-1
replace	flag_w1e6	=.	if	w1e6	==	-1
replace	flag_w1e7	=.	if	w1e7	==	-1
replace	flag_w1e8	=.	if	w1e8	==	-1
replace	flag_w1e11	=.	if	w1e11	==	-1
replace	flag_w1e14	=.	if	w1e14	==	-1
replace	flag_w1e17	=.	if	w1e17	==	-1
replace	flag_w1e20	=.	if	w1e20	==	-1
replace	flag_w1e23	=.	if	w1e23	==	-1
replace	flag_w1e26	=.	if	w1e26	==	-1
replace	flag_w1e29	=.	if	w1e29	==	-1
replace	flag_w1e32	=.	if	w1e32	==	-1
replace	flag_w1e35	=.	if	w1e35	==	-1
replace	flag_w1e38	=.	if	w1e38	==	-1
replace	flag_w1e41	=.	if	w1e41	==	-1
replace	flag_w1e44	=.	if	w1e44	==	-1
replace	flag_w1e47	=.	if	w1e47	==	-1
replace	flag_w1e50	=.	if	w1e50	==	-1
replace	flag_w1e53	=.	if	w1e53	==	-1
replace	flag_w1e56	=.	if	w1e56	==	-1
replace	flag_w1e59	=.	if	w1e59	==	-1
replace	flag_w1f1	=.	if	w1f1	==	-1
replace	flag_w1f2	=.	if	w1f2	==	-1
replace	flag_w1f3	=.	if	w1f3	==	-1
replace	flag_w1f4	=.	if	w1f4	==	-1
replace	flag_w1f5	=.	if	w1f5	==	-1
replace	flag_w1f6	=.	if	w1f6	==	-1
replace	flag_w1f7	=.	if	w1f7	==	-1
replace	flag_w1f8	=.	if	w1f8	==	-1
replace	flag_w1g_1	=.	if	w1g_1	==	-1
replace	flag_w1g_2	=.	if	w1g_2	==	-1
replace	flag_w1g_3	=.	if	w1g_3	==	-1
replace	flag_w1g_4	=.	if	w1g_4	==	-1
replace	flag_w1g_5	=.	if	w1g_5	==	-1
replace	flag_w1g_6	=.	if	w1g_6	==	-1
replace	flag_w1g_7	=.	if	w1g_7	==	-1
replace	flag_w1g_8	=.	if	w1g_8	==	-1
replace	flag_w1g_9	=.	if	w1g_9	==	-1
replace	flag_w1g_20	=.	if	w1g_20	==	-1
replace	flag_w1g_21	=.	if	w1g_21	==	-1
replace	flag_w1g_22	=.	if	w1g_22	==	-1
replace	flag_w1g_23	=.	if	w1g_23	==	-1
replace	flag_w1g_24	=.	if	w1g_24	==	-1
replace	flag_w1g_25	=.	if	w1g_25	==	-1
replace	flag_w1g_26	=.	if	w1g_26	==	-1
replace	flag_w1g_27	=.	if	w1g_27	==	-1
replace	flag_w1h1	=.	if	w1h1	==	-1
replace	flag_w1h2	=.	if	w1h2	==	-1
replace	flag_w1h3	=.	if	w1h3	==	-1
replace	flag_w1h4	=.	if	w1h4	==	-1
replace	flag_w1j1a_3	=.	if	w1j1a_3	==	-1
replace	flag_w1j2	=.	if	w1j2	==	-1
replace	flag_w1k1	=.	if	w1k1	==	-1
replace	flag_w1k2	=.	if	w1k2	==	-1
replace	flag_w1l1	=.	if	w1l1	==	-1
replace	flag_w1l2	=.	if	w1l2	==	-1
replace	flag_w1m3	=.	if	w1m3	==	-1
replace	flag_w1n1	=.	if	w1n1	==	-1
replace	flag_w1p1	=.	if	w1p1	==	-1
replace	flag_w1p3	=.	if	w1p3	==	-1
replace	flag_w1p4	=.	if	w1p4	==	-1
replace	flag_w1p6	=.	if	w1p6	==	-1
replace	flag_w1p7	=.	if	w1p7	==	-1
replace	flag_w1p9	=.	if	w1p9	==	-1
replace	flag_w1p10	=.	if	w1p10	==	-1
replace	flag_w1p12	=.	if	w1p12	==	-1
replace	flag_w1p13	=.	if	w1p13	==	-1
replace	flag_w1p15	=.	if	w1p15	==	-1
replace	flag_w1p16	=.	if	w1p16	==	-1
replace	flag_w1p18	=.	if	w1p18	==	-1
replace	flag_w1p19	=.	if	w1p19	==	-1
replace	flag_w1p21	=.	if	w1p21	==	-1
replace	flag_w1p22	=.	if	w1p22	==	-1
replace	flag_w1p24	=.	if	w1p24	==	-1
replace	flag_w1p25	=.	if	w1p25	==	-1
replace	flag_w1p27	=.	if	w1p27	==	-1
replace	flag_w1q1	=.	if	w1q1	==	-1
replace	flag_w1q2	=.	if	w1q2	==	-1
replace	flag_w1t1	=.	if	w1t1	==	-1
replace	flag_w1t2	=.	if	w1t2	==	-1
replace	flag_w1t3	=.	if	w1t3	==	-1
replace	flag_w1t4	=.	if	w1t4	==	-1
replace	flag_w1t5	=.	if	w1t5	==	-1
replace	flag_w1t6	=.	if	w1t6	==	-1
replace	flag_w1t7	=.	if	w1t7	==	-1
replace	flag_w1t8	=.	if	w1t8	==	-1
replace	flag_w1t9	=.	if	w1t9	==	-1
replace	flag_w1t10	=.	if	w1t10	==	-1
replace	flag_w1t11	=.	if	w1t11	==	-1
replace	flag_w1u1	=.	if	w1u1	==	-1
replace	flag_w1u4	=.	if	w1u4	==	-1
replace	flag_w1v1	=.	if	w1v1	==	-1
replace	flag_w1v3	=.	if	w1v3	==	-1
replace	flag_w1v5	=.	if	w1v5	==	-1
replace	flag_w1v7	=.	if	w1v7	==	-1
replace	flag_w1v9	=.	if	w1v9	==	-1
replace	flag_w1v11	=.	if	w1v11	==	-1
replace	flag_w1w2	=.	if	w1w2	==	-1
replace	flag_w1w3	=.	if	w1w3	==	-1
replace	flag_w1w4	=.	if	w1w4	==	-1
replace	flag_w1w5	=.	if	w1w5	==	-1
replace	flag_w1w7	=.	if	w1w7	==	-1
replace	flag_w1w8	=.	if	w1w8	==	-1
replace	flag_w1w9	=.	if	w1w9	==	-1
replace	flag_w1w10	=.	if	w1w10	==	-1
replace	flag_w1w12	=.	if	w1w12	==	-1
replace	flag_w1w13	=.	if	w1w13	==	-1
replace	flag_w1w14	=.	if	w1w14	==	-1
replace	flag_w1w15	=.	if	w1w15	==	-1



****Manips:
tab w11flag
tab  w1flag w11flag

***[ Only respondents for which w1 & w11 data exist were retained]
drop if w1flag!=1

***[removed some of the flags for DK because of many missing values:]
drop flag_w1e3  flag_w1e4
drop flag_w1e6  flag_w1e7
drop flag_w1m3
tab1 w1f2 w1f4 w1f6 w1f8
drop flag_w1a6
drop  flag_w1b1 flag_w1b2a flag_w1b2
drop flag_w1a2  flag_w1a3  flag_w1a4
sum  flag_w1e2 flag_w1e5 flag_w1e8 flag_w1e11 flag_w1e14 flag_w1e17 flag_w1e20 flag_w1e23 flag_w1e26 flag_w1e29 flag_w1e32 flag_w1e35 flag_w1e38 flag_w1e41 flag_w1e44 flag_w1e47 flag_w1e50 flag_w1e53 flag_w1e56 flag_w1e59 flag_w1f1 flag_w1f2 flag_w1f3 flag_w1f4 flag_w1f5 flag_w1f6 flag_w1f7 flag_w1f8 flag_w1g_1 flag_w1g_2 flag_w1g_3 flag_w1g_4 flag_w1g_5 flag_w1g_6 flag_w1g_7 flag_w1g_8 flag_w1g_9 flag_w1g_20 flag_w1g_21 flag_w1g_22 flag_w1g_23 flag_w1g_24 flag_w1g_25 flag_w1g_26 flag_w1g_27 flag_w1h1 flag_w1h2 flag_w1h3 flag_w1h4 flag_w1j1a_3 flag_w1j2 flag_w1k1 flag_w1k2 flag_w1l1 flag_w1l2 flag_w1n1 flag_w1p1 flag_w1p3 flag_w1p4 flag_w1p6 flag_w1p7 flag_w1p9 flag_w1p10 flag_w1p12 flag_w1p13 flag_w1p15 flag_w1p16 flag_w1p18 flag_w1p19 flag_w1p21 flag_w1p22 flag_w1p24 flag_w1p25 flag_w1p27 flag_w1q1 flag_w1q2 flag_w1t1 flag_w1t2 flag_w1t3 flag_w1t4 flag_w1t5 flag_w1t6 flag_w1t7 flag_w1t8 flag_w1t9 flag_w1t10 flag_w1t11 flag_w1u1 flag_w1u4 flag_w1v1 flag_w1v3 flag_w1v5 flag_w1v7 flag_w1v9 flag_w1v11 flag_w1w2 flag_w1w3 flag_w1w4 flag_w1w5 flag_w1w7 flag_w1w8 flag_w1w9 flag_w1w10 flag_w1w12 flag_w1w13 flag_w1w14 flag_w1w15

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
   flag_w1e2 |      1380    .0007246    .0269191          0          1
   flag_w1e5 |      1380    .0028986    .0537796          0          1
   flag_w1e8 |      1380    .0028986    .0537796          0          1
  flag_w1e11 |      1380    .0036232    .0601056          0          1
  flag_w1e14 |      1380    .0028986    .0537796          0          1
-------------+--------------------------------------------------------
  flag_w1e17 |      1380    .0043478    .0658184          0          1
  flag_w1e20 |      1380    .0028986    .0537796          0          1
  flag_w1e23 |      1380    .0050725    .0710661          0          1
  flag_w1e26 |      1380     .007971    .0889562          0          1
  flag_w1e29 |      1380    .0072464    .0848474          0          1
-------------+--------------------------------------------------------
  flag_w1e32 |      1380     .007971    .0889562          0          1
  flag_w1e35 |      1380    .0021739    .0465914          0          1
  flag_w1e38 |      1380    .0028986    .0537796          0          1
  flag_w1e41 |      1380    .0028986    .0537796          0          1
  flag_w1e44 |      1380    .0043478    .0658184          0          1
-------------+--------------------------------------------------------
  flag_w1e47 |      1380    .0050725    .0710661          0          1
  flag_w1e50 |      1380    .0043478    .0658184          0          1
  flag_w1e53 |      1380    .0057971    .0759452          0          1
  flag_w1e56 |      1380    .0072464    .0848474          0          1
  flag_w1e59 |      1380    .0028986    .0537796          0          1
-------------+--------------------------------------------------------
   flag_w1f1 |      1380    .0253623      .15728          0          1
   flag_w1f2 |      1345     .002974    .0544733          0          1
   flag_w1f3 |      1380    .0231884    .1505561          0          1
   flag_w1f4 |      1348    .0029674    .0544128          0          1
   flag_w1f5 |      1380    .0253623      .15728          0          1
-------------+--------------------------------------------------------
   flag_w1f6 |      1345     .002974    .0544733          0          1
   flag_w1f7 |      1380     .026087    .1594517          0          1
   flag_w1f8 |      1344    .0029762    .0544935          0          1
  flag_w1g_1 |      1380    .0101449    .1002461          0          1
  flag_w1g_2 |      1380    .0101449    .1002461          0          1
-------------+--------------------------------------------------------
  flag_w1g_3 |      1380    .0101449    .1002461          0          1
  flag_w1g_4 |      1380    .0101449    .1002461          0          1
  flag_w1g_5 |      1380    .0101449    .1002461          0          1
  flag_w1g_6 |      1380    .0101449    .1002461          0          1
  flag_w1g_7 |      1380    .0101449    .1002461          0          1
-------------+--------------------------------------------------------
  flag_w1g_8 |      1380    .0101449    .1002461          0          1
  flag_w1g_9 |      1380    .0101449    .1002461          0          1
 flag_w1g_20 |      1380    .0101449    .1002461          0          1
 flag_w1g_21 |      1380    .0101449    .1002461          0          1
 flag_w1g_22 |      1380    .0101449    .1002461          0          1
-------------+--------------------------------------------------------
 flag_w1g_23 |      1380    .0101449    .1002461          0          1
 flag_w1g_24 |      1380    .0101449    .1002461          0          1
 flag_w1g_25 |      1380    .0101449    .1002461          0          1
 flag_w1g_26 |      1380    .0101449    .1002461          0          1
 flag_w1g_27 |      1380    .0101449    .1002461          0          1
-------------+--------------------------------------------------------
   flag_w1h1 |      1380    .0036232    .0601056          0          1
   flag_w1h2 |      1379    .0029007     .053799          0          1
   flag_w1h3 |      1379    .0029007     .053799          0          1
   flag_w1h4 |      1379    .0036258    .0601273          0          1
flag_w1j1a_3 |      1377    .4124909    .4924615          0          1
-------------+--------------------------------------------------------
   flag_w1j2 |      1379    .0050761    .0710918          0          1
   flag_w1k1 |      1379    .0021755    .0466083          0          1
   flag_w1k2 |      1379    .0029007     .053799          0          1
   flag_w1l1 |      1379    .0036258    .0601273          0          1
   flag_w1l2 |      1379    .0014503    .0380693          0          1
-------------+--------------------------------------------------------
   flag_w1n1 |      1379    .0029007     .053799          0          1
   flag_w1p1 |      1379    .0036258    .0601273          0          1
   flag_w1p3 |      1379    .0072516     .084878          0          1
   flag_w1p4 |      1379    .0029007     .053799          0          1
   flag_w1p6 |      1375    .0029091    .0538771          0          1
-------------+--------------------------------------------------------
   flag_w1p7 |      1379    .0036258    .0601273          0          1
   flag_w1p9 |      1374    .0029112    .0538966          0          1
  flag_w1p10 |      1379    .0036258    .0601273          0          1
  flag_w1p12 |      1375    .0029091    .0538771          0          1
  flag_w1p13 |      1379    .0021755    .0466083          0          1
-------------+--------------------------------------------------------
  flag_w1p15 |      1376     .002907    .0538575          0          1
  flag_w1p16 |      1379    .0021755    .0466083          0          1
  flag_w1p18 |      1374    .0021834    .0466929          0          1
  flag_w1p19 |      1379    .0021755    .0466083          0          1
  flag_w1p21 |      1376     .002907    .0538575          0          1
-------------+--------------------------------------------------------
  flag_w1p22 |      1379    .0036258    .0601273          0          1
  flag_w1p24 |      1372    .0014577    .0381663          0          1
  flag_w1p25 |      1379    .0029007     .053799          0          1
  flag_w1p27 |      1374    .0021834    .0466929          0          1
   flag_w1q1 |      1379    .0123278     .110384          0          1
-------------+--------------------------------------------------------
   flag_w1q2 |      1379    .0072516     .084878          0          1
   flag_w1t1 |      1379    .0029007     .053799          0          1
   flag_w1t2 |      1379    .0021755    .0466083          0          1
   flag_w1t3 |      1379    .0014503    .0380693          0          1
   flag_w1t4 |      1379     .004351    .0658422          0          1
-------------+--------------------------------------------------------
   flag_w1t5 |      1379    .0029007     .053799          0          1
   flag_w1t6 |      1379    .0021755    .0466083          0          1
   flag_w1t7 |      1379    .0036258    .0601273          0          1
   flag_w1t8 |      1379    .0021755    .0466083          0          1
   flag_w1t9 |      1379    .0014503    .0380693          0          1
-------------+--------------------------------------------------------
  flag_w1t10 |      1379    .0021755    .0466083          0          1
  flag_w1t11 |      1379    .0021755    .0466083          0          1
   flag_w1u1 |      1379    .0021755    .0466083          0          1
   flag_w1u4 |      1379    .0036258    .0601273          0          1
   flag_w1v1 |      1379    .0021755    .0466083          0          1
-------------+--------------------------------------------------------
   flag_w1v3 |      1379    .0029007     .053799          0          1
   flag_w1v5 |      1379    .0014503    .0380693          0          1
   flag_w1v7 |      1379    .0014503    .0380693          0          1
   flag_w1v9 |      1379    .0029007     .053799          0          1
  flag_w1v11 |      1379    .0021755    .0466083          0          1
-------------+--------------------------------------------------------
   flag_w1w2 |      1379    .0036258    .0601273          0          1
   flag_w1w3 |      1379    .0036258    .0601273          0          1
   flag_w1w4 |      1379    .0036258    .0601273          0          1
   flag_w1w5 |      1379    .0036258    .0601273          0          1
   flag_w1w7 |      1379    .0036258    .0601273          0          1
-------------+--------------------------------------------------------
   flag_w1w8 |      1379    .0058013    .0759726          0          1
   flag_w1w9 |      1379    .0065265    .0805517          0          1
  flag_w1w10 |      1379    .0072516     .084878          0          1
  flag_w1w12 |      1379    .0050761    .0710918          0          1
  flag_w1w13 |      1379    .0050761    .0710918          0          1
-------------+--------------------------------------------------------
  flag_w1w14 |      1379    .0065265    .0805517          0          1
  flag_w1w15 |      1379    .0058013    .0759726          0          1


****Generated new testw1:

gen testw1=(flag_w1e2 + flag_w1e5 + flag_w1e8 + flag_w1e11 + flag_w1e14 + flag_w1e17 + flag_w1e20 + flag_w1e23 + flag_w1e26 + flag_w1e29 + flag_w1e32 + flag_w1e35 + flag_w1e38 + flag_w1e41 + flag_w1e44 + flag_w1e47 + flag_w1e50 + flag_w1e53 + flag_w1e56 + flag_w1e59 + flag_w1f1 + flag_w1f2 + flag_w1f3 + flag_w1f4 + flag_w1f5 + flag_w1f6 + flag_w1f7 + flag_w1f8 + flag_w1g_1 + flag_w1g_2 + flag_w1g_3 + flag_w1g_4 + flag_w1g_5 + flag_w1g_6 + flag_w1g_7 + flag_w1g_8 + flag_w1g_9 + flag_w1g_20 + flag_w1g_21 + flag_w1g_22 + flag_w1g_23 + flag_w1g_24 + flag_w1g_25 + flag_w1g_26 + flag_w1g_27 + flag_w1h1 + flag_w1h2 + flag_w1h3 + flag_w1h4 + flag_w1j1a_3 + flag_w1j2 + flag_w1k1 + flag_w1k2 + flag_w1l1 + flag_w1l2 + flag_w1n1 + flag_w1p1 + flag_w1p3 + flag_w1p4 + flag_w1p6 + flag_w1p7 + flag_w1p9 + flag_w1p10 + flag_w1p12 + flag_w1p13 + flag_w1p15 + flag_w1p16 + flag_w1p18 + flag_w1p19 + flag_w1p21 + flag_w1p22 + flag_w1p24 + flag_w1p25 + flag_w1p27 + flag_w1q1 + flag_w1q2 + flag_w1t1 + flag_w1t2 + flag_w1t3 + flag_w1t4 + flag_w1t5 + flag_w1t6 + flag_w1t7 + flag_w1t8 + flag_w1t9 + flag_w1t10 + flag_w1t11 + flag_w1u1 + flag_w1u4 + flag_w1v1 + flag_w1v3 + flag_w1v5 + flag_w1v7 + flag_w1v9 + flag_w1v11 + flag_w1w2 + flag_w1w3 + flag_w1w4 + flag_w1w5 + flag_w1w7 + flag_w1w8 + flag_w1w9 + flag_w1w10 + flag_w1w12 + flag_w1w13 + flag_w1w14 + flag_w1w15) if flag_w1f8!=.

***gen voted08, edu and age

tab testw1
tab der15
tab der15, nol
gen voted08=der15
replace voted08 =voted08 -2
recode voted08 -1=1
tab voted08
logit voted08 testw1
tab voted08
tab voted08 [iw=testw1 ]
tab voted08 [iw=testw1^testw1  ]
tab voted08 [iw=1+testw1 ]
tab voted08
gen test2w1=testw1
replace test2w1=1 if testw1>1
tab test2w1
tab voted08
logit voted08 test2w1
tab voted08
tab voted08 [iw=test2]
tab voted08 [iw=1+test2]
tab voted08 [iw=test2^test2]
tab voted08
tab voted08 [iw=ln(test2)]
tab voted08 [iw=1+ ln(test2)]
tab voted08 [iw=2+ ln(test2)]
tab voted08 [iw=test2^test2^test2]
tab voted08
tab  der02
logit voted08 test2w1  der02
gen age= der02
gen age_sq= der02*der02
logit voted08 test2w1  age age_sq
logit voted08  age age_sq
logit voted08  age age_sq [iw=1+test]
logit voted08  age age_sq [iw=1+test2]
tab  der05
gen edu
gen edu= der06
gen edu_age=age*edu
tab voted08  [iw=(1+testw1)/1.49]
save "C:\Users\Deuta\Desktop\anes08_09_half_w1_to_w6-2.dta"
***Gen final weight which builds on testw1 with the full variation but reduces the sample to the initial N
gen test3=(1+testw1)/1.49
tab test3
sum test3

***Various exploratory tests
tab voted08  [iw= test3]
tab voted08
tab voted08  [iw=  wgtpp11]
tab voted if test3!=.
tab voted [iw=test3]
tab  derw1b1
tab rqpol
gen interest=rqpol
replace interest -9=.
recode interest -9=.
recode interest -8=.
recode interest -7=.
recode interest -5=.
tab interest
tab interest [iw=test3]
tab rqpol
tab rqpol if test3!=.
tab rqpol if rqpol>-4
tab interest [iw=test3]
reg interest test3
tab interest test3
corr interest test3
***No real corrs b/w test3 and interest, unlike in other surveys

tab  der21
tab der21 [iw=test3]
tab1  derw1b2 derw1b3
tab  derw2b2
tab   derw2fcg
tab  derw9b2
tab  derw9d1

tab  der09w11
tab  der09w11 [iw=test3]
tab der10
tab der10 [iw=test3] if der10!=-1
tab der10 if der10!=-1
tab der10 if der10!=-1, if age>40
tab der10 if der10!=-1 if age>40
tab der10 if der10!=-1 & age>40
tab der10 [iw=test3] if der10!=-1 & age>40
tab der10 if der10!=-1 & test3!=. & age>40
tab der10 if der10!=-1 & test3!=. & age<40
tab der10 if der10!=-1  & age<40 [iw=test3]
tab der10 if der10!=-1 & age>40 [iw=test3]
tab der10 if der10!=-1 & age>40 & test3!=.

***Some correlations with age -- it reduces bias for under 40.
corr test3 age
reg test3 age age_sq
reg test3 edu
reg test3 age age_sq edu edu_age
reg test3 age age_sq

***no correlations with gender
tab der01
tab der01, nol
corr der01 test3
corr der01 test3, sig
pwcorr der01 test3, sig
gen male=der01
replace male 2=0
recode male 2=0
corr male test3


****Results:
probit voted08  age age_sq edu edu_age [iw=test3]
probit voted08  age age_sq edu edu_age if test3!=. [iw= wgtcs01]
probit voted08  age age_sq edu edu_age if test3!=. [iw= wgtcs11]
probit voted08  age age_sq edu edu_age if test3!=. [iw=  wgtl11]
probit voted08  age age_sq edu edu_age if test3!=. [iw=   wgtc11]
probit voted08  age age_sq edu edu_age if test3!=. [iw=   wgte11]
probit voted08  age age_sq edu edu_age if test3!=. [iw=    wgtpp11]
probit voted08  age age_sq edu edu_age if test3!=.

use "C:\Users\Deuta\Desktop\anes08_09_half_w1_to_w6-3.dta", clear
probit voted08  interest age age_sq edu edu_age [iw=test3]
probit voted08  interest age age_sq edu edu_age if test3!=. [iw= wgtcs01]
probit voted08 interest age age_sq edu edu_age if test3!=. [iw= wgtcs11]
probit voted08  interest age age_sq edu edu_age if test3!=. [iw=  wgtl11]
probit voted08 interest age age_sq edu edu_age if test3!=. [iw=   wgtc11]
probit voted08 interest age age_sq edu edu_age if test3!=. [iw=   wgte11]
probit voted08 interest age age_sq edu edu_age if test3!=. [iw=    wgtpp11]
probit voted08 interest age age_sq edu edu_age if test3!=.
tab w1h1
tab interest
probit voted08 w1h1 interest age age_sq edu edu_age [iw=  wgtl11] if w1h1>-6
probit voted08 w1h1 age age_sq edu edu_age [iw=  wgtl11] if w1h1>-6
probit voted08 w1h1 age age_sq edu edu_age [iw= test3] if w1h1>-6


***Seems that in this sample, test3 is correlated with age and age square; perhaps this is why it performs better for thsoe variables
reg test3 age age_sq
reg test3 edu
reg test3 age age_sq edu_age
reg test3 age age_sq edu edu_age
