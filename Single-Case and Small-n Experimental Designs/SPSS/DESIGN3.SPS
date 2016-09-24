set mxloop 5000.
compute phase = phase+1.
matrix.
get limits/variable=limits/missing=omit.
get data/variables=data phase subject/missing=omit.
compute nsubject=limits(1).
compute ncase =limits(2)*limits(1).
compute totals=make(nsubject,2,0).
compute counts=make(nsubject,2,0).
loop case =1 to ncase.
compute totals(data(case,3),data(case,2))=totals(data(case,3),data(case,2))+data(case,1).
compute counts(data(case,3),data(case,2))=counts(data(case,3),data(case,2))+1.
end loop.
compute means=totals/counts.
compute test=0.
loop k=1 to nsubject.
compute test=test+means(k,2)-means(k,1).
end loop.
print test/title="test statistic".
compute nperm=2001.
compute results=uniform(nperm,1).
compute results(1,1)=test-test/1000000.
compute pos1=0.
compute pos2=0.
loop perm=2 to nperm.
compute totals=0*totals.
compute counts=0*counts.
compute test=0.
compute rand=uniform(nsubject,1).
loop k= 1 to nsubject.
compute temp1=limits(2)-limits(3)-limits(4)+1.
compute interven=trunc(temp1*rand(k))+limits(3)+1.
compute temp2=(k-1)*limits(2)+1.
compute temp3=temp2+interven-1.
compute temp4=k*limits(2).
loop case =temp2 to temp3.
compute totals(k,1)=totals(k,1)+data(case,1).
compute counts(k,1)=counts(k,1)+1.
end loop.
loop case =temp3+1 to temp4.
compute totals(k,2)=totals(k,2)+data(case,1).
compute counts(k,2)=counts(k,2)+1.
end loop.
compute test=test+totals(k,2)/counts(k,2)-totals(k,1)/counts(k,1).
end loop.
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
compute phase=phase-1.
execute.

