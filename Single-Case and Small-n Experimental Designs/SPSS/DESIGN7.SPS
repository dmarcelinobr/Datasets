set mxloops 5000.
sort cases by factor2(A).
matrix.
get limits/variables=limits/missing=omit.
get data/variables data factor1 factor2/missing omit.
compute ncase=limits(1).
compute nreps=limits(1)/4.
compute nswaps=limits(1)/2.
compute totalf1={0,0}.
loop case=1 to ncase.
compute totalf1(data(case,2))=totalf1(data(case,2))+data(case,1).
end loop.
compute test1=(totalf1(2)-totalf1(1))/(nreps*2).
print test1/title="factor 1 test statistic".
compute nperm=2001.
compute results1=uniform(nperm,1).
compute results1(1,1)=test1-test1/1000000.
compute pos1=0.
compute pos2=0.
loop perm=2 to nperm.
loop fac2 = 1 to 2.
loop n= 1 to nswaps.
compute k=trunc(uniform(1,1)*(nswaps-n+1))+n+nswaps*(fac2-1).
compute case=n+nswaps*(fac2-1).
compute temp=data(case,1).
compute data(case,1)=data(k,1).
compute data(k,1)=temp.
end loop.
end loop.
compute totalf1={0,0}.
loop case=1 to ncase.
compute totalf1(data(case,2))=totalf1(data(case,2))+data(case,1).
end loop.
compute test1=(totalf1(2)-totalf1(1))/(nreps*2).
compute results1(perm,1)=test1.
end loop.
compute absres1=abs(results1).
loop k=2 to nperm.
do if results1(k,1)>=results1(1,1).
compute pos1=pos1+1.
end if.
do if absres1(k,1)>=absres1(1,1).
compute pos2=pos2+1.
end if.
end loop.
print pos1/title="count of arrangement statistics at least as large".
compute prob1=(pos1+1)/nperm.
print prob1/title=" factor 1 one tail probability".
print pos2/title="count of arrangement statistics at least as large in abs value as abs(test)".
compute prob2=(pos2+1)/nperm.
print prob2/title=" factor 1 two tail probability".
end matrix.
sort cases by factor1(A).
matrix.
get limits/variables=limits/missing=omit.
get data/variables data factor1 factor2/missing omit.
compute ncase=limits(1).
compute nreps=limits(1)/4.
compute nswaps=limits(1)/2.
compute totalf2={0,0}.
loop case=1 to ncase.
compute totalf2(data(case,3))=totalf2(data(case,3))+data(case,1).
end loop.
compute test2=(totalf2(2)-totalf2(1))/(nreps*2).
print test2/title="factor 2 test statistic".
compute nperm=2001.
compute results2=uniform(nperm,1).
compute results2(1,1)=test2-test2/1000000.
compute pos1=0.
compute pos2=0.
loop perm=2 to nperm.
loop fac1 = 1 to 2.
loop n= 1 to nswaps.
compute k=trunc(uniform(1,1)*(nswaps-n+1))+n+nswaps*(fac1-1).
compute case=n+nswaps*(fac1-1).
compute temp=data(case,1).
compute data(case,1)=data(k,1).
compute data(k,1)=temp.
end loop.
end loop.
compute totalf2={0,0}.
loop case=1 to ncase.
compute totalf2(data(case,3))=totalf2(data(case,3))+data(case,1).
end loop.
compute test2=(totalf2(2)-totalf2(1))/(nreps*2).
compute results2(perm,1)=test2.
end loop.
compute absres2=abs(results2).
loop k=2 to nperm.
do if results2(k,1)>=results2(1,1).
compute pos1=pos1+1.
end if.
do if absres2(k,1)>=absres2(1,1).
compute pos2=pos2+1.
end if.
end loop.
print pos1/title="count of arrangement statistics at least as large".
compute prob1=(pos1+1)/nperm.
print prob1/title=" factor 2 one tail probability".
print pos2/title="count of arrangement statistics at least as large in abs value as abs(test)".
compute prob2=(pos2+1)/nperm.
print prob2/title=" factor 2 two tail probability".
end matrix.


