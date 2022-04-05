







*********
PARTIDÁRIO NEGATIVO
********

IF  (v53 = 0 & v54 = 0) PN=1.
EXECUTE.

IF  (v53 = 0 & v55 = 0) PN=1.
EXECUTE.

IF  (v53 = 0 & v56 = 0) PN=1.
EXECUTE.

IF  (v53 = 0 & v57 = 0) PN=1.
EXECUTE.

IF  (v53 = 0 & v58 = 0) PN=1.
EXECUTE.

IF  (v53 = 0 & v59 = 0) PN=1.
EXECUTE.

IF  (v53 = 0 & v60 = 0) PN=1.
EXECUTE.




IF  (v54 = 0 & v55 = 0) PN=1.
EXECUTE.

IF  (v54 = 0 & v56 = 0) PN=1.
EXECUTE.

IF  (v54 = 0 & v57 = 0) PN=1.
EXECUTE.

IF  (v54 = 0 & v58 = 0) PN=1.
EXECUTE.


IF  (v54 = 0 & v59 = 0) PN=1.
EXECUTE.

IF  (v54 = 0 & v60 = 0) PN=1.
EXECUTE.





IF  (v55 = 0 & v56 = 0) PN=1.
EXECUTE.

IF  (v55 = 0 & v57 = 0) PN=1.
EXECUTE.

IF  (v55 = 0 & v58 = 0) PN=1.
EXECUTE.


IF  (v55 = 0 & v59 = 0) PN=1.
EXECUTE.

IF  (v55 = 0 & v60 = 0) PN=1.
EXECUTE.





IF  (v56 = 0 & v57 = 0) PN=1.
EXECUTE.

IF  (v56 = 0 & v58 = 0) PN=1.
EXECUTE.


IF  (v56 = 0 & v59 = 0) PN=1.
EXECUTE.

IF  (v56 = 0 & v60 = 0) PN=1.
EXECUTE.




IF  (v57 = 0 & v58 = 0) PN=1.
EXECUTE.


IF  (v57 = 0 & v59 = 0) PN=1.
EXECUTE.

IF  (v57 = 0 & v60 = 0) PN=1.
EXECUTE.



IF  (v58 = 0 & v59 = 0) PN=1.
EXECUTE.

IF  (v58 = 0 & v60 = 0) PN=1.
EXECUTE.



IF  (v59 = 0 & v60 = 0) PN=1.
EXECUTE.






*********************
PN2
********************


COMPUTE PN2=PN.
EXECUTE.

IF  (AntiPartidário = 1 & PN = 1) PN2=0.
EXECUTE.


RECODE PN2 (SYSMIS=0).
EXECUTE.


RECODE AntiPT (SYSMIS=0).
EXECUTE.

RECODE AntiPartidário (SYSMIS=0).
EXECUTE.









*********
PARTIDÁRIO NEGATIVO PT
*********


IF  (v53 = 0 & v54 = 0) PN_PT=1.
EXECUTE.

IF  (v53 = 0 & v55 = 0) PN_PT=1.
EXECUTE.

IF  (v53 = 0 & v56 = 0) PN_PT=1.
EXECUTE.

IF  (v53 = 0 & v57 = 0) PN_PT=1.
EXECUTE.

IF  (v53 = 0 & v58 = 0) PN_PT=1.
EXECUTE.

IF  (v53 = 0 & v59 = 0) PN_PT=1.
EXECUTE.

IF  (v53 = 0 & v60 = 0) PN_PT=1.
EXECUTE.




*********
PARTIDÁRIO NEGATIVO PMDB
*********


IF  (v54 = 0 & v53 = 0) PN_PMDB=2.
EXECUTE.

IF  (v54 = 0 & v55 = 0) PN_PMDB=2.
EXECUTE.

IF  (v54 = 0 & v56 = 0) PN_PMDB=2.
EXECUTE.

IF  (v54 = 0 & v57 = 0) PN_PMDB=2.
EXECUTE.

IF  (v54 = 0 & v58 = 0) PN_PMDB=2.
EXECUTE.


IF  (v54 = 0 & v59 = 0) PN_PMDB=2.
EXECUTE.

IF  (v54 = 0 & v60 = 0) PN_PMDB=2.
EXECUTE.


*********
PARTIDÁRIO NEGATIVO PDT
*********


IF  (v55 = 0 & v53 = 0) PN_PDT=3.
EXECUTE.

IF  (v55 = 0 & v54 = 0) PN_PDT=3.
EXECUTE.

IF  (v55 = 0 & v56 = 0) PN_PDT=3.
EXECUTE.

IF  (v55 = 0 & v57 = 0) PN_PDT=3.
EXECUTE.

IF  (v55 = 0 & v58 = 0) PN_PDT=3.
EXECUTE.

IF  (v55 = 0 & v59 = 0) PN_PDT=3.
EXECUTE.

IF  (v55 = 0 & v60 = 0) PN_PDT=3.
EXECUTE.



*********
PARTIDÁRIO NEGATIVO PTB
*********


