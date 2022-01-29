L1=9.4;
L2=9.2;
L3=5.8;
L4=0;
L5=0;

D1=14.1;
D2=0;
D3=0;
D4=0.8;
D5=9.7;

AL1=deg2rad(0);
AL2=deg2rad(90);
AL3=deg2rad(0);
AL4=deg2rad(90);
AL5=deg2rad(0);

TH1=deg2rad(0);
TH2=deg2rad(0);
TH3=deg2rad(0);
TH4=deg2rad(0+90);
TH5=deg2rad(0);

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
A
