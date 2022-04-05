


*********
ANTIPARTIDÁRIO
*********

IF  (p42a = 0 & p42b = 0 & p42c = 0 & p42d = 0 & p42e = 0 & p42f = 0) AntiPartidário=1.
EXECUTE.




*********
ANTIPT
*********

IF  (p42a = 0 & p42b > 1 & p42c > 1 & p42d > 1 & p42e > 1 & p42f > 1) AntiPT=1.
EXECUTE.



*********
ANTIPDT
*********

IF  (p42b = 0 & p42a > 1 & p42c > 1 & p42d > 1 & p42e > 1 & p42f > 1) AntiPDT=1.
EXECUTE.



*********
ANTIPSDB
*********

IF  (p42c = 0 & p42b > 1 & p42a > 1 & p42d > 1 & p42e > 1 & p42f > 1) AntiPSDB=1.
EXECUTE.




*********
ANTIPFL
*********

IF  (p42d = 0 & p42b > 1 & p42c > 1 & p42a > 1 & p42e > 1 & p42f > 1) AntiPFL=1.
EXECUTE.




*********
ANTIPMDB
*********

IF  (p42e = 0 & p42b > 1 & p42c > 1 & p42d > 1 & p42a > 1 & p42f > 1) AntiPMDB=1.
EXECUTE.


*********
ANTIPTB
*********

IF  (p42f = 0 & p42b > 1 & p42c > 1 & p42d > 1 & p42e > 1 & p42a > 1) AntiPTB=1.
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










*********
PARTIDÁRIO NEGATIVO
********

IF  (p42a = 0 & p42b = 0) PN=1.
EXECUTE.

IF  (p42a = 0 & p42c = 0) PN=1.
EXECUTE.

IF  (p42a = 0 & p42d = 0) PN=1.
EXECUTE.

IF  (p42a = 0 & p42e = 0) PN=1.
EXECUTE.

IF  (p42a = 0 & p42f = 0) PN=1.
EXECUTE.

IF  (p42b = 0 & p42c = 0) PN=1.
EXECUTE.

IF  (p42b = 0 & p42d = 0) PN=1.
EXECUTE.

IF  (p42b = 0 & p42e = 0) PN=1.
EXECUTE.

IF  (p42b = 0 & p42f = 0) PN=1.
EXECUTE.

IF  (p42c = 0 & p42d = 0) PN=1.
EXECUTE.

IF  (p42c = 0 & p42e = 0) PN=1.
EXECUTE.

IF  (p42c = 0 & p42f = 0) PN=1.
EXECUTE.

IF  (p42d = 0 & p42e = 0) PN=1.
EXECUTE.

IF  (p42d = 0 & p42f = 0) PN=1.
EXECUTE.

IF  (p42e = 0 & p42f = 0) PN=1.
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


IF  (p42a = 0 & p42b = 0) PN_PT=1.
EXECUTE.

IF  (p42a = 0 & p42c = 0) PN_PT=1.
EXECUTE.

IF  (p42a = 0 & p42d = 0) PN_PT=1.
EXECUTE.

IF  (p42a = 0 & p42e = 0) PN_PT=1.
EXECUTE.

IF  (p42a = 0 & p42f = 0) PN_PT=1.
EXECUTE.




*********
PARTIDÁRIO NEGATIVO PDT
*********


IF  (p42b = 0 & p42a = 0) PN_PDT=2.
EXECUTE.

IF  (p42b = 0 & p42c = 0) PN_PDT=2.
EXECUTE.

IF  (p42b = 0 & p42d = 0) PN_PDT=2.
EXECUTE.

IF  (p42b = 0 & p42e = 0) PN_PDT=2.
EXECUTE.

IF  (p42b = 0 & p42f = 0) PN_PDT=2.
EXECUTE.





*********
PARTIDÁRIO NEGATIVO PSDB
*********


IF  (p42c = 0 & p42a = 0) PN_PSDB=3.
EXECUTE.

IF  (p42c = 0 & p42b = 0) PN_PSDB=3.
EXECUTE.

IF  (p42c = 0 & p42d = 0) PN_PSDB=3.
EXECUTE.

IF  (p42c = 0 & p42e = 0) PN_PSDB=3.
EXECUTE.

IF  (p42c = 0 & p42f = 0) PN_PSDB=3.
EXECUTE.





*********
PARTIDÁRIO NEGATIVO PFL
*********


IF  (p42d = 0 & p42a = 0) PN_PFL=4.
EXECUTE.

IF  (p42d = 0 & p42b = 0) PN_PFL=4.
EXECUTE.

IF  (p42d = 0 & p42c = 0) PN_PFL=4.
EXECUTE.

IF  (p42d = 0 & p42e = 0) PN_PFL=4.
EXECUTE.

IF  (p42d = 0 & p42f = 0) PN_PFL=4.
EXECUTE.





*********
PARTIDÁRIO NEGATIVO PMDB
*********


IF  (p42e = 0 & p42a = 0) PN_PMDB=5.
EXECUTE.

IF  (p42e = 0 & p42b = 0) PN_PMDB=5.
EXECUTE.