IF  (v56 = 0 & v53 = 0) PN_PTB=4.
EXECUTE.

IF  (v56 = 0 & v54 = 0) PN_PTB=4.
EXECUTE.

IF  (v56 = 0 & v55 = 0) PN_PTB=4.
EXECUTE.

IF  (v56 = 0 & v57 = 0) PN_PTB=4.
EXECUTE.

IF  (v56 = 0 & v58 = 0) PN_PTB=4.
EXECUTE.

IF  (v56 = 0 & v59 = 0) PN_PTB=4.
EXECUTE.

IF  (v56 = 0 & v60 = 0) PN_PTB=4.
EXECUTE.



*********
PARTIDÁRIO NEGATIVO PSDB
*********


IF  (v57 = 0 & v53 = 0) PN_PSDB=5.
EXECUTE.

IF  (v57 = 0 & v54 = 0) PN_PSDB=5.
EXECUTE.

IF  (v57 = 0 & v55 = 0) PN_PSDB=5.
EXECUTE.

IF  (v57 = 0 & v56 = 0) PN_PSDB=5.
EXECUTE.

IF  (v57 = 0 & v58 = 0) PN_PSDB=5.
EXECUTE.

IF  (v57 = 0 & v59 = 0) PN_PSDB=5.
EXECUTE.

IF  (v57 = 0 & v60 = 0) PN_PSDB=5.
EXECUTE.


*********
PARTIDÁRIO NEGATIVO PV
*********


IF  (v58 = 0 & v53 = 0) PN_PV=6.
EXECUTE.

IF  (v58 = 0 & v54 = 0) PN_PV=6.
EXECUTE.

IF  (v58 = 0 & v55 = 0) PN_PV=6.
EXECUTE.

IF  (v58 = 0 & v56 = 0) PN_PV=6.
EXECUTE.

IF  (v58 = 0 & v57 = 0) PN_PV=6.
EXECUTE.

IF  (v58 = 0 & v59 = 0) PN_PV=6.
EXECUTE.

IF  (v58 = 0 & v60 = 0) PN_PV=6.
EXECUTE.



*********
PARTIDÁRIO NEGATIVO DEM
*********


IF  (v59 = 0 & v53 = 0) PN_DEM=7.
EXECUTE.

IF  (v59 = 0 & v54 = 0) PN_DEM=7.
EXECUTE.

IF  (v59 = 0 & v55 = 0) PN_DEM=7.
EXECUTE.

IF  (v59 = 0 & v56 = 0) PN_DEM=7.
EXECUTE.

IF  (v59 = 0 & v57 = 0) PN_DEM=7.
EXECUTE.

IF  (v59 = 0 & v58 = 0) PN_DEM=7.
EXECUTE.

IF  (v59 = 0 & v60 = 0) PN_DEM=7.
EXECUTE.



*********
PARTIDÁRIO NEGATIVO PSOL
*********


IF  (v60 = 0 & v53 = 0) PN_PSOL=8.
EXECUTE.

IF  (v60 = 0 & v54 = 0) PN_PSOL=8.
EXECUTE.

IF  (v60 = 0 & v55 = 0) PN_PSOL=8.
EXECUTE.

IF  (v60 = 0 & v56 = 0) PN_PSOL=8.
EXECUTE.

IF  (v60 = 0 & v57 = 0) PN_PSOL=8.
EXECUTE.


IF  (v60 = 0 & v58 = 0) PN_PSOL=8.
EXECUTE.

IF  (v60 = 0 & v59 = 0) PN_PSOL=8.
EXECUTE.





Add Value Labels
PN_PT PN_PMDB PN_PDT PN_PTB PN_PSDB PN_PV PN_DEM PN_PSOL
1 PT
2 PMDB
3 PDT
4 PTB
5 PSDB
6 PV
7 DEM
8 PSOL.





*****************
Antipartidário
*****************

IF  (v53 = 0 & v54 = 0 & v55 = 0 & v56 = 0 & v57 = 0 & v58 = 0 & v59 = 0 & v60 = 0) AntiPartidário=1.
EXECUTE.





*********
ANTIPT
*********

IF  (v53 = 0 & v54 > 0 & v55 > 0 & v56 > 0 & v57 > 0 & v58 > 0 & v59 > 0 & v60 > 0) AntiPT=1.
EXECUTE.


*********
ANTIPMDB
*********

IF  (v54 = 0 & v53 > 0 & v55 > 0 & v56 > 0 & v57 > 0 & v58 > 0 & v59 > 0 & v60 > 0) AntiPMDB=1.
EXECUTE.



*********
ANTIPDT
*********

IF  (v55 = 0 & v54 > 0 & v53 > 0 & v56 > 0 & v57 > 0 & v58 > 0 & v59 > 0 & v60 > 0) AntiPDT=1.
EXECUTE.

*********
ANTIPTB
*********

IF  (v56 = 0 & v54 > 0 & v55 > 0 & v53 > 0 & v57 > 0 & v58 > 0 & v59 > 0 & v60 > 0) AntiPTB=1.
EXECUTE.



