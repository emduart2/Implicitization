uninstallPackage("implicitization")
restart
installPackage("implicitization",FileName=>"/home/eliana/Dropbox/UIUC/Research/BasePoints/Implicitization/implicitization.m2")
--ixnstallPackage("implicitization",FileName=>"/Users/duarte_eliana/Dropbox/UIUC/Research/BasePoints/Implicitization/implicitization.m2")
viewHelp("implicitization")

firstFunction(2)
loadedPackages



R=ZZ/31991[s,t,u,v, Degrees=>{{1,0},{1,0},{0,1},{0,1}}]
J=ideal(s,u)
kpoints(2,J)

kbpts=(k,R)->(
i=0;
lst={};
while i<k
do(
M=random(R^1,R^2);
forms=matrix{{s},{t}};
Lp=M*forms;
M=random(R^1,R^2);
forms=matrix{{u},{v}};

Lq=M*forms;
testo=ideal(Lp,Lq);
lst=lst|{testo};
i=i+1;
);
I=lst_0;
j=1;
while j<k
do(
I=intersect(I,lst_j);
j=j+1;
);
return I;
)
