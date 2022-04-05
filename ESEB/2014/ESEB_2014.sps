

IF  (Q9A = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 
    0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0) PT=1.
EXECUTE.

RECODE PT (SYSMIS=0).
EXECUTE.



IF  (Q9B = 0 & Q9A ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 
    0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0) PMDB=2.
EXECUTE.

RECODE PMDB (SYSMIS=0).
EXECUTE.



IF  (Q9C = 0 & Q9B ~= 0 & Q9A ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 
    0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0) PDT=3.
EXECUTE.

RECODE PDT (SYSMIS=0).
EXECUTE.





IF  (Q9D = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9A ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 
    0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0) PTB=4.
EXECUTE.

RECODE PTB (SYSMIS=0).
EXECUTE.





IF  (Q9E = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9A ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 
    0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0) PSDB=5.
EXECUTE.

RECODE PSDB (SYSMIS=0).
EXECUTE.




IF  (Q9F = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9A ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 
    0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0) PV=6.
EXECUTE.

RECODE PV (SYSMIS=0).
EXECUTE.



IF  (Q9G = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9A ~= 0 & Q9H ~= 0 & Q9I ~= 
    0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0) DEM=7.
EXECUTE.

RECODE DEM (SYSMIS=0).
EXECUTE.




IF  (Q9H = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9A ~= 0 & Q9I ~= 
    0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0) PSOL=8.
EXECUTE.

RECODE PSOL (SYSMIS=0).
EXECUTE.




IF  (Q9I = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9A ~= 
    0 & Q9J ~= 0 & Q9K ~= 0 & Q9L ~= 0) PSB=9.
EXECUTE.

RECODE PSB (SYSMIS=0).
EXECUTE.





IF  (Q9J = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 
    0 & Q9A ~= 0 & Q9K ~= 0 & Q9L ~= 0) PR=10.
EXECUTE.

RECODE PR (SYSMIS=0).
EXECUTE.




IF  (Q9K = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 
    0 & Q9J ~= 0 & Q9A ~= 0 & Q9L ~= 0) PSC=11.
EXECUTE.

RECODE PSC (SYSMIS=0).
EXECUTE.





IF  (Q9L = 0 & Q9B ~= 0 & Q9C ~= 0 & Q9D ~= 0 & Q9E ~= 0 & Q9F ~= 0 & Q9G ~= 0 & Q9H ~= 0 & Q9I ~= 
    0 & Q9J ~= 0 & Q9K ~= 0 & Q9A ~= 0) PSD=12.
EXECUTE.

RECODE PSD (SYSMIS=0).
EXECUTE.


VALUE LABELS
PT
1 PT
/
PMDB
2 PMDB
/
PDT
3 PDT
/
PTB
4 PTB
/
PSDB
5 PSDB
/
PV
6 PV
/
DEM
7 DEM
/
PSOL
8 PSOL
/
PSB
9 PSB
/
PR
10 PR
/
PSC
11 PSC
/
PSD
12 PSD.












*********
PARTIDÁRIO NEGATIVO
********

IF  (Q9A = 0 & Q9B = 0) PN=1.
EXECUTE.

IF  (Q9A = 0 & Q9C = 0) PN=1.
EXECUTE.

IF  (Q9A = 0 & Q9D = 0) PN=1.
EXECUTE.

IF  (Q9A = 0 & Q9E = 0) PN=1.
EXECUTE.

IF  (Q9A = 0 & Q9F = 0) PN=1.
EXECUTE.

IF  (Q9A = 0 & Q9G = 0) PN=1.
EXECUTE.

IF  (Q9A = 0 & Q9H = 0) PN=1.
EXECUTE.

IF  (Q9A = 0 & Q9I = 0) PN=1.
EXECUTE.

IF  (Q9A = 0 & Q9J = 0) PN=1.
EXECUTE.

IF  (Q9A = 0 & Q9K = 0) PN=1.
EXECUTE.

IF  (Q9A = 0 & Q9L = 0) PN=1.
EXECUTE.









IF  (Q9B = 0 & Q9C = 0) PN=1.
EXECUTE.

IF  (Q9B = 0 & Q9D = 0) PN=1.
EXECUTE.

IF  (Q9B = 0 & Q9E = 0) PN=1.
EXECUTE.

IF  (Q9B = 0 & Q9F = 0) PN=1.
EXECUTE.

IF  (Q9B = 0 & Q9G = 0) PN=1.
EXECUTE.

