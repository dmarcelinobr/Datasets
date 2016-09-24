set mxloop=5000.
matrix.
get limits/variables=limits/missing=omit.
get data/variables=data condit/missing=omit.
compute ncase=limits(1).
compute colmax=cmax(data).
compute ngroup=colmax(2).
compute totals=make(ngroup,1,0).
compute counts=make(ngroup,1,0).
loop case=1 to ncase.
compute totals(data(case,2))=totals(data(case,2))+data(case,1).
compute counts(data(case,2))=counts(data(case,2))+1.
end loop.
compute TrSS=0.
loop k=1 to ngroup.
compute TrSS=TrSS+totals(k)*totals(k)/counts(k).
end loop.
compute TSS=cssq(data).
compute RSS=TSS(1)-TrSS.
print RSS/title="RSS".
compute nperm=2001.
compute results=uniform(nperm,1).
compute results(1,1)=RSS+RSS/1000000.
compute pos=0.
loop perm=2 to nperm.
loop case=1 to ncase.
compute k=trunc(uniform(1,1)*(ncase-case+1))+case.
compute temp=data(case,1).
compute data(case,1)=data(k,1).
compute data(k,1)=temp.
end loop.
compute totals=0*totals.
compute counts=0*counts.
loop case=1 to ncase.
compute totals(data(case,2))=totals(data(case,2))+data(case,1).
compute counts(data(case,2))=counts(data(case,2))+1.
end loop.
compute TrSS=0.
loop k=1 to ngroup.
compute TrSS=TrSS+totals(k)*totals(k)/counts(k).
end loop.
compute TSS=cssq(data).
compute RSS=TSS(1)-TrSS.
compute results(perm,1)=RSS.
end loop.
loop k=2 to nperm.
do if results(k,1)<=results(1,1).
compute pos=pos+1.
end if.
end loop.
print pos/title="count of arrangement RSS at least as small".
compute prob=(pos+1)/nperm.
print prob/title="probability".
end matrix.

