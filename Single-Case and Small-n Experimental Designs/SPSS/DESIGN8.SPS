set mxloop=5000.
matrix.
get limits/variables=limits/missing=omit.
get data/variables=data predict/missing=omit.
compute ncase=limits(1).
compute sumprod=0.
loop case=1 to ncase.
compute sumprod=sumprod+data(case,1)*data(case,2).
end loop.
print sumprod/title="sum of products".
compute nperm=2001.
compute results=uniform(nperm,1).
compute results(1,1)=sumprod-sumprod/1000000.
compute pos=0.
loop perm=2 to nperm.
loop case=1 to ncase.
compute k=trunc(uniform(1,1)*(ncase-case+1))+case.
compute temp=data(case,1).
compute data(case,1)=data(k,1).
compute data(k,1)=temp.
end loop.
compute sumprod=0.
loop case=1 to ncase.
compute sumprod=sumprod+data(case,1)*data(case,2).
end loop.
compute results(perm,1)=sumprod.
end loop.
loop k=2 to nperm.
do if results(k,1)>=results(1,1).
compute pos=pos+1.
end if.
end loop.
print pos/title="count of arrangement sums of products at least as large".
compute prob=(pos+1)/nperm.
print prob/title="probability".
end matrix.