IF  (Q9B = 0 & Q9H = 0) PN=1.
EXECUTE.

IF  (Q9B = 0 & Q9I = 0) PN=1.
EXECUTE.

IF  (Q9B = 0 & Q9J = 0) PN=1.
EXECUTE.

IF  (Q9B = 0 & Q9K = 0) PN=1.
EXECUTE.

IF  (Q9B = 0 & Q9L = 0) PN=1.
EXECUTE.




IF  (Q9C = 0 & Q9D = 0) PN=1.
EXECUTE.

IF  (Q9C = 0 & Q9E = 0) PN=1.
EXECUTE.

IF  (Q9C = 0 & Q9F = 0) PN=1.
EXECUTE.

IF  (Q9C = 0 & Q9G = 0) PN=1.
EXECUTE.

IF  (Q9C = 0 & Q9H = 0) PN=1.
EXECUTE.

IF  (Q9C = 0 & Q9I = 0) PN=1.
EXECUTE.

IF  (Q9C = 0 & Q9J = 0) PN=1.
EXECUTE.

IF  (Q9C = 0 & Q9K = 0) PN=1.
EXECUTE.

IF  (Q9C = 0 & Q9L = 0) PN=1.
EXECUTE.




IF  (Q9D = 0 & Q9E = 0) PN=1.
EXECUTE.

IF  (Q9D = 0 & Q9F = 0) PN=1.
EXECUTE.

IF  (Q9D = 0 & Q9G = 0) PN=1.
EXECUTE.

IF  (Q9D = 0 & Q9H = 0) PN=1.
EXECUTE.

IF  (Q9D = 0 & Q9I = 0) PN=1.
EXECUTE.

IF  (Q9D = 0 & Q9J = 0) PN=1.
EXECUTE.

IF  (Q9D = 0 & Q9K = 0) PN=1.
EXECUTE.

IF  (Q9D = 0 & Q9L = 0) PN=1.
EXECUTE.



IF  (Q9E = 0 & Q9F = 0) PN=1.
EXECUTE.

IF  (Q9E = 0 & Q9G = 0) PN=1.
EXECUTE.

IF  (Q9E = 0 & Q9H = 0) PN=1.
EXECUTE.

IF  (Q9E = 0 & Q9I = 0) PN=1.
EXECUTE.

IF  (Q9E = 0 & Q9J = 0) PN=1.
EXECUTE.

IF  (Q9E = 0 & Q9K = 0) PN=1.
EXECUTE.

IF  (Q9E = 0 & Q9L = 0) PN=1.
EXECUTE.





IF  (Q9F = 0 & Q9G = 0) PN=1.
EXECUTE.

IF  (Q9F = 0 & Q9H = 0) PN=1.
EXECUTE.

IF  (Q9F = 0 & Q9I = 0) PN=1.
EXECUTE.

IF  (Q9F = 0 & Q9J = 0) PN=1.
EXECUTE.

IF  (Q9F = 0 & Q9K = 0) PN=1.
EXECUTE.

IF  (Q9F = 0 & Q9L = 0) PN=1.
EXECUTE.





IF  (Q9G = 0 & Q9H = 0) PN=1.
EXECUTE.

IF  (Q9G = 0 & Q9I = 0) PN=1.
EXECUTE.

IF  (Q9G = 0 & Q9J = 0) PN=1.
EXECUTE.

IF  (Q9G = 0 & Q9K = 0) PN=1.
EXECUTE.

IF  (Q9G = 0 & Q9L = 0) PN=1.
EXECUTE.





IF  (Q9H = 0 & Q9I = 0) PN=1.
EXECUTE.

IF  (Q9H = 0 & Q9J = 0) PN=1.
EXECUTE.

IF  (Q9H = 0 & Q9K = 0) PN=1.
EXECUTE.

IF  (Q9H = 0 & Q9L = 0) PN=1.
EXECUTE.





IF  (Q9I = 0 & Q9J = 0) PN=1.
EXECUTE.

IF  (Q9I = 0 & Q9K = 0) PN=1.
EXECUTE.

IF  (Q9I = 0 & Q9L = 0) PN=1.
EXECUTE.




IF  (Q9J = 0 & Q9K = 0) PN=1.
EXECUTE.

IF  (Q9J = 0 & Q9L = 0) PN=1.
EXECUTE.





