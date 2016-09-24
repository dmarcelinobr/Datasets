set mxloop 5000.
compute phase = phase+1.
matrix.
get limits/variables=limits/missing=omit.
get data/variables=data phase/missing=omit.
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
compute rand=uniform(1,1).
compute temp1=limits(1)-limits(2)-limits(3)+1.
compute temp2=limits(2)+1.
compute inter=trunc(temp1*rand)+temp2.
compute totals={0;0}.
compute counts={0;0}.
loop case =1 to inter-1.
compute totals(1)=totals(1)+data(case,1).
compute counts(1)=counts(1)+1.
end loop.
loop case =inter to ncase.
compute totals(2)=totals(2)+data(case,1).
compute counts(2)=counts(2)+1.
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
compute phase=phase-1.
execute.

