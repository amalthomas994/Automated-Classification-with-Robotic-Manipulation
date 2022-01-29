L1=9.4;
L2=9.9;
L3=5.8;
L4=4.5;
L5=0;

D1=9.8;
D2=0;
D3=0;
D4=0;
D5=0;

AL1=0;
AL1=90;
AL1=0;
AL1=90;
AL1=0;

TH1=0;
TH2=0:
TH3=0;
TH4=0+90;
TH5=0;

A1 = [cos(TH1) -sin(TH1)*cos(AL1) sin(TH1)*sin(AL1) L1*cos(TH1); 
    sin(TH1) cos(TH1)*cos(AL1) -cos(TH1)*sin(AL1) L1*sin(TH1);
    0 sin(AL1) cos(AL1) D1
    0 0 0 1];

A2 = [cos(TH2) -sin(TH2)*cos(AL2) sin(TH2)*sin(AL2) L1*cos(TH2); 
    sin(TH2) cos(TH2)*cos(AL2) -cos(TH2)*sin(AL2) L1*sin(TH2);
    0 sin(AL2) cos(AL2) D2
    0 0 0 1];



A3 = [cos(TH3) -sin(TH3)*cos(AL3) sin(TH3)*sin(AL3) L1*cos(TH3); 
    sin(TH3) cos(TH3)*cos(AL3) -cos(TH3)*sin(AL3) L1*sin(TH3);
    0 sin(AL3) cos(AL3) D3
    0 0 0 1];


A4 = [cos(TH4) -sin(TH4)*cos(AL4) sin(TH4)*sin(AL4) L1*cos(TH4); 
    sin(TH4) cos(TH4)*cos(AL4) -cos(TH4)*sin(AL4) L1*sin(TH4);
    0 sin(AL4) cos(AL4) D4
    0 0 0 1];

A5 = [cos(TH5) -sin(TH5)*cos(AL5) sin(TH5)*sin(AL5) L1*cos(TH5); 
    sin(TH5) cos(TH5)*cos(AL5) -cos(TH5)*sin(AL5) L1*sin(TH5);
    0 sin(AL5) cos(AL5) D5
    0 0 0 1];

A = A1*A2*A3*A4*A5;
