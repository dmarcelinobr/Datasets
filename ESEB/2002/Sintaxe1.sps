




p42a
p42b
p42c
p42d
p42e
p42f



Opinião sobre o PT
Opinião sobre o PDT
Opinião sobre o PSDB
Opinião sobre o PFL
Opinião sobre o PMDB
Opinião sobre o PTB




IF  (p42a <= 3 & p42b > 3 & p42c > 3 & p42d > 3 & p42e > 3 & p42f > 3) PT2=1.
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
