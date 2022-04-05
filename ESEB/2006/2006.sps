




*********
PARTIDÁRIO NEGATIVO
********

IF  (eseb15a = 0 & eseb15b = 0) PN=1.
EXECUTE.

IF  (eseb15a = 0 & eseb15c = 0) PN=1.
EXECUTE.

IF  (eseb15a = 0 & eseb15d = 0) PN=1.
EXECUTE.

IF  (eseb15a = 0 & eseb15e = 0) PN=1.
EXECUTE.

IF  (eseb15a = 0 & eseb15f = 0) PN=1.
EXECUTE.

IF  (eseb15b = 0 & eseb15c = 0) PN=1.
EXECUTE.

IF  (eseb15b = 0 & eseb15d = 0) PN=1.
EXECUTE.

IF  (eseb15b = 0 & eseb15e = 0) PN=1.
EXECUTE.

IF  (eseb15b = 0 & eseb15f = 0) PN=1.
EXECUTE.

IF  (eseb15c = 0 & eseb15d = 0) PN=1.
EXECUTE.

IF  (eseb15c = 0 & eseb15e = 0) PN=1.
EXECUTE.

IF  (eseb15c = 0 & eseb15f = 0) PN=1.
EXECUTE.

IF  (eseb15d = 0 & eseb15e = 0) PN=1.
EXECUTE.

IF  (eseb15d = 0 & eseb15f = 0) PN=1.
EXECUTE.

IF  (eseb15e = 0 & eseb15f = 0) PN=1.
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


IF  (eseb15a = 0 & eseb15b = 0) PN_PT=1.
EXECUTE.

IF  (eseb15a = 0 & eseb15c = 0) PN_PT=1.
EXECUTE.

IF  (eseb15a = 0 & eseb15d = 0) PN_PT=1.
EXECUTE.

IF  (eseb15a = 0 & eseb15e = 0) PN_PT=1.
EXECUTE.

IF  (eseb15a = 0 & eseb15f = 0) PN_PT=1.
EXECUTE.




*********
PARTIDÁRIO NEGATIVO PDT
*********


IF  (eseb15b = 0 & eseb15a = 0) PN_PDT=2.
EXECUTE.

IF  (eseb15b = 0 & eseb15c = 0) PN_PDT=2.
EXECUTE.

IF  (eseb15b = 0 & eseb15d = 0) PN_PDT=2.
EXECUTE.

IF  (eseb15b = 0 & eseb15e = 0) PN_PDT=2.
EXECUTE.

IF  (eseb15b = 0 & eseb15f = 0) PN_PDT=2.
EXECUTE.





*********
PARTIDÁRIO NEGATIVO PSDB
*********


IF  (eseb15c = 0 & eseb15a = 0) PN_PSDB=3.
EXECUTE.

IF  (eseb15c = 0 & eseb15b = 0) PN_PSDB=3.
EXECUTE.

IF  (eseb15c = 0 & eseb15d = 0) PN_PSDB=3.
EXECUTE.

IF  (eseb15c = 0 & eseb15e = 0) PN_PSDB=3.
EXECUTE.

IF  (eseb15c = 0 & eseb15f = 0) PN_PSDB=3.
EXECUTE.





*********
PARTIDÁRIO NEGATIVO PFL
*********


IF  (eseb15d = 0 & eseb15a = 0) PN_PFL=4.
EXECUTE.

IF  (eseb15d = 0 & eseb15b = 0) PN_PFL=4.
EXECUTE.

IF  (eseb15d = 0 & eseb15c = 0) PN_PFL=4.
EXECUTE.

IF  (eseb15d = 0 & eseb15e = 0) PN_PFL=4.
EXECUTE.

IF  (eseb15d = 0 & eseb15f = 0) PN_PFL=4.
EXECUTE.





*********
PARTIDÁRIO NEGATIVO PMDB
*********


IF  (eseb15e = 0 & eseb15a = 0) PN_PMDB=5.
EXECUTE.

IF  (eseb15e = 0 & eseb15b = 0) PN_PMDB=5.
EXECUTE.

IF  (eseb15e = 0 & eseb15c = 0) PN_PMDB=5.
EXECUTE.

IF  (eseb15e = 0 & eseb15d = 0) PN_PMDB=5.
EXECUTE.

IF  (eseb15e = 0 & eseb15f = 0) PN_PMDB=5.
EXECUTE.




*********
PARTIDÁRIO NEGATIVO PTB
*********


IF  (eseb15f = 0 & eseb15a = 0) PN_PTB=6.
EXECUTE.

IF  (eseb15f = 0 & eseb15b = 0) PN_PTB=6.
EXECUTE.

IF  (eseb15f = 0 & eseb15c = 0) PN_PTB=6.
EXECUTE.

IF  (eseb15f = 0 & eseb15d = 0) PN_PTB=6.
EXECUTE.

IF  (eseb15f = 0 & eseb15e = 0) PN_PTB=6.
EXECUTE.




Add Value Labels
PN_PT PN_PDT PN_PSDB PN_PFL PN_PMDB PN_PTB
1 PT
2 PDT
3 PSDB
4 PFL
5 PMDB
6 PTB.




*********
PARTIDO
*******

RECODE PN2 (1=1) INTO Part.
EXECUTE.

RECODE AntiPartidário (1=2) INTO Part.
EXECUTE.