IF  (Q9K = 0 & Q9L = 0) PN=1.
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


IF  (Q9A = 0 & Q9B = 0) PN_PT=1.
EXECUTE.

IF  (Q9A = 0 & Q9C = 0) PN_PT=1.
EXECUTE.

IF  (Q9A = 0 & Q9D = 0) PN_PT=1.
EXECUTE.

IF  (Q9A = 0 & Q9E = 0) PN_PT=1.
EXECUTE.

IF  (Q9A = 0 & Q9F = 0) PN_PT=1.
EXECUTE.

IF  (Q9A = 0 & Q9G = 0) PN_PT=1.
EXECUTE.

IF  (Q9A = 0 & Q9H = 0) PN_PT=1.
EXECUTE.

IF  (Q9A = 0 & Q9I = 0) PN_PT=1.
EXECUTE.

IF  (Q9A = 0 & Q9J = 0) PN_PT=1.
EXECUTE.

IF  (Q9A = 0 & Q9K = 0) PN_PT=1.
EXECUTE.

IF  (Q9A = 0 & Q9L = 0) PN_PT=1.
EXECUTE.





*********   
PARTIDÁRIO NEGATIVO PMDB
*********


IF  (Q9B = 0 & Q9A = 0) PN_PMDB=2.
EXECUTE.

IF  (Q9B = 0 & Q9C = 0) PN_PMDB=2.
EXECUTE.

IF  (Q9B = 0 & Q9D = 0) PN_PMDB=2.
EXECUTE.

IF  (Q9B = 0 & Q9E = 0) PN_PMDB=2.
EXECUTE.

IF  (Q9B = 0 & Q9F = 0) PN_PMDB=2.
EXECUTE.

IF  (Q9B = 0 & Q9G = 0) PN_PMDB=2.
EXECUTE.

IF  (Q9B = 0 & Q9H = 0) PN_PMDB=2.
EXECUTE.

IF  (Q9B = 0 & Q9I = 0) PN_PMDB=2.
EXECUTE.

IF  (Q9B = 0 & Q9J = 0) PN_PMDB=2.
EXECUTE.

IF  (Q9B = 0 & Q9K = 0) PN_PMDB=2.
EXECUTE.

IF  (Q9B = 0 & Q9L = 0) PN_PMDB=2.
EXECUTE.






*********
PARTIDÁRIO NEGATIVO PDT
*********


IF  (Q9C = 0 & Q9A = 0) PN_PDT=3.
EXECUTE.

IF  (Q9C = 0 & Q9B = 0) PN_PDT=3.
EXECUTE.

IF  (Q9C = 0 & Q9D = 0) PN_PDT=3.
EXECUTE.

IF  (Q9C = 0 & Q9E = 0) PN_PDT=3.
EXECUTE.

IF  (Q9C = 0 & Q9F = 0) PN_PDT=3.
EXECUTE.

IF  (Q9C = 0 & Q9G = 0) PN_PDT=3.
EXECUTE.

IF  (Q9C = 0 & Q9H = 0) PN_PDT=3.
EXECUTE.

IF  (Q9C = 0 & Q9I = 0) PN_PDT=3.
EXECUTE.

IF  (Q9C = 0 & Q9J = 0) PN_PDT=3.
EXECUTE.

IF  (Q9C = 0 & Q9K = 0) PN_PDT=3.
EXECUTE.

IF  (Q9C = 0 & Q9L = 0) PN_PDT=3.
EXECUTE.





*********
PARTIDÁRIO NEGATIVO PTB
*********


IF  (Q9D = 0 & Q9A = 0) PN_PTB=4.
EXECUTE.

IF  (Q9D = 0 & Q9B = 0) PN_PTB=4.
EXECUTE.

IF  (Q9D = 0 & Q9C = 0) PN_PTB=4.
EXECUTE.

IF  (Q9D = 0 & Q9E = 0) PN_PTB=4.
EXECUTE.

IF  (Q9D = 0 & Q9F = 0) PN_PTB=4.
EXECUTE.

IF  (Q9D = 0 & Q9G = 0) PN_PTB=4.
EXECUTE.

IF  (Q9D = 0 & Q9H = 0) PN_PTB=4.
EXECUTE.

IF  (Q9D = 0 & Q9I = 0) PN_PTB=4.
EXECUTE.

IF  (Q9D = 0 & Q9J = 0) PN_PTB=4.
EXECUTE.

