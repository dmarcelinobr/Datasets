set mxloops 5000.
matrix.
get limits/variables=limits/missing=omit.
get data/variables data condit block/missing omit.
compute ncase=limits(1)*2.
compute nblock=limits(1).
compute colmax=cmax(data).
compute ntreat=colmax(2).
compute totalt={0,0}.
compute totals=uniform(nblock,1).
compute totals=0*totals.
loop case=1 to ncase.
compute totalt(data(case,2))=totalt(data(case,2))+data(case,1).
compute totals(data(case,3))=totals(data(case,3))+data(case,1).
end loop.
compute test=(totalt(2)-totalt(1))/nblock.
print test/title="test statistic".
compute nperm=2001.
compute results=uniform(nperm,1).
compute results(1,1)=test-test/1000000.
compute pos1=0.
compute pos2=0.
loop perm=2 to nperm.
loop bl = 1 to nblock.
loop tr = 1 to 2.
compute k=trunc(uniform(1,1)*(2-tr+1))+tr+2*(bl-1).
compute case=tr+2*(bl-1).
compute temp=data(case,1).
compute data(case,1)=data(k,1).
compute data(k,1)=temp.
end loop.
end loop.
compute totalt={0,0}.
compute totals=0*totals.
loop case=1 to ncase.
compute totalt(data(case,2))=totalt(data(case,2))+data(case,1).
compute totals(data(case,3))=totals(data(case,3))+data(case,1).
end loop.
compute test=(totalt(2)-totalt(1))/nblock.
compute results(perm,1)=test.
end loop.
compute absres=abs(results).
loop k=2 to nperm.
do if results(k,1)>=results(1,1).
compute pos1=pos1+1.
end if.
do if absres(k,1)>=absres(1,1).
compute pos2=pos2+1.
end if.
end loop.
print pos1/title="count of arrangement statistics at least as large".
compute prob1=(pos1+1)/nperm.
print prob1/title="one tail probability".
print pos2/title="count of arrangement statistics at least as large in abs value as abs(test)".
compute prob2=(pos2+1)/nperm.
print prob2/title="two tail probability".
end matrix.