RECODE AntiPT (1=3) INTO Part.
EXECUTE.

RECODE AntiPDT (1=4) INTO Part.
EXECUTE.

RECODE AntiPSDB (1=5) INTO Part.
EXECUTE.

RECODE AntiPFL (1=6) INTO Part.
EXECUTE.

RECODE AntiPMDB (1=7) INTO Part.
EXECUTE.

RECODE AntiPTB (1=8) INTO Part.
EXECUTE.




************
PARTIDO
***********

Add Value Labels
Part
1 Partidário Negativo
2 Antipartidário
3 AntiPT
4 AntiPDT
5 AntiPSDB
6 AntiPFL
7 AntiPMDB
8 AntiPTB.



IF  (Part = 2) PN_PT=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PDT=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PSDB=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PFL=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PMDB=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PTB=$SYSMIS.
EXECUTE.




******
PART FOR ANTI PN SERÁ PN
******


IF  (Part = 3) PN_PT=1.
EXECUTE.



******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 4) PN_PDT=2.
EXECUTE.



******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 5) PN_PSDB=3.
EXECUTE.



******
PART FOR ANTI PN SERÁ PN
******


IF  (Part = 6) PN_PFL=4.
EXECUTE.



******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 7) PN_PMDB=5.
EXECUTE.


******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 8) PN_PTB=6.
EXECUTE.








*****************
Antipartidário
*****************

IF  (eseb15a = 0 & eseb15b = 0 & eseb15c = 0 & eseb15d = 0 & eseb15e = 0 & eseb15f = 0) AntiPartidário=1.
EXECUTE.





*********
ANTIPT
*********

IF  (eseb15a = 0 & eseb15b > 0 & eseb15c > 0 & eseb15d > 0 & eseb15e > 0 & eseb15f > 0) AntiPT=1.
EXECUTE.



*********
ANTIPDT
*********

IF  (eseb15b = 0 & eseb15a > 0 & eseb15c > 0 & eseb15d > 0 & eseb15e > 0 & eseb15f > 0) AntiPDT=1.
EXECUTE.



*********
ANTIPSDB
*********

IF  (eseb15c = 0 & eseb15b > 0 & eseb15a > 0 & eseb15d > 0 & eseb15e > 0 & eseb15f > 0) AntiPSDB=1.
EXECUTE.

*********
ANTIPFL
*********

IF  (eseb15d = 0 & eseb15b > 0 & eseb15c > 0 & eseb15a > 0 & eseb15e > 0 & eseb15f > 0) AntiPFL=1.
EXECUTE.

*********
ANTIPMDB
*********

IF  (eseb15e = 0 & eseb15b > 0 & eseb15c > 0 & eseb15d > 0 & eseb15a > 0 & eseb15f > 0) AntiPMDB=1.
EXECUTE.

*********
ANTIPTB
*********

IF  (eseb15f = 0 & eseb15b > 0 & eseb15c > 0 & eseb15d > 0 & eseb15e > 0 & eseb15a > 0) AntiPTB=1.
EXECUTE.









*******
SEXO
******



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=sexo PN_PT DISPLAY=LABEL
  /TABLE sexo BY PN_PT [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=sexo ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.







*******
Escolaridade
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=instru PN_PT DISPLAY=LABEL
  /TABLE instru [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=instru ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.








*******
idade
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=faixa PN_PT DISPLAY=LABEL
  /TABLE faixa [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=faixa ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.






*******
Renda
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=renda1 PN_PT DISPLAY=LABEL
  /TABLE renda1 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=renda1 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.






*******
Região
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=regiao PN_PT DISPLAY=LABEL
  /TABLE regiao [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=regiao ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.






*******
Ideologia
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=eseb19 PN_PT DISPLAY=LABEL
  /TABLE eseb19 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=eseb19 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.








*******
Gosta Partido
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=eseb11 PN_PT DISPLAY=LABEL
  /TABLE eseb11 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=eseb11 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.







*******
Partido Gosta MAis
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=eseb12a PN_PT DISPLAY=LABEL
  /TABLE eseb12a [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=eseb12a ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.




*******
Avaliação Governo
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=eseb6 PN_PT DISPLAY=LABEL
  /TABLE eseb6 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=eseb6 ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.













**********
REGR 2006
******


NOMREG AntiPT (BASE=FIRST ORDER=ASCENDING) BY sexo Escola faixa regiao eseb11 eseb6
  /CRITERIA CIN(95) DELTA(0) MXITER(100) MXSTEP(5) CHKSEP(20) LCONVERGE(0) PCONVERGE(0.000001) 
    SINGULAR(0.00000001)
  /MODEL
  /STEPWISE=PIN(.05) POUT(0.1) MINEFFECT(0) RULE(SINGLE) ENTRYMETHOD(LR) REMOVALMETHOD(LR)
  /INTERCEPT=INCLUDE
  /PRINT=PARAMETER SUMMARY LRT CPS STEP MFI.







RECODE instru (1=1) (2=2) (3=3) (4=3) (5=4) (6=4) (7=5) (8=5) INTO Escola.
VARIABLE LABELS  Escola 'Escola'.
EXECUTE.




1 Analfabeto/Primário incompleto
2 Primário completo
3 Ginásio incompleto
4 Ginásio completo
5 Colégio incompleto
6 Colégio completo
7 Universitário Incompleto
8 Universitário completo ou mais