IF  (Q9D = 0 & Q9K = 0) PN_PTB=4.
EXECUTE.

IF  (Q9D = 0 & Q9L = 0) PN_PTB=4.
EXECUTE.


*********
PARTIDÁRIO NEGATIVO PSDB
*********


IF  (Q9E = 0 & Q9A = 0) PN_PSDB=5.
EXECUTE.

IF  (Q9E = 0 & Q9B = 0) PN_PSDB=5.
EXECUTE.

IF  (Q9E = 0 & Q9C = 0) PN_PSDB=5.
EXECUTE.

IF  (Q9E = 0 & Q9D = 0) PN_PSDB=5.
EXECUTE.

IF  (Q9E = 0 & Q9F = 0) PN_PSDB=5.
EXECUTE.

IF  (Q9E = 0 & Q9G = 0) PN_PSDB=5.
EXECUTE.

IF  (Q9E = 0 & Q9H = 0) PN_PSDB=5.
EXECUTE.

IF  (Q9E = 0 & Q9I = 0) PN_PSDB=5.
EXECUTE.

IF  (Q9E = 0 & Q9J = 0) PN_PSDB=5.
EXECUTE.

IF  (Q9E = 0 & Q9K = 0) PN_PSDB=5.
EXECUTE.

IF  (Q9E = 0 & Q9L = 0) PN_PSDB=5.
EXECUTE.




*********
PARTIDÁRIO NEGATIVO PV
*********


IF  (Q9F = 0 & Q9A = 0) PN_PV=6.
EXECUTE.

IF  (Q9F = 0 & Q9B = 0) PN_PV=6.
EXECUTE.

IF  (Q9F = 0 & Q9C = 0) PN_PV=6.
EXECUTE.

IF  (Q9F = 0 & Q9D = 0) PN_PV=6.
EXECUTE.

IF  (Q9F = 0 & Q9E = 0) PN_PV=6.
EXECUTE.

IF  (Q9F = 0 & Q9G = 0) PN_PV=6.
EXECUTE.

IF  (Q9F = 0 & Q9H = 0) PN_PV=6.
EXECUTE.

IF  (Q9F = 0 & Q9I = 0) PN_PV=6.
EXECUTE.

IF  (Q9F = 0 & Q9J = 0) PN_PV=6.
EXECUTE.

IF  (Q9F = 0 & Q9K = 0) PN_PV=6.
EXECUTE.

IF  (Q9F = 0 & Q9L = 0) PN_PV=6.
EXECUTE.




*********
PARTIDÁRIO NEGATIVO DEM
*********


IF  (Q9G = 0 & Q9A = 0) PN_DEM=7.
EXECUTE.

IF  (Q9G = 0 & Q9B = 0) PN_DEM=7.
EXECUTE.

IF  (Q9G = 0 & Q9C = 0) PN_DEM=7.
EXECUTE.

IF  (Q9G = 0 & Q9D = 0) PN_DEM=7.
EXECUTE.

IF  (Q9G = 0 & Q9E = 0) PN_DEM=7.
EXECUTE.

IF  (Q9G = 0 & Q9F = 0) PN_DEM=7.
EXECUTE.

IF  (Q9G = 0 & Q9H = 0) PN_DEM=7.
EXECUTE.

IF  (Q9G = 0 & Q9I = 0) PN_DEM=7.
EXECUTE.

IF  (Q9G = 0 & Q9J = 0) PN_DEM=7.
EXECUTE.

IF  (Q9G = 0 & Q9K = 0) PN_DEM=7.
EXECUTE.

IF  (Q9G = 0 & Q9L = 0) PN_DEM=7.
EXECUTE.



*********
PARTIDÁRIO NEGATIVO PSOL
*********


IF  (Q9H = 0 & Q9A = 0) PN_PSOL=8.
EXECUTE.

IF  (Q9H = 0 & Q9B = 0) PN_PSOL=8.
EXECUTE.

IF  (Q9H = 0 & Q9C = 0) PN_PSOL=8.
EXECUTE.

IF  (Q9H = 0 & Q9D = 0) PN_PSOL=8.
EXECUTE.

IF  (Q9H = 0 & Q9E = 0) PN_PSOL=8.
EXECUTE.

IF  (Q9H = 0 & Q9F = 0) PN_PSOL=8.
EXECUTE.

IF  (Q9H = 0 & Q9G = 0) PN_PSOL=8.
EXECUTE.

