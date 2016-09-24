set mxloops 5000.
matrix.
get limits/variables=limits/missing=omit.
get data/variables data condit block/missing omit.
compute ncase=limits(1).
compute colmax=cmax(data).
compute nblock=colmax(3).
compute ntreat=colmax(2).
compute totalt=make(ntreat,1,0).
compute totalb=make(nblock,1,0).
loop case=1 to ncase.
compute totalt(data(case,2))=totalt(data(case,2))+data(case,1).
compute totalb(data(case,3))=totalb(data(case,3))+data(case,1).
end loop.
compute TrSS=0.
loop tr=1 to ntreat.
compute TrSS=TrSS+totalt(tr)*totalt(tr)/nblock.
end loop.
compute BSS=0.
loop bl=1 to nblock.
compute BSS=BSS+totalb(bl)*totalb(bl)/ntreat.
end loop.
compute sum=csum(data).
compute corr=sum(1)*sum(1)/ncase.
compute tss=cssq(data).
compute RSS=tss(1)-TrSS-BSS+corr.
print RSS/title="RSS".
compute nperm=2001.
compute results=uniform(nperm,1).
compute results(1,1)=RSS+RSS/1000000.
compute pos=0.
loop perm=2 to nperm.
loop bl = 1 to nblock.
loop tr = 1 to ntreat.
compute k=trunc(uniform(1,1)*(ntreat-tr+1))+tr+ntreat*(bl-1).
compute case=tr+ntreat*(bl-1).
compute temp=data(case,1).
compute data(case,1)=data(k,1).
compute data(k,1)=temp.
end loop.
end loop.
compute totalt=0*totalt.
compute totalb=0*totalb.
loop case=1 to ncase.
compute totalt(data(case,2))=totalt(data(case,2))+data(case,1).
compute totalb(data(case,3))=totalb(data(case,3))+data(case,1).
end loop.
compute TrSS=0.
loop tr=1 to ntreat.
compute TrSS=TrSS+totalt(tr)*totalt(tr)/nblock.
end loop.
compute BSS=0.
loop bl=1 to nblock.
compute BSS=BSS+totalb(bl)*totalb(bl)/ntreat.
end loop.
compute sum=csum(data).
compute corr=sum(1)*sum(1)/ncase.
compute tss=cssq(data).
compute RSS=tss(1)-TrSS-BSS+corr.
compute results(perm,1)=RSS.
end loop.
loop k=2 to nperm.
do if results(k,1)<=results(1,1).
compute pos=pos+1.
end if.
end loop.
print pos/title="count of RSS as least as small".
compute prob=(pos+1)/nperm.
print prob/title="probability".
end matrix.