*********
ANTIPSDB
*********

IF  (v57 = 0 & v54 > 0 & v55 > 0 & v56 > 0 & v53 > 0 & v58 > 0 & v59 > 0 & v60 > 0) AntiPSDB=1.
EXECUTE.

*********
ANTIPV
*********

IF  (v58 = 0 & v54 > 0 & v55 > 0 & v56 > 0 & v57 > 0 & v53 > 0 & v59 > 0 & v60 > 0) AntiPV=1.
EXECUTE.



*********
ANTIDEM
*********

IF  (v59 = 0 & v53 > 0 & v54 > 0 & v55 > 0 & v56 > 0 & v57 > 0 & v58 > 0 & v60 > 0) AntiDEM=1.
EXECUTE.





*********
ANTIPSOL
*********

IF  (v60 = 0 & v54 > 0 & v55 > 0 & v56 > 0 & v57 > 0 & v58 > 0 & v59 > 0 & v53 > 0) AntiPSOL=1.
EXECUTE.







*********
PARTIDO
*******

RECODE PN2 (1=1) INTO Part.
EXECUTE.

RECODE AntiPartidário (1=2) INTO Part.
EXECUTE.

RECODE AntiPT (1=3) INTO Part.
EXECUTE.

RECODE AntiPMDB (1=4) INTO Part.
EXECUTE.

RECODE AntiPDT (1=5) INTO Part.
EXECUTE.

RECODE AntiPTB (1=6) INTO Part.
EXECUTE.

RECODE AntiPSDB (1=7) INTO Part.
EXECUTE.

RECODE AntiPV (1=8) INTO Part.
EXECUTE.


RECODE AntiDEM (1=9) INTO Part.
EXECUTE.


RECODE AntiPSOL (1=10) INTO Part.
EXECUTE.


************
PARTIDO
***********

Add Value Labels
Part
1 Partidário Negativo
2 AntiPartidário
3 AntiPT
4 AntiPMDB
5 AntiPDT
6 AntiPTB
7 AntiPSDB
8 AntiPV
9 AntiDEM
10 AntiPSOL.





IF  (Part = 2) PN_PT=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PMDB=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PDT=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PTB=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PSDB=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PV=$SYSMIS.
EXECUTE.


IF  (Part = 2) PN_DEM=$SYSMIS.
EXECUTE.


IF  (Part = 2) PN_PSOL=$SYSMIS.
EXECUTE.






******
PART FOR ANTI PN SERÁ PN
******


IF  (Part = 3) PN_PT=1.
EXECUTE.



******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 4) PN_PMDB=2.
EXECUTE.


******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 5) PN_PDT=3.
EXECUTE.



******
PART FOR ANTI PN SERÁ PN
******


IF  (Part = 6) PN_PTB=4.
EXECUTE.


******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 7) PN_PSDB=5.
EXECUTE.


******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 8) PN_PV=6.
EXECUTE.




******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 9) PN_DEM=7.
EXECUTE.




******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 10) PN_PSOL=8.
EXECUTE.







*******
SEXO
******



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=SEXO PN_PT DISPLAY=LABEL
  /TABLE SEXO BY PN_PT [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=SEXO ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.







*******
Escolaridade
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=ESC PN_PT DISPLAY=LABEL
  /TABLE ESC [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=ESC ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.








*******
idade
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=FXIDADE PN_PT DISPLAY=LABEL
  /TABLE FXIDADE [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=FXIDADE ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.






*******
Renda
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=FXRENDAF PN_PT DISPLAY=LABEL
  /TABLE FXRENDAF [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=FXRENDAF ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.


*******
Região
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=REG PN_PT DISPLAY=LABEL
  /TABLE REG [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=REG ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.






*******
Ideologia
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=v79 PN_PT DISPLAY=LABEL
  /TABLE v79 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=v79 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.








*******
Gosta Partido
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=v44 PN_PT DISPLAY=LABEL
  /TABLE v44 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=v44 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.







*******
Partido Gosta MAis
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=v45 PN_PT DISPLAY=LABEL
  /TABLE v45 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=v45 ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.




*******
Avaliação Governo
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=v39 PN_PT DISPLAY=LABEL
  /TABLE v39 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=v39 ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.








**********
REGR 2010
******


NOMREG AntiPT (BASE=FIRST ORDER=ASCENDING) BY SEXO ESC FXIDADE REG v44 v39
  /CRITERIA CIN(95) DELTA(0) MXITER(100) MXSTEP(5) CHKSEP(20) LCONVERGE(0) PCONVERGE(0.000001) 
    SINGULAR(0.00000001)
  /MODEL
  /STEPWISE=PIN(.05) POUT(0.1) MINEFFECT(0) RULE(SINGLE) ENTRYMETHOD(LR) REMOVALMETHOD(LR)
  /INTERCEPT=INCLUDE
  /PRINT=PARAMETER SUMMARY LRT CPS STEP MFI.