IF  (Q9H = 0 & Q9I = 0) PN_PSOL=8.
EXECUTE.

IF  (Q9H = 0 & Q9J = 0) PN_PSOL=8.
EXECUTE.

IF  (Q9H = 0 & Q9K = 0) PN_PSOL=8.
EXECUTE.

IF  (Q9H = 0 & Q9L = 0) PN_PSOL=8.
EXECUTE.





*********
PARTIDÁRIO NEGATIVO PSB
*********


IF  (Q9I = 0 & Q9A = 0) PN_PSB=9.
EXECUTE.

IF  (Q9I = 0 & Q9B = 0) PN_PSB=9.
EXECUTE.

IF  (Q9I = 0 & Q9C = 0) PN_PSB=9.
EXECUTE.

IF  (Q9I = 0 & Q9D = 0) PN_PSB=9.
EXECUTE.

IF  (Q9I = 0 & Q9E = 0) PN_PSB=9.
EXECUTE.

IF  (Q9I = 0 & Q9F = 0) PN_PSB=9.
EXECUTE.

IF  (Q9I = 0 & Q9G = 0) PN_PSB=9.
EXECUTE.

IF  (Q9I = 0 & Q9H = 0) PN_PSB=9.
EXECUTE.

IF  (Q9I = 0 & Q9J = 0) PN_PSB=9.
EXECUTE.

IF  (Q9I = 0 & Q9K = 0) PN_PSB=9.
EXECUTE.

IF  (Q9I = 0 & Q9L = 0) PN_PSB=9.
EXECUTE.



*********
PARTIDÁRIO NEGATIVO PR
*********


IF  (Q9J = 0 & Q9A = 0) PN_PR=10.
EXECUTE.

IF  (Q9J = 0 & Q9B = 0) PN_PR=10.
EXECUTE.

IF  (Q9J = 0 & Q9C = 0) PN_PR=10.
EXECUTE.

IF  (Q9J = 0 & Q9D = 0) PN_PR=10.
EXECUTE.

IF  (Q9J = 0 & Q9E = 0) PN_PR=10.
EXECUTE.

IF  (Q9J = 0 & Q9F = 0) PN_PR=10.
EXECUTE.

IF  (Q9J = 0 & Q9G = 0) PN_PR=10.
EXECUTE.

IF  (Q9J = 0 & Q9H = 0) PN_PR=10.
EXECUTE.

IF  (Q9J = 0 & Q9I = 0) PN_PR=10.
EXECUTE.

IF  (Q9J = 0 & Q9K = 0) PN_PR=10.
EXECUTE.

IF  (Q9J = 0 & Q9L = 0) PN_PR=10.
EXECUTE.



*********
PARTIDÁRIO NEGATIVO PSC
*********


IF  (Q9K = 0 & Q9A = 0) PN_PSC=11.
EXECUTE.

IF  (Q9K = 0 & Q9B = 0) PN_PSC=11.
EXECUTE.

IF  (Q9K = 0 & Q9C = 0) PN_PSC=11.
EXECUTE.

IF  (Q9K = 0 & Q9D = 0) PN_PSC=11.
EXECUTE.

IF  (Q9K = 0 & Q9E = 0) PN_PSC=11.
EXECUTE.

IF  (Q9K = 0 & Q9F = 0) PN_PSC=11.
EXECUTE.

IF  (Q9K = 0 & Q9G = 0) PN_PSC=11.
EXECUTE.

IF  (Q9K = 0 & Q9H = 0) PN_PSC=11.
EXECUTE.

IF  (Q9K = 0 & Q9I = 0) PN_PSC=11.
EXECUTE.

IF  (Q9K = 0 & Q9J = 0) PN_PSC=11.
EXECUTE.

IF  (Q9K = 0 & Q9L = 0) PN_PSC=11.
EXECUTE.



*********
PARTIDÁRIO NEGATIVO PSD
*********


IF  (Q9L = 0 & Q9A = 0) PN_PSD=12.
EXECUTE.

IF  (Q9L = 0 & Q9B = 0) PN_PSD=12.
EXECUTE.

IF  (Q9L = 0 & Q9C = 0) PN_PSD=12.
EXECUTE.

IF  (Q9L = 0 & Q9D = 0) PN_PSD=12.
EXECUTE.

IF  (Q9L = 0 & Q9E = 0) PN_PSD=12.
EXECUTE.

