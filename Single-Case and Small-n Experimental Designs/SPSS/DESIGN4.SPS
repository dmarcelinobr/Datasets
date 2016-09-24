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
print test/title= "test statistic".
compute nperm=2001.
compute results=uniform(nperm,1).
compute results(1,1)=test-test/1000000.
compute pos1=0.
compute pos2=0.
compute temp1=limits(3)+1.
compute temp2=limits(2)-limits(3)-limits(4)-limits(5)+1.
compute temp3=limits(2)-limits(5).
loop perm=2 to nperm.
compute interven=uniform(nsubject,2).
compute totals=0*totals.
compute counts=0*counts.
compute test=0.
loop k= 1 to nsubject.
compute interven(k,1)=trunc(temp2*interven(k,1))+temp1.
compute temp4=interven(k,1)+limits(4).
compute temp5=temp3-temp4+2.
compute interven(k,2)=trunc(temp5*interven(k,2))+temp4.
compute temp6=(k-1)*limits(2)+1.
compute temp7=temp6+interven(k,1)-2.
compute temp8=temp6+interven(k,2)-2.
compute temp9=k*limits(2).
loop case=temp6 to temp7.
compute totals(k,1)=totals(k,1)+data(case,1).
compute counts(k,1)=counts(k,1)+1.
end loop.
loop case =temp7+1 to temp8.
compute totals(k,2)=totals(k,2)+data(case,1).
compute counts(k,2)=counts(k,2)+1.
end loop.
loop case =temp8+1 to temp9.
compute totals(k,1)=totals(k,1)+data(case,1).
compute counts(k,1)=counts(k,1)+1.
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