IF  (p42e = 0 & p42c = 0) PN_PMDB=5.
EXECUTE.

IF  (p42e = 0 & p42d = 0) PN_PMDB=5.
EXECUTE.

IF  (p42e = 0 & p42f = 0) PN_PMDB=5.
EXECUTE.




*********
PARTIDÁRIO NEGATIVO PTB
*********


IF  (p42f = 0 & p42a = 0) PN_PTB=6.
EXECUTE.

IF  (p42f = 0 & p42b = 0) PN_PTB=6.
EXECUTE.

IF  (p42f = 0 & p42c = 0) PN_PTB=6.
EXECUTE.

IF  (p42f = 0 & p42d = 0) PN_PTB=6.
EXECUTE.

IF  (p42f = 0 & p42e = 0) PN_PTB=6.
EXECUTE.




Add Value Labels
PN_PT PN_PDT PN_PSDB PN_PFL PN_PMDB PN_PTB
1 PT
2 PDT
3 PSDB
4 PFL
5 PMDB
6 PTB.

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
PART NEGA PT
******


IF  (Part = 3) PN_PT=1.
EXECUTE.

IF  (Part = 4) PN_PDT=2.
EXECUTE.

IF  (Part = 5) PN_PSDB=3.
EXECUTE.

IF  (Part = 6) PN_PFL=4.
EXECUTE.

IF  (Part = 7) PN_PMDB=5.
EXECUTE.

IF  (Part = 8) PN_PTB=6.
EXECUTE.















IF  (p42a <= 4 & p42b > 4 & p42c > 4 & p42d > 4 & p42e > 4 & p42f > 4) PT3=1.
EXECUTE.



IF  (p42b = 0 & p42a ~= 0 & p42c ~= 0 & p42d ~= 0 & p42e ~= 0 & p42f ~= 0) PDT=1.
EXECUTE.




IF  (p42c = 0 & p42b ~= 0 & p42a ~= 0 & p42d ~= 0 & p42e ~= 0 & p42f ~= 0) PSDB=1.
EXECUTE.




IF  (p42d = 0 & p42b ~= 0 & p42c ~= 0 & p42a ~= 0 & p42e ~= 0 & p42f ~= 0) DEM=1.
EXECUTE.




IF  (p42e = 0 & p42b ~= 0 & p42c ~= 0 & p42d ~= 0 & p42a ~= 0 & p42f ~= 0) PMDB=1.
EXECUTE.




IF  (p42f = 0 & p42b ~= 0 & p42c ~= 0 & p42d ~= 0 & p42e ~= 0 & p42a ~= 0) PTB=1.
EXECUTE.



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=PT PDT PSDB DEM PMDB PTB DISPLAY=LABEL
  /TABLE PT [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + PDT [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    PSDB [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + DEM [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + PMDB 
    [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + PTB [C][COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=PT PDT PSDB DEM PMDB PTB ORDER=A KEY=VALUE EMPTY=EXCLUDE.

DATASET ACTIVATE Conjunto_de_dados1.
COMPUTE aa=p10 > 4.
EXECUTE.



*******
SEXO
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=p158 PN_PT DISPLAY=LABEL
  /TABLE p158 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=p158 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.





*******
Escolaridade
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=escolar PN_PT DISPLAY=LABEL
  /TABLE escolar [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=escolar ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.








*******
idade
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=idade PN_PT DISPLAY=LABEL
  /TABLE idade [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=idade ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.






*******
Renda
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Renda_FAM PN_PT DISPLAY=LABEL
  /TABLE Renda_FAM [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=Renda_FAM ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.


*******
Região
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=estrato PN_PT DISPLAY=LABEL
  /TABLE estrato [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=estrato ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.






*******
Ideologia
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=p50v1 PN_PT DISPLAY=LABEL
  /TABLE p50v1 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=p50v1 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.








*******
Gosta Partido
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=p35 PN_PT DISPLAY=LABEL
  /TABLE p35 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=p35 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.







*******
Partido Gosta MAis
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=p37 PN_PT DISPLAY=LABEL
  /TABLE p37 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=p37 ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.




*******
Avaliação Governo
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=p18 PN_PT DISPLAY=LABEL
  /TABLE p18 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=p18 ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.












**********
REGR 2002
******


NOMREG AntiPT (BASE=FIRST ORDER=ASCENDING) BY p158 escolar idade estrato p35 Ava
  /CRITERIA CIN(95) DELTA(0) MXITER(100) MXSTEP(5) CHKSEP(20) LCONVERGE(0) PCONVERGE(0.000001) 
    SINGULAR(0.00000001)
  /MODEL
  /STEPWISE=PIN(.05) POUT(0.1) MINEFFECT(0) RULE(SINGLE) ENTRYMETHOD(LR) REMOVALMETHOD(LR)
  /INTERCEPT=INCLUDE
  /PRINT=PARAMETER SUMMARY LRT CPS STEP MFI.







DATASET ACTIVATE Conjunto_de_dados2.
RECODE p18 (4=3) (99=77) (ELSE=Copy) INTO Ava.
EXECUTE.