IF  (Q9L = 0 & Q9F = 0) PN_PSD=12.
EXECUTE.

IF  (Q9L = 0 & Q9G = 0) PN_PSD=12.
EXECUTE.

IF  (Q9L = 0 & Q9H = 0) PN_PSD=12.
EXECUTE.

IF  (Q9L = 0 & Q9I = 0) PN_PSD=12.
EXECUTE.

IF  (Q9L = 0 & Q9J = 0) PN_PSD=12.
EXECUTE.

IF  (Q9L = 0 & Q9K = 0) PN_PSD=12.
EXECUTE.







Add Value Labels
PN_PT PN_PMDB PN_PDT PN_PTB PN_PSDB PN_PV PN_DEM PN_PSOL PN_PSB PN_PR PN_PSC PN_PSD
1 PT
2 PMDB
3 PDT
4 PTB
5 PSDB
6 PV
7 DEM
8 PSOL
9 PSB
10 PR
11 PSC
12 PSD.




*****************
Antipartidário
*****************

IF  (Q9A = 0 & Q9B = 0 & Q9C = 0 & Q9D = 0 & Q9E = 0 & Q9F = 0 & Q9G = 0 & Q9H = 0 & Q9I = 0 & Q9J = 0 & Q9K = 0 & Q9L = 0) AntiPartidário=1.
EXECUTE.





*********
ANTIPT
*********

IF  (Q9A = 0 & Q9B > 0 & Q9C > 0 & Q9D > 0 & Q9E > 0 & Q9F > 0 & Q9G > 0 & Q9H > 0 & Q9I > 0 & Q9J > 0 & Q9K > 0 & Q9L > 0) AntiPT=1.
EXECUTE.


*********
ANTIPMDB
*********

IF  (Q9B = 0 & Q9A > 0 & Q9C > 0 & Q9D > 0 & Q9E > 0 & Q9F > 0 & Q9G > 0 & Q9H > 0 & Q9I > 0 & Q9J > 0 & Q9K > 0 & Q9L > 0) AntiPMDB=1.
EXECUTE.



*********
ANTIPDT
*********

IF  (Q9C = 0 & Q9B > 0 & Q9A > 0 & Q9D > 0 & Q9E > 0 & Q9F > 0 & Q9G > 0 & Q9H > 0 & Q9I > 0 & Q9J > 0 & Q9K > 0 & Q9L > 0) AntiPDT=1.
EXECUTE.

*********
ANTIPTB
*********

IF  (Q9D = 0 & Q9B > 0 & Q9C > 0 & Q9A > 0 & Q9E > 0 & Q9F > 0 & Q9G > 0 & Q9H > 0 & Q9I > 0 & Q9J > 0 & Q9K > 0 & Q9L > 0) AntiPTB=1.
EXECUTE.



*********
ANTIPSDB
*********

IF  (Q9E = 0 & Q9B > 0 & Q9C > 0 & Q9D > 0 & Q9A > 0 & Q9F > 0 & Q9G > 0 & Q9H > 0 & Q9I > 0 & Q9J > 0 & Q9K > 0 & Q9L > 0) AntiPSDB=1.
EXECUTE.

*********
ANTIPV
*********

IF  (Q9F = 0 & Q9B > 0 & Q9C > 0 & Q9D > 0 & Q9E > 0 & Q9A > 0 & Q9G > 0 & Q9H > 0 & Q9I > 0 & Q9J > 0 & Q9K > 0 & Q9L > 0) AntiPV=1.
EXECUTE.



*********
ANTIDEM
*********

IF  (Q9G = 0 & Q9A > 0 & Q9B > 0 & Q9C > 0 & Q9D > 0 & Q9E > 0 & Q9F > 0 & Q9H > 0 & Q9I > 0 & Q9J > 0 & Q9K > 0 & Q9L > 0) AntiDEM=1.
EXECUTE.





*********
ANTIPSOL
*********

IF  (Q9H = 0 & Q9B > 0 & Q9C > 0 & Q9D > 0 & Q9E > 0 & Q9F > 0 & Q9G > 0 & Q9A > 0 & Q9I > 0 & Q9J > 0 & Q9K > 0 & Q9L > 0) AntiPSOL=1.
EXECUTE.




*********
ANTIPSB
*********

