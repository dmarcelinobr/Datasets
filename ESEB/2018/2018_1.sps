




IF  (Q1501 <= 0 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PT3=1.
EXECUTE.


RECODE PT3 (SYSMIS=0).
EXECUTE. 

IF  (Q1502 <= 0 & Q1501 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) MDB=1.
EXECUTE.


RECODE MDB (SYSMIS=0).
EXECUTE. 

IF  (Q1503 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PDT=1.
EXECUTE.


RECODE PDT (SYSMIS=0).
EXECUTE. 

IF  (Q1504 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PODE=1.
EXECUTE.


RECODE PODE (SYSMIS=0).
EXECUTE. 

IF  (Q1505 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PSDB=1.
EXECUTE.


RECODE PSDB (SYSMIS=0).
EXECUTE. 

IF  (Q1506 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) REDE=1.
EXECUTE.


RECODE REDE (SYSMIS=0).
EXECUTE. 

IF  (Q1507 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) DEM=1.
EXECUTE.


RECODE DEM (SYSMIS=0).
EXECUTE. 

IF  (Q1508 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PSOL=1.
EXECUTE.


RECODE PSOL (SYSMIS=0).
EXECUTE. 

IF  (Q1509 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PATRI=1.
EXECUTE.


RECODE PATRI (SYSMIS=0).
EXECUTE. 

IF  (Q1510 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) DC=1.
EXECUTE.


RECODE DC (SYSMIS=0).
EXECUTE. 

IF  (Q1511 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) NOVO=1.
EXECUTE.


RECODE NOVO (SYSMIS=0).
EXECUTE. 

IF  (Q1512 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PSL=1.
EXECUTE.


RECODE PSL (SYSMIS=0).
EXECUTE. 

IF  (Q1513 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PPL=1.
EXECUTE.


RECODE PPL (SYSMIS=0).
EXECUTE. 

IF  (Q1514 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PCdoB=1.
EXECUTE.


RECODE PCdoB (SYSMIS=0).
EXECUTE. 

IF  (Q1515 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PSTU=1.
EXECUTE.


RECODE PSTU (SYSMIS=0).
EXECUTE. 

IF  (Q1516 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PV=1.
EXECUTE.


RECODE PV (SYSMIS=0).
EXECUTE. 

IF  (Q1517 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PSB=1.
EXECUTE.


RECODE PSB (SYSMIS=0).
EXECUTE. 

IF  (Q1518 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PP=1.
EXECUTE.


RECODE PP (SYSMIS=0).
EXECUTE. 

IF  (Q1519 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PR=1.
EXECUTE.


RECODE PR (SYSMIS=0).
EXECUTE. 

IF  (Q1520 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PSD=1.
EXECUTE.


RECODE PSD (SYSMIS=0).
EXECUTE. 

IF  (Q1521 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PRB=1.
EXECUTE.


RECODE PRB (SYSMIS=0).
EXECUTE. 

IF  (Q1522 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PSC=1.
EXECUTE.


RECODE PSC (SYSMIS=0).
EXECUTE. 

IF  (Q1523 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1524 >=1 & Q1525 >=1 & Q1526 >=1) PTB=1.
EXECUTE.


RECODE PTB (SYSMIS=0).
EXECUTE. 

IF  (Q1524 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1525 >=1 & Q1526 >=1) PHS=1.
EXECUTE.


RECODE PHS (SYSMIS=0).
EXECUTE. 

IF  (Q1525 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1526 >=1) PROS=1.
EXECUTE.


RECODE PROS (SYSMIS=0).
EXECUTE. 

IF  (Q1526 <= 0 & Q1501 >= 1 & Q1502 >= 1 & Q1503 >= 1 & Q1504 >= 1 & Q1505 >=1 & Q1506 >=1 & Q1507 >=1 & Q1508 >=1 & Q1509 >=1 & Q1510 >=1 & Q1511 >=1 & Q1512 >=1 & Q1513 >=1 & Q1514 >=1 & Q1515 >=1 & Q1516 >=1 & Q1517 >=1 & Q1518 >=1 & Q1519 >=1 & Q1520 >=1 & Q1521 >=1 & Q1522 >=1 & Q1523 >=1 & Q1524 >=1 & Q1525 >=1) AVANTE=1.
EXECUTE.


RECODE AVANTE (SYSMIS=0).
EXECUTE. 




IF  (PT3 = 1 | MDB = 1 | PDT = 1 | PODE = 1 | PSDB = 1 | REDE = 1 | DEM = 1 | PSOL = 1 | PATRI = 1 | DC = 1 | NOVO = 1 | PSL = 1 | PPL = 1 | PCdoB = 1 | PSTU = 1 | PV = 1 | PSB = 1 | PP = 1 | PR = 1 | PSD = 1 | PRB = 1 | PSC = 1 | PTB = 1 | PHS = 1 | PROS = 1 | AVANTE = 1) PNeg=1.
EXECUTE.




RECODE PNeg (SYSMIS=0).
EXECUTE. 





RECODE PT3 (1=1) INTO PNeg2.
EXECUTE. 


RECODE MDB (1=2) INTO PNeg2.
EXECUTE. 


RECODE PDT (1=3) INTO PNeg2.
EXECUTE. 


RECODE PODE (1=4) INTO PNeg2.
EXECUTE. 





RECODE PSDB (1=5) INTO PNeg2.
EXECUTE. 


RECODE REDE (1=6) INTO PNeg2.
EXECUTE. 


RECODE DEM (1=7) INTO PNeg2.
EXECUTE. 


RECODE PSOL (1=8) INTO PNeg2.
EXECUTE. 


RECODE PATRI (1=9) INTO PNeg2.
EXECUTE. 


RECODE DC (1=10) INTO PNeg2.
EXECUTE. 


RECODE NOVO (1=11) INTO PNeg2.
EXECUTE. 


RECODE PSL (1=12) INTO PNeg2.
EXECUTE. 


RECODE PPL (1=13) INTO PNeg2.
EXECUTE. 


RECODE PCdoB (1=14) INTO PNeg2.
EXECUTE. 


RECODE PSTU (1=15) INTO PNeg2.
EXECUTE. 


RECODE PV (1=16) INTO PNeg2.
EXECUTE. 


RECODE PSB (1=17) INTO PNeg2.
EXECUTE. 


RECODE PP (1=18) INTO PNeg2.
EXECUTE. 


RECODE PR (1=19) INTO PNeg2.
EXECUTE. 


RECODE PSD (1=20) INTO PNeg2.
EXECUTE. 


RECODE PRB (1=21) INTO PNeg2.
EXECUTE. 


RECODE PSC (1=22) INTO PNeg2.
EXECUTE. 


RECODE PTB (1=23) INTO PNeg2.
EXECUTE. 


RECODE PHS (1=24) INTO PNeg2.
EXECUTE. 


RECODE PROS (1=25) INTO PNeg2.
EXECUTE. 


RECODE AVANTE (1=26) INTO PNeg2.
EXECUTE. 



ADD VALUE LABELS
PNeg2
1	PT
2	MDB
3	PDT
4	PODE
5	PSDB
6	REDE
7	DEM
8	PSOL
9	PATRI
10	DC
11	NOVO
12	PSL
13	PPL
14	PCdoB
15	PSTU
16	PV
17	PSB
18	PP
19	PR
20	PSD
21	PRB
22	PSC
23	PTB
24	PHS
25	PROS
26	AVANTE.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=D9B_FAIXA_RENDAF PT DISPLAY=LABEL
  /TABLE D9B_FAIXA_RENDAF BY PT [COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=D9B_FAIXA_RENDAF ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.









IF  (Q9A = 0) PT3=Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0.
EXECUTE.












IF  (Q9A = 0 & Q9B = 0) | (Q9A = 0 & Q9C = 0) | (Q9A = 0 & Q9D = 0) | (Q9A = 0 & Q9E = 0) | (Q9A = 0 & Q9F = 0) | (Q9A = 0 & Q9G = 0) | (Q9A = 0 & Q9H = 0) | (Q9A = 0 & Q9I = 0) | (Q9A = 0 & Q9J = 0) | (Q9A = 0 & Q9K = 0) | (Q9A = 0 & Q9L = 0)  PT3=0.
EXECUTE.






IF  (Q9A = 0 & Q9B = 0 & Q9C = 0 & Q9D = 0 & Q9E = 0 & Q9F = 0 & Q9G = 0 & Q9H = 0 & Q9I = 0 & Q9J = 0 & Q9K = 0 & Q9L = 0) PT5=1.
EXECUTE.



IF  (Q9A = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0) PT4=0.
EXECUTE.




IF  ((Q9A = 0 & Q9B ~= 0)  & (Q9A = 0 & Q9C ~= 0)  & (Q9A = 0 & Q9D ~= 0)  & (Q9A = 0 & Q9E ~= 0)  & (Q9A = 0 & Q9F ~= 0)  & (Q9A = 0 & Q9G ~= 0)  & (Q9A = 0 & Q9H ~= 0)  & (Q9A = 0 & Q9I ~= 0)  & (Q9A = 0 & Q9J ~= 0)  & (Q9A = 0 & Q9K ~= 0)  & (Q9A = 0 & Q9L ~= 0) ) PT9=0.
EXECUTE.


IF  ((Q9A = 0 & Q9B = 0)  | (Q9A = 0 & Q9C = 0)  | (Q9A = 0 & Q9D = 0)  | (Q9A = 0 & Q9E = 0)  | (Q9A = 0 & Q9F = 0)  | (Q9A = 0 & Q9G = 0)  | (Q9A = 0 & Q9H = 0)  | (Q9A = 0 & Q9I = 0)  | (Q9A = 0 & Q9J = 0)  | (Q9A = 0 & Q9K = 0)  | (Q9A = 0 & Q9L = 0) ) PT9=1.
EXECUTE.


