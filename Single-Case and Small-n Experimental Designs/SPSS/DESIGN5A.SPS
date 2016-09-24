set mxloop 5000.
matrix.
get limits/variables=limits/missing=omit.
get data/variables=data condit/missing=omit.
compute ncase =limits(1).
compute totals={0;0}.
compute counts={0;0}.
loop case =1 to ncase.
compute totals(data(case,2))=totals(data(case,2))+data(case,1).
compute counts(data(case,2))=counts(data(case,2))+1.
end loop.
compute means=totals/counts.
compute test=means(2,1)-means(1,1).
print test/title="test statistic".
compute nperm=2001.
compute results=uniform(nperm,1).
compute results(1,1)=test-test/1000000.
compute pos1=0.
compute pos2=0.
loop perm=2 to nperm.
loop case=1 to ncase.
compute k=trunc(uniform(1,1)*(ncase-case+1))+case.
compute temp=data(case,1).
compute data(case,1)=data(k,1).
compute data(k,1)=temp.
end loop.
compute totals={0;0}.
compute counts={0;0}.
loop case =1 to ncase.
compute totals(data(case,2))=totals(data(case,2))+data(case,1).
compute counts(data(case,2))=counts(data(case,2))+1.
end loop.
compute means=totals/counts.
compute test=means(2,1)-means(1,1).
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

