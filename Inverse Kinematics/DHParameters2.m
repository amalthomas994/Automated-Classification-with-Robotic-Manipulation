L1=8;
L2=9.5;
L3=9.5;
L4=0;
L5=0;

D1=15;
D2=0;
D3=0;
D4=-1;
D5=4.5;

AL1=deg2rad(0);
AL2=deg2rad(90);
AL3=deg2rad(0);
AL4=deg2rad(90);
AL5=deg2rad(0);

angle1=input('angle1 = ');
angle2=input('angle2 = ');
angle3=input('angle3 = ');
angle4=input('angle4 = ');
angle5=input('angle5 = ');

TH1=deg2rad(angle1);
TH2=deg2rad(angle2);
TH3=deg2rad(angle3);
TH4=deg2rad(angle4+90);
TH5=deg2rad(angle5);

A1 = [cos(TH1) -sin(TH1)*cos(AL1) sin(TH1)*sin(AL1) L1*cos(TH1); 
    sin(TH1) cos(TH1)*cos(AL1) -cos(TH1)*sin(AL1) L1*sin(TH1);
    0 sin(AL1) cos(AL1) D1;
    0 0 0 1];

A2 = [cos(TH2) -sin(TH2)*cos(AL2) sin(TH2)*sin(AL2) L2*cos(TH2); 
    sin(TH2) cos(TH2)*cos(AL2) -cos(TH2)*sin(AL2) L2*sin(TH2);
    0 sin(AL2) cos(AL2) D2;
    0 0 0 1];



A3 = [cos(TH3) -sin(TH3)*cos(AL3) sin(TH3)*sin(AL3) L3*cos(TH3); 
    sin(TH3) cos(TH3)*cos(AL3) -cos(TH3)*sin(AL3) L3*sin(TH3);
    0 sin(AL3) cos(AL3) D3;
    0 0 0 1];


A4 = [cos(TH4) -sin(TH4)*cos(AL4) sin(TH4)*sin(AL4) L4*cos(TH4); 
    sin(TH4) cos(TH4)*cos(AL4) -cos(TH4)*sin(AL4) L4*sin(TH4);
    0 sin(AL4) cos(AL4) D4;
    0 0 0 1];

A5 = [cos(TH5) -sin(TH5)*cos(AL5) sin(TH5)*sin(AL5) L5*cos(TH5); 
    sin(TH5) cos(TH5)*cos(AL5) -cos(TH5)*sin(AL5) L5*sin(TH5);
    0 sin(AL5) cos(AL5) D5;
    0 0 0 1];

A=A1*A2*A3*A4*A5;
A;

%Servo 1
y1=-86;
y2=83;


x1=-1400;
x2=1400;

m=(y2-y1)/(x2-x1);
b=y1-(m*x1);

servo1=(angle1-(b))/(m);
servo1=-servo1;

% Servo 2

y1=-74;
y2=76;


x1=-1400;
x2=1400;

m=(y2-y1)/(x2-x1);
b=y1-(m*x1);

servo2=(angle2-(b))/(m);
servo2=-servo2;

%Servo 3
y1=-78;
y2=85;


x1=-1400;
x2=1400;

m=(y2-y1)/(x2-x1);
b=y1-(m*x1);

servo3=(angle3-(b))/(m);
servo3=-servo3;

%Servo 4
y1=-82;
y2=77;


x1=-1400;
x2=1400;

m=(y2-y1)/(x2-x1);
b=y1-(m*x1);
servo4=(angle4-(b))/(m);
servo4;

% Servo 5
y1=-79;
y2=74;


x1=-1400;
x2=1400;

m=(y2-y1)/(x2-x1);
b=y1-(m*x1);
servo5=(angle5-(b))/(m);
servo5=-servo5;



matrix = [servo1 servo2 servo3 servo4 servo5]
