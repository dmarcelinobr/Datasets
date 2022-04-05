

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
















