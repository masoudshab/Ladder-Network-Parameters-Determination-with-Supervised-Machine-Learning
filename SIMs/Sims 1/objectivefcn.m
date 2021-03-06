

y=0.01;
%sim('POWERSYS')

z=floor(.19/y)+1;

r1 = 0.14;
r2 = 0.1;
r3 = 0.1;
r4 = 0.15;
r5 = 0.1;

r14 = 0.06;
r124 = 0.11;
r1245 = 0.14;
r12345 = 0.11;


Loss1 = r1*(Is1(z,3)^2+Is1(z,2)^2+Is1(z,1)^2);
Loss2 = r2*(Is2(z,3)^2+Is2(z,2)^2+Is2(z,1)^2);
Loss3 = r3*(Is3(z,3)^2+Is3(z,2)^2+Is3(z,1)^2);
Loss4 = r4*(Is4(z,3)^2+Is4(z,2)^2+Is4(z,1)^2);
Loss5 = r5*(Is5(z,3)^2+Is5(z,2)^2+Is5(z,1)^2);

Loss14 = r14*(Is1(z,3)^2+Is1(z,2)^2+Is1(z,1)^2+Is4(z,3)^2+Is4(z,2)^2+Is4(z,1)^2);
Loss124 = r124*(Is1(z,3)^2+Is1(z,2)^2+Is1(z,1)^2+Is4(z,3)^2+Is4(z,2)^2+Is4(z,1)^2+Is2(z,3)^2+Is2(z,2)^2+Is2(z,1)^2);
Loss1245 = r1245*(Is1(z,3)^2+Is1(z,2)^2+Is1(z,1)^2+Is4(z,3)^2+Is4(z,2)^2+Is4(z,1)^2+Is2(z,3)^2+Is2(z,2)^2+Is2(z,1)^2+Is5(z,3)^2+Is5(z,2)^2+Is5(z,1)^2);
Loss12345 = r12345*(Is1(z,3)^2+Is1(z,2)^2+Is1(z,1)^2+Is4(z,3)^2+Is4(z,2)^2+Is4(z,1)^2+Is2(z,3)^2+Is2(z,2)^2+Is2(z,1)^2+Is5(z,3)^2+Is5(z,2)^2+Is3(z,1)^2+Is3(z,3)^2+Is3(z,2)^2+Is3(z,1)^2);

LT = Loss1+Loss2+Loss3+Loss4+Loss5+Loss14+Loss124+Loss1245+Loss12345;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



for i=1:1:3
Vs1(i) = Vs1(z,i);
end
for i=1:1:3
Vs2(i) = Vs2(z,i);
end
for i=1:1:3
Vs3(i) = Vs3(z,i);
end
for i=1:1:3
Vs4(i) = Vs4(z,i);
end
for i=1:1:3
Vs5(i) = Vs5(z,i);
end

deltaV = 0;
deltaV1 = abs(Vs1-380/sqrt(3))+abs(Vs2-380/sqrt(3))+abs(Vs3-380/sqrt(3))+abs(Vs4-380/sqrt(3))+abs(Vs5-380/sqrt(3));

for i=1:3
    deltaV = deltaV + deltaV1(i);
end

dV=deltaV/15;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


PF = (PF1(z)+PF2(z)+PF3(z)+PF4(z)+PF5(z))/5;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


w=floor(.18/y)+1;

for i=1:1:3
THD1(i) = THD1(w,i);
end
for i=1:1:3
THD2(i) = THD2(w,i);
end
for i=1:1:3
THD3(i) = THD3(w,i);
end
for i=1:1:3
THD4(i) = THD4(w,i);
end
for i=1:1:3
THD5(i) = THD5(w,i);
end

THDDD = 0;
THDD = THD1+THD2+THD3+THD4+THD5;

for i=1:3
    THDDD = THDDD + THDD(i);
end

THD = THDDD/15;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


z1 = floor(.06/y)+1;


Loss1 = r1*(Is1(z1,3)^2+Is1(z1,2)^2+Is1(z1,1)^2);
Loss2 = r2*(Is2(z1,3)^2+Is2(z1,2)^2+Is2(z1,1)^2);
Loss3 = r3*(Is3(z1,3)^2+Is3(z1,2)^2+Is3(z1,1)^2);
Loss4 = r4*(Is4(z1,3)^2+Is4(z1,2)^2+Is4(z1,1)^2);
Loss5 = r5*(Is5(z1,3)^2+Is5(z1,2)^2+Is5(z1,1)^2);

Loss14 = r14*(Is1(z1,3)^2+Is1(z1,2)^2+Is1(z1,1)^2+Is4(z1,3)^2+Is4(z1,2)^2+Is4(z1,1)^2);
Loss124 = r124*(Is1(z1,3)^2+Is1(z1,2)^2+Is1(z1,1)^2+Is4(z1,3)^2+Is4(z1,2)^2+Is4(z1,1)^2+Is2(z1,3)^2+Is2(z1,2)^2+Is2(z1,1)^2);
Loss1245 = r1245*(Is1(z1,3)^2+Is1(z1,2)^2+Is1(z1,1)^2+Is4(z1,3)^2+Is4(z1,2)^2+Is4(z1,1)^2+Is2(z1,3)^2+Is2(z1,2)^2+Is2(z1,1)^2+Is5(z1,3)^2+Is5(z1,2)^2+Is5(z1,1)^2);
Loss12345 = r12345*(Is1(z1,3)^2+Is1(z1,2)^2+Is1(z1,1)^2+Is4(z1,3)^2+Is4(z1,2)^2+Is4(z1,1)^2+Is2(z1,3)^2+Is2(z1,2)^2+Is2(z1,1)^2+Is5(z1,3)^2+Is5(z1,2)^2+Is3(z1,1)^2+Is3(z1,3)^2+Is3(z1,2)^2+Is3(z1,1)^2);

LT_0 = Loss1+Loss2+Loss3+Loss4+Loss5+Loss14+Loss124+Loss1245+Loss12345;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



for i=1:1:3
Vs1(i) = Vs1(z1,i);
end
for i=1:1:3
Vs2(i) = Vs2(z1,i);
end
for i=1:1:3
Vs3(i) = Vs3(z1,i);
end
for i=1:1:3
Vs4(i) = Vs4(z1,i);
end
for i=1:1:3
Vs5(i) = Vs5(z1,i);
end

deltaV = 0;
deltaV1 = abs(Vs1-380/sqrt(3))+abs(Vs2-380/sqrt(3))+abs(Vs3-380/sqrt(3))+abs(Vs4-380/sqrt(3))+abs(Vs5-380/sqrt(3));

for i=1:3
    deltaV = deltaV + deltaV1(i);
end

dV_0 = deltaV/15;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


PF_0 = (PF1(z1)+PF2(z1)+PF3(z1)+PF4(z1)+PF5(z1))/5;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


w1 = floor(.08/y)+1;

for i=1:1:3
THD1(i) = THD1(w1,i);
end
for i=1:1:3
THD2(i) = THD2(w1,i);
end
for i=1:1:3
THD3(i) = THD3(w1,i);
end
for i=1:1:3
THD4(i) = THD4(w1,i);
end
for i=1:1:3
THD5(i) = THD5(w1,i);
end

THDDD = 0;
THDD = THD1+THD2+THD3+THD4+THD5;

for i=1:3
    THDDD = THDDD + THDD(i);
end

THD_0 = THDDD/15;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

OF = [LT dV PF THD; LT_0 dV_0 PF_0 THD_0]