IF  (Q9I = 0 & Q9B > 0 & Q9C > 0 & Q9D > 0 & Q9E > 0 & Q9F > 0 & Q9G > 0 & Q9H > 0 & Q9A > 0 & Q9J > 0 & Q9K > 0 & Q9L > 0) AntiPSB=1.
EXECUTE.



*********
ANTIPR
*********

IF  (Q9J = 0 & Q9B > 0 & Q9C > 0 & Q9D > 0 & Q9E > 0 & Q9F > 0 & Q9G > 0 & Q9H > 0 & Q9I > 0 & Q9A > 0 & Q9K > 0 & Q9L > 0) AntiPR=1.
EXECUTE.

*********
ANTIPSC
*********

IF  (Q9K = 0 & Q9B > 0 & Q9C > 0 & Q9D > 0 & Q9E > 0 & Q9F > 0 & Q9G > 0 & Q9H > 0 & Q9I > 0 & Q9J > 0 & Q9A > 0 & Q9L > 0) AntiPSC=1.
EXECUTE.

*********
ANTIPSD
*********

IF  (Q9L = 0 & Q9B > 0 & Q9C > 0 & Q9D > 0 & Q9E > 0 & Q9F > 0 & Q9G > 0 & Q9H > 0 & Q9I > 0 & Q9J > 0 & Q9K > 0 & Q9A > 0) AntiPSD=1.
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



RECODE AntiPSB (1=11) INTO Part.
EXECUTE.


RECODE AntiPR (1=12) INTO Part.
EXECUTE.


RECODE AntiPSC (1=13) INTO Part.
EXECUTE.


RECODE AntiPSD (1=14) INTO Part.
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
10 AntiPSOL
11 AntiPSB
12 AntiPR
13 AntiPSC
14 AntiPSD.



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

IF  (Part = 2) PN_PSB=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PR=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PSC=$SYSMIS.
EXECUTE.

IF  (Part = 2) PN_PSD=$SYSMIS.
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



******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 11) PN_PSB=9.
EXECUTE.

******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 12) PN_PR=10.
EXECUTE.

******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 13) PN_PSC=11.
EXECUTE.

******
PART FOR ANTI PN SERÁ PN
******

IF  (Part = 14) PN_PSD=12.
EXECUTE.





*******
SEXO
******



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=D2_SEXO PN_PT DISPLAY=LABEL
  /TABLE D2_SEXO BY PN_PT [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=D2_SEXO ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.







*******
Escolaridade
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=D3_ESCOLA PN_PT DISPLAY=LABEL
  /TABLE D3_ESCOLA [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=D3_ESCOLA ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.








*******
idade
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=D1B_FXIDADE PN_PT DISPLAY=LABEL
  /TABLE D1B_FXIDADE [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=D1B_FXIDADE ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.






*******
Renda
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=D20A_FXRENDFAM PN_PT DISPLAY=LABEL
  /TABLE D20A_FXRENDFAM [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=D20A_FXRENDFAM ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.


*******
Região
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=REGIÃO PN_PT DISPLAY=LABEL
  /TABLE REGIÃO [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=REGIÃO ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.






*******
Ideologia
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Q12 PN_PT DISPLAY=LABEL
  /TABLE Q12 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=Q12 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.








*******
Gosta Partido
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Q16 PN_PT DISPLAY=LABEL
  /TABLE Q16 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=Q16 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.







*******
Partido Gosta MAis
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Q16B PN_PT DISPLAY=LABEL
  /TABLE Q16B [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=Q16B ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.




*******
Avaliação Governo
******

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=PC2 PN_PT DISPLAY=LABEL
  /TABLE PC2 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] BY PN_PT [C]
  /CATEGORIES VARIABLES=PC2 ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=PN_PT ORDER=A KEY=VALUE EMPTY=EXCLUDE.






**********
REGR 2014
******


NOMREG AntiPT (BASE=FIRST ORDER=ASCENDING) BY D2_SEXO D3_ESCOLA D1B_FXIDADE REGIÃO
  /CRITERIA CIN(95) DELTA(0) MXITER(100) MXSTEP(5) CHKSEP(20) LCONVERGE(0) PCONVERGE(0.000001) 
    SINGULAR(0.00000001)
  /MODEL
  /STEPWISE=PIN(.05) POUT(0.1) MINEFFECT(0) RULE(SINGLE) ENTRYMETHOD(LR) REMOVALMETHOD(LR)
  /INTERCEPT=INCLUDE
  /PRINT=PARAMETER SUMMARY LRT CPS STEP MFI.




















