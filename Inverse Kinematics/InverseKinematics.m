d5=4.5;
l3=9.5;
d4=-1;
l2=9.5;
l1=8;
d1=15;

q11=input('q11 = ');
q12=input('q12 = ');
q13=input('q13 = ');
q14=input('q14 = ');
q21=input('q21 = ');
q22=input('q22 = ');
q23=input('q23 = ');
q24=input('q24 = ');
q31=input('q31 = ');
q32=input('q32 = ');
q33=input('q33 = ');
q34=input('q34 = ');
q41=0;
q42=0;
q43=0;
q44=1;
Ta=T1+T2;
Tb=T3+T4;
%theta equations
Tbout=asind(q33);

% theta 5
if (-q32>=0)
T5out=acosd((q31)/cosd(Tbout));

else
T5out=asind((-q32)/(cosd(Tbout)));
end

% theta 3
T3out=asind((((-d5)*(sind(Tbout))-(d1)+(q34))/(l3)));

%theta 4
if (T3out>=0)
T4out=acosd(((q31)/cosd(T5out)))-T3out;
else
T4out=Tbout-T3out;
end

if (q24>=0)
T1out=acosd((q14-(d5)*(cosd(Ta)*cosd(Tb))-(l3)*(cosd(Ta)*cosd(T3))+(d4)*sind(Ta)-(l2)*cosd(Ta))/(l1));
else
T1out=asind((q24-(d5)*(sind(Ta)*cosd(Tb))-(l3)*(sind(Ta)*cosd(T3))-(d4)*cosd(Ta)-(l2)*sind(Ta))/(l1));
end

% theta 2
if (q23>=0)

    Taout=acosd((q13)/cosd(Tbout));
     T2out=Taout-T1out;

else
  Taout=asind((q23)/cosd(Tbout));
T2out=Taout-T1out;

end

disp(T1out);
disp(T2out);
disp(T3out);
disp(T4out);
disp(T5out);