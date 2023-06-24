clc;clear;
A1=[-0.1125 -0.02;1 0];
A2=[-0.1125 -1.527;1 0];
At1=[-0.0125 -0.005;0 0];
At2=[-0.0125 -0.23;0 0];

B1=[1;0];
B2=[1;0];
Bw1=[1;0];
Bw2=[1;0];
C1=[0 1];
C2=[0 1];
Ct1=[0 0];
Ct2=[0 0];
D1=0.5;
D2=0.3;
E1=[0 1];
E2=[0 1];
Et1=[0 0];
Et2=[0 0];

%%%%%%%%%%%% m1 is lambda 1 and m4 is lambda 2
m1=0.53;
m2=0;
m3=0;
m4=1;
m5=0;
m6=0;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% xiaoyu0
% 
t1=3;

t3=0.5;

% r=0.9;


%   Value=[];
%     for m1=0.2:0.01:0.6
%         for m4=0.02:0.01:0.07

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%例二
% clc;clear;
% A1=[-0.4 0.2;0.3 -0.6];
% A2=[-0.45 0.375;0.15 -0.45];
% At1=[-0.1 0.3;0.1 -0.05];
% At2=[-0.05 0.1;0.1 -0.25];
% 
% B1=[1;0];
% B2=[1;0];
% C1=[0 1];
% C2=[0 1];
%  
% Bw1=[0.7;1];
% Bw2=[0.5;0.2];
% Ct1=[0 0];
% Ct2=[0 0];
% D1=0.9;
% D2=0.1;
% 
% E1=[0.8 0.1];
% E2=[0.4 0.9];
% Et1=[0 0];
% Et2=[0 0];
% 
% 
% m1=0.52;
% m2=0;
% m3=0;
% m4=1;
% m5=0;
% m6=0;
% 
% 
% t1=1.5;
% 
% 
% t3=0.2;

tic
setlmis([])
r=lmivar(1,[1 1]);
P1111=lmivar(1,[2 1]);
P1112=lmivar(1,[2 1]);
P1121=lmivar(1,[2 1]);
P1122=lmivar(1,[2 1]);

P1211=lmivar(2,[2 2]);
P1212=lmivar(2,[2 2]);
P1221=lmivar(2,[2 2]);
P1222=lmivar(2,[2 2]);

P2211=lmivar(1,[2 1]);
P2212=lmivar(1,[2 1]);
P2221=lmivar(1,[2 1]);
P2222=lmivar(1,[2 1]);

M1=lmivar(2,[2 2]);
M2=lmivar(2,[2 2]);
L1=lmivar(2,[2 1]);
L2=lmivar(2,[2 1]);
Q11=lmivar(1,[2 1]);
Q12=lmivar(1,[2 1]);
Q21=lmivar(1,[2 1]);
Q22=lmivar(1,[2 1]);
R11=lmivar(1,[2 1]);
R12=lmivar(1,[2 1]);
R21=lmivar(1,[2 1]);
R22=lmivar(1,[2 1]);
K1=lmivar(2,[1 2]);
K2=lmivar(2,[1 2]);
Kt1=lmivar(2,[1 2]);
Kt2=lmivar(2,[1 2]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PP11=lmivar(1,[2 1]);
PP22=lmivar(1,[2 1]);

PP21=lmivar(1,[2 1]);
PP12=lmivar(1,[2 1]);


X111_11=lmivar(1,[2 1]);
X111_12=lmivar(2,[2 2]);
X111_13=lmivar(2,[2 2]);
X111_14=lmivar(2,[2 2]);
X111_15=lmivar(2,[2 1]);
X111_16=lmivar(2,[2 1]);
X111_22=lmivar(1,[2 1]);
X111_23=lmivar(2,[2 2]);
X111_24=lmivar(2,[2 2]);
X111_25=lmivar(2,[2 1]);
X111_26=lmivar(2,[2 1]);
X111_33=lmivar(1,[2 1]);
X111_34=lmivar(2,[2 2]);
X111_35=lmivar(2,[2 1]);
X111_36=lmivar(2,[2 1]);
X111_44=lmivar(1,[2 1]);
X111_45=lmivar(2,[2 1]);
X111_46=lmivar(2,[2 1]);
X111_55=lmivar(1,[1 1]);
X111_56=lmivar(2,[1 1]);
X111_66=lmivar(1,[1 1]);

X122_11=lmivar(1,[2 1]);
X122_12=lmivar(2,[2 2]);
X122_13=lmivar(2,[2 2]);
X122_14=lmivar(2,[2 2]);
X122_15=lmivar(2,[2 1]);
X122_16=lmivar(2,[2 1]);
X122_22=lmivar(1,[2 1]);
X122_23=lmivar(2,[2 2]);
X122_24=lmivar(2,[2 2]);
X122_25=lmivar(2,[2 1]);
X122_26=lmivar(2,[2 1]);
X122_33=lmivar(1,[2 1]);
X122_34=lmivar(2,[2 2]);
X122_35=lmivar(2,[2 1]);
X122_36=lmivar(2,[2 1]);
X122_44=lmivar(1,[2 1]);
X122_45=lmivar(2,[2 1]);
X122_46=lmivar(2,[2 1]);
X122_55=lmivar(1,[1 1]);
X122_56=lmivar(2,[1 1]);
X122_66=lmivar(1,[1 1]);

X112_11=lmivar(2,[2 2]);
X112_12=lmivar(2,[2 2]);
X112_13=lmivar(2,[2 2]);
X112_14=lmivar(2,[2 2]);
X112_15=lmivar(2,[2 1]);
X112_16=lmivar(2,[2 1]);

X112_21=lmivar(2,[2 2]);
X112_22=lmivar(2,[2 2]);
X112_23=lmivar(2,[2 2]);
X112_24=lmivar(2,[2 2]);
X112_25=lmivar(2,[2 1]);
X112_26=lmivar(2,[2 1]);

X112_31=lmivar(2,[2 2]);
X112_32=lmivar(2,[2 2]);
X112_33=lmivar(2,[2 2]);
X112_34=lmivar(2,[2 2]);
X112_35=lmivar(2,[2 1]);
X112_36=lmivar(2,[2 1]);
X112_41=lmivar(2,[2 2]);
X112_42=lmivar(2,[2 2]);
X112_43=lmivar(2,[2 2]);
X112_44=lmivar(2,[2 2]);
X112_45=lmivar(2,[2 1]);
X112_46=lmivar(2,[2 1]);
X112_51=lmivar(2,[1 2]);
X112_52=lmivar(2,[1 2]);
X112_53=lmivar(2,[1 2]);
X112_54=lmivar(2,[1 2]);
X112_55=lmivar(2,[1 1]);
X112_56=lmivar(2,[1 1]);
X112_61=lmivar(2,[1 2]);
X112_62=lmivar(2,[1 2]);
X112_63=lmivar(2,[1 2]);
X112_64=lmivar(2,[1 2]);
X112_65=lmivar(2,[1 1]);
X112_66=lmivar(2,[1 1]);

X211_11=lmivar(1,[2 1]);
X211_12=lmivar(2,[2 2]);
X211_13=lmivar(2,[2 2]);
X211_14=lmivar(2,[2 2]);
X211_22=lmivar(1,[2 1]);
X211_23=lmivar(2,[2 2]);
X211_24=lmivar(2,[2 2]);
X211_33=lmivar(1,[2 1]);
X211_34=lmivar(2,[2 2]);
X211_44=lmivar(1,[2 1]);

X222_11=lmivar(1,[2 1]);
X222_12=lmivar(2,[2 2]);
X222_13=lmivar(2,[2 2]);
X222_14=lmivar(2,[2 2]);
X222_22=lmivar(1,[2 1]);
X222_23=lmivar(2,[2 2]);
X222_24=lmivar(2,[2 2]);
X222_33=lmivar(1,[2 1]);
X222_34=lmivar(2,[2 2]);
X222_44=lmivar(1,[2 1]);

X212_11=lmivar(2,[2 2]);
X212_12=lmivar(2,[2 2]);
X212_13=lmivar(2,[2 2]);
X212_14=lmivar(2,[2 2]);
X212_21=lmivar(2,[2 2]);
X212_22=lmivar(2,[2 2]);
X212_23=lmivar(2,[2 2]);
X212_24=lmivar(2,[2 2]);
X212_31=lmivar(2,[2 2]);
X212_32=lmivar(2,[2 2]);
X212_33=lmivar(2,[2 2]);
X212_34=lmivar(2,[2 2]);
X212_41=lmivar(2,[2 2]);
X212_42=lmivar(2,[2 2]);
X212_43=lmivar(2,[2 2]);
X212_44=lmivar(2,[2 2]);

lmiterm([1 1 1 P1211],1,1,'s');
lmiterm([1 1 1 -M1],A1,1,'s');
lmiterm([1 1 1 K1],B1,1,'s');
lmiterm([1 1 1 Q11],1,1);
lmiterm([1 1 1 R11],-4,1);
lmiterm([1 1 2 P1211],t3-1,1);
lmiterm([1 1 2 R11],-2,1);
lmiterm([1 1 2 -M1],At1,1);
lmiterm([1 1 2 Kt1],B1,1);
lmiterm([1 1 2 M1],m2,A1');
lmiterm([1 1 2 -K1],m2,B1');
lmiterm([1 1 3 P2211],t1,1);
lmiterm([1 1 3 R11],6,1);
lmiterm([1 1 3 M1],m3,A1');
lmiterm([1 1 3 -K1],m3,B1');
lmiterm([1 1 4 P1111],1,1);
lmiterm([1 1 4 -M1],-1,1);
lmiterm([1 1 4 M1],m1,A1');
lmiterm([1 1 4 -K1],m1,B1');
lmiterm([1 1 5 0],Bw1);
lmiterm([1 1 6 M1],1,C1');
lmiterm([1 1 6 -K1],1,D1');
lmiterm([1 2 2 Q11],t3-1,1);
lmiterm([1 2 2 R11],-4,1);
lmiterm([1 2 2 -M1],At1,m2,'s');
lmiterm([1 2 2 Kt1],B1,m2,'s');
lmiterm([1 2 3 P2211],t1,t3-1);
lmiterm([1 2 3 R11],6,1);
lmiterm([1 2 3 M1],m3,At1');
lmiterm([1 2 3 -Kt1],m3,B1');
lmiterm([1 2 4 -M1],-m2,1);
lmiterm([1 2 4 M1],m1,At1');
lmiterm([1 2 4 -Kt1],m1,B1');
lmiterm([1 2 5 0],m2*Bw1);
lmiterm([1 2 6 M1],1,Ct1');
lmiterm([1 2 6 -Kt1],1,D1');
lmiterm([1 3 3 R11],-12,1);
lmiterm([1 3 4 -P1211],t1,1);
lmiterm([1 3 4 -M1],-m3,1);
lmiterm([1 3 5 0],m3*Bw1);
lmiterm([1 4 4 R11],t1*t1,1);
lmiterm([1 4 4 -M1],-m1,1,'s');
lmiterm([1 4 5 0],m1*Bw1);
lmiterm([1 5 5 r],-1,1);
% lmiterm([1 5 5 0],-r*r);
lmiterm([1 6 6 0],-1);

lmiterm([-1 1 1 X111_11],1,1);
lmiterm([-1 1 2 X111_12],1,1);
lmiterm([-1 1 3 X111_13],1,1);
lmiterm([-1 1 4 X111_14],1,1);
lmiterm([-1 1 5 X111_15],1,1);
lmiterm([-1 1 6 X111_16],1,1);
lmiterm([-1 2 2 X111_22],1,1);
lmiterm([-1 2 3 X111_23],1,1);
lmiterm([-1 2 4 X111_24],1,1);
lmiterm([-1 2 5 X111_25],1,1);
lmiterm([-1 2 6 X111_26],1,1);
lmiterm([-1 3 3 X111_33],1,1);
lmiterm([-1 3 4 X111_34],1,1);
lmiterm([-1 3 5 X111_35],1,1);
lmiterm([-1 3 6 X111_36],1,1);
lmiterm([-1 4 4 X111_44],1,1);
lmiterm([-1 4 5 X111_45],1,1);
lmiterm([-1 4 6 X111_46],1,1);
lmiterm([-1 5 5 X111_55],1,1);
lmiterm([-1 5 6 X111_56],1,1);
lmiterm([-1 6 6 X111_66],1,1);

lmiterm([2 1 1 P1212],1,1,'s');
lmiterm([2 1 1 -M1],A2,1,'s');
lmiterm([2 1 1 K2],B2,1,'s');
lmiterm([2 1 1 Q12],1,1);
lmiterm([2 1 1 R12],-4,1);
lmiterm([2 1 2 P1212],t3-1,1);
lmiterm([2 1 2 R12],-2,1);
lmiterm([2 1 2 -M1],At2,1);
lmiterm([2 1 2 Kt2],B2,1);
lmiterm([2 1 2 M1],m2,A2');
lmiterm([2 1 2 -K2],m2,B2');
lmiterm([2 1 3 P2212],t1,1);
lmiterm([2 1 3 R12],6,1);
lmiterm([2 1 3 M1],m3,A2');
lmiterm([2 1 3 -K2],m3,B2');
lmiterm([2 1 4 P1112],1,1);
lmiterm([2 1 4 -M1],-1,1);
lmiterm([2 1 4 M1],m1,A2');
lmiterm([2 1 4 -K2],m1,B2');
lmiterm([2 1 5 0],Bw2);
lmiterm([2 1 6 M1],1,C2');
lmiterm([2 1 6 -K2],1,D2');
lmiterm([2 2 2 Q12],t3-1,1);
lmiterm([2 2 2 R12],-4,1);
lmiterm([2 2 2 -M1],At2,m2,'s');
lmiterm([2 2 2 Kt2],B2,m2,'s');
lmiterm([2 2 3 P2212],t1,t3-1);
lmiterm([2 2 3 R12],6,1);
lmiterm([2 2 3 M1],m3,At2');
lmiterm([2 2 3 -Kt2],m3,B2');
lmiterm([2 2 4 -M1],-m2,1);
lmiterm([2 2 4 M1],m1,At2');
lmiterm([2 2 4 -Kt2],m1,B2');
lmiterm([2 2 5 0],m2*Bw2);
lmiterm([2 2 6 M1],1,Ct2');
lmiterm([2 2 6 -Kt2],1,D2');
lmiterm([2 3 3 R12],-12,1);
lmiterm([2 3 4 -P1212],t1,1);
lmiterm([2 3 4 -M1],-m3,1);
lmiterm([2 3 5 0],m3*Bw2);
lmiterm([2 4 4 R12],t1*t1,1);
lmiterm([2 4 4 -M1],-m1,1,'s');
lmiterm([2 4 5 0],m1*Bw2);
lmiterm([2 5 5 r],-1,1);
% lmiterm([2 5 5 0],-r*r);
lmiterm([2 6 6 0],-1);

lmiterm([-2 1 1 X122_11],1,1);
lmiterm([-2 1 2 X122_12],1,1);
lmiterm([-2 1 3 X122_13],1,1);
lmiterm([-2 1 4 X122_14],1,1);
lmiterm([-2 1 5 X122_15],1,1);
lmiterm([-2 1 6 X122_16],1,1);
lmiterm([-2 2 2 X122_22],1,1);
lmiterm([-2 2 3 X122_23],1,1);
lmiterm([-2 2 4 X122_24],1,1);
lmiterm([-2 2 5 X122_25],1,1);
lmiterm([-2 2 6 X122_26],1,1);
lmiterm([-2 3 3 X122_33],1,1);
lmiterm([-2 3 4 X122_34],1,1);
lmiterm([-2 3 5 X122_35],1,1);
lmiterm([-2 3 6 X122_36],1,1);
lmiterm([-2 4 4 X122_44],1,1);
lmiterm([-2 4 5 X122_45],1,1);
lmiterm([-2 4 6 X122_46],1,1);
lmiterm([-2 5 5 X122_55],1,1);
lmiterm([-2 5 6 X122_56],1,1);
lmiterm([-2 6 6 X122_66],1,1);

lmiterm([3 1 1 P1211],1,1,'s');
lmiterm([3 1 1 P1212],1,1,'s');
lmiterm([3 1 1 -M1],A2,1,'s');
lmiterm([3 1 1 -M1],A1,1,'s');
lmiterm([3 1 1 K1],B2,1,'s');
lmiterm([3 1 1 K2],B1,1,'s');
lmiterm([3 1 1 Q11],1,1);
lmiterm([3 1 1 Q12],1,1);
lmiterm([3 1 1 R11],-4,1);
lmiterm([3 1 1 R12],-4,1);
lmiterm([3 1 2 P1211],t3-1,1);
lmiterm([3 1 2 P1212],t3-1,1);
lmiterm([3 1 2 R11],-2,1);
lmiterm([3 1 2 R12],-2,1);
lmiterm([3 1 2 -M1],At2,1);
lmiterm([3 1 2 -M1],At1,1);
lmiterm([3 1 2 Kt1],B2,1);
lmiterm([3 1 2 Kt2],B1,1);
lmiterm([3 1 2 M1],m2,A2');
lmiterm([3 1 2 M1],m2,A1');
lmiterm([3 1 2 -K1],m2,B2');
lmiterm([3 1 2 -K2],m2,B1');
lmiterm([3 1 3 P2211],t1,1);
lmiterm([3 1 3 P2212],t1,1);
lmiterm([3 1 3 R11],6,1);
lmiterm([3 1 3 R12],6,1);
lmiterm([3 1 3 M1],m3,A2');
lmiterm([3 1 3 M1],m3,A1');
lmiterm([3 1 3 -K1],m3,B2');
lmiterm([3 1 3 -K2],m3,B1');
lmiterm([3 1 4 P1111],1,1);
lmiterm([3 1 4 P1112],1,1);
lmiterm([3 1 4 -M1],-2,1);
lmiterm([3 1 4 M1],m1,A2');
lmiterm([3 1 4 M1],m1,A1');
lmiterm([3 1 4 -K1],m1,B2');
lmiterm([3 1 4 -K2],m1,B1');
lmiterm([3 1 5 0],Bw2);
lmiterm([3 1 5 0],Bw1);
lmiterm([3 1 6 M1],1,C2');
lmiterm([3 1 6 M1],1,C1');
lmiterm([3 1 6 -K1],1,D2');
lmiterm([3 1 6 -K2],1,D1');
lmiterm([3 2 2 Q11],t3-1,1);
lmiterm([3 2 2 Q12],t3-1,1);
lmiterm([3 2 2 R11],-4,1);
lmiterm([3 2 2 R12],-4,1);
lmiterm([3 2 2 -M1],At2,m2,'s');
lmiterm([3 2 2 -M1],At1,m2,'s');
lmiterm([3 2 2 Kt1],B2,m2,'s');
lmiterm([3 2 2 Kt2],B1,m2,'s');
lmiterm([3 2 3 P2211],t1,t3-1);
lmiterm([3 2 3 P2212],t1,t3-1);
lmiterm([3 2 3 R11],6,1);
lmiterm([3 2 3 R12],6,1);
lmiterm([3 2 3 M1],m3,At2');
lmiterm([3 2 3 M1],m3,At1');
lmiterm([3 2 3 -Kt1],m3,B2');
lmiterm([3 2 3 -Kt2],m3,B1');
lmiterm([3 2 4 -M1],-m2,2);
lmiterm([3 2 4 M1],m1,At2');
lmiterm([3 2 4 M1],m1,At1');
lmiterm([3 2 4 -Kt1],m1,B2');
lmiterm([3 2 4 -Kt2],m1,B1');
lmiterm([3 2 5 0],m2*Bw2);
lmiterm([3 2 5 0],m2*Bw1);
lmiterm([3 2 6 M1],1,Ct2');
lmiterm([3 2 6 M1],1,Ct1');
lmiterm([3 2 6 -Kt1],1,D2');
lmiterm([3 2 6 -Kt2],1,D1');
lmiterm([3 3 3 R11],-12,1);
lmiterm([3 3 3 R12],-12,1);
lmiterm([3 3 4 -P1211],t1,1);
lmiterm([3 3 4 -P1212],t1,1);
lmiterm([3 3 4 -M1],-m3,2);
lmiterm([3 3 5 0],m3*Bw2);
lmiterm([3 3 5 0],m3*Bw1);
lmiterm([3 4 4 R11],t1*t1,1);
lmiterm([3 4 4 R12],t1*t1,1);
lmiterm([3 4 4 -M1],-m1,2,'s');
lmiterm([3 4 5 0],m1*Bw2);
lmiterm([3 4 5 0],m1*Bw1);
lmiterm([3 5 5 r],-2,1);
% lmiterm([3 5 5 0],-2*r*r);
lmiterm([3 6 6 0],-2);

lmiterm([-3 1 1 X112_11],1,1,'s');
lmiterm([-3 1 2 X112_12],1,1);
lmiterm([-3 1 2 -X112_21],1,1);
lmiterm([-3 1 3 X112_13],1,1);
lmiterm([-3 1 3 -X112_31],1,1);
lmiterm([-3 1 4 X112_14],1,1);
lmiterm([-3 1 4 -X112_41],1,1);
lmiterm([-3 1 5 X112_15],1,1);
lmiterm([-3 1 5 -X112_51],1,1);
lmiterm([-3 1 6 X112_16],1,1);
lmiterm([-3 1 6 -X112_61],1,1);
lmiterm([-3 2 2 X112_22],1,1,'s');
lmiterm([-3 2 3 X112_23],1,1);
lmiterm([-3 2 3 -X112_32],1,1);
lmiterm([-3 2 4 X112_24],1,1);
lmiterm([-3 2 4 -X112_42],1,1);
lmiterm([-3 2 5 X112_25],1,1);
lmiterm([-3 2 5 -X112_52],1,1);
lmiterm([-3 2 6 X112_26],1,1);
lmiterm([-3 2 6 -X112_62],1,1);
lmiterm([-3 3 3 X112_33],1,1,'s');
lmiterm([-3 3 4 X112_34],1,1);
lmiterm([-3 3 4 -X112_43],1,1);
lmiterm([-3 3 5 X112_35],1,1);
lmiterm([-3 3 5 -X112_53],1,1);
lmiterm([-3 3 6 X112_36],1,1);
lmiterm([-3 3 6 -X112_63],1,1);
lmiterm([-3 4 4 X112_44],1,1,'s');
lmiterm([-3 4 5 X112_45],1,1);
lmiterm([-3 4 5 -X112_54],1,1);
lmiterm([-3 4 6 X112_46],1,1);
lmiterm([-3 4 6 -X112_64],1,1);
lmiterm([-3 5 5 X112_55],1,1,'s');
lmiterm([-3 5 6 X112_56],1,1);
lmiterm([-3 5 6 -X112_65],1,1);
lmiterm([-3 6 6 X112_66],1,1,'s');


lmiterm([4 1 1 X111_11],1,1);
lmiterm([4 1 2 X111_12],1,1);
lmiterm([4 1 3 X111_13],1,1);
lmiterm([4 1 4 X111_14],1,1);
lmiterm([4 1 5 X111_15],1,1);
lmiterm([4 1 6 X111_16],1,1);
lmiterm([4 1 7 X112_11],1,1);
lmiterm([4 1 8 X112_12],1,1);
lmiterm([4 1 9 X112_13],1,1);
lmiterm([4 1 10 X112_14],1,1);
lmiterm([4 1 11 X112_15],1,1);
lmiterm([4 1 12 X112_16],1,1);
lmiterm([4 2 2 X111_22],1,1);
lmiterm([4 2 3 X111_23],1,1);
lmiterm([4 2 4 X111_24],1,1);
lmiterm([4 2 5 X111_25],1,1);
lmiterm([4 2 6 X111_26],1,1);
lmiterm([4 2 7 X112_21],1,1);
lmiterm([4 2 8 X112_22],1,1);
lmiterm([4 2 9 X112_23],1,1);
lmiterm([4 2 10 X112_24],1,1);
lmiterm([4 2 11 X112_25],1,1);
lmiterm([4 2 12 X112_26],1,1);
lmiterm([4 3 3 X111_33],1,1);
lmiterm([4 3 4 X111_34],1,1);
lmiterm([4 3 5 X111_35],1,1);
lmiterm([4 3 6 X111_36],1,1);
lmiterm([4 3 7 X112_31],1,1);
lmiterm([4 3 8 X112_32],1,1);
lmiterm([4 3 9 X112_33],1,1);
lmiterm([4 3 10 X112_34],1,1);
lmiterm([4 3 11 X112_35],1,1);
lmiterm([4 3 12 X112_36],1,1);
lmiterm([4 4 4 X111_44],1,1);
lmiterm([4 4 5 X111_45],1,1);
lmiterm([4 4 6 X111_46],1,1);
lmiterm([4 4 7 X112_41],1,1);
lmiterm([4 4 8 X112_42],1,1);
lmiterm([4 4 9 X112_43],1,1);
lmiterm([4 4 10 X112_44],1,1);
lmiterm([4 4 11 X112_45],1,1);
lmiterm([4 4 12 X112_46],1,1);
lmiterm([4 5 5 X111_55],1,1);
lmiterm([4 5 6 X111_56],1,1);
lmiterm([4 5 7 X112_51],1,1);
lmiterm([4 5 8 X112_52],1,1);
lmiterm([4 5 9 X112_53],1,1);
lmiterm([4 5 10 X112_54],1,1);
lmiterm([4 5 11 X112_55],1,1);
lmiterm([4 5 12 X112_56],1,1);
lmiterm([4 6 6 X111_66],1,1);
lmiterm([4 6 7 X112_61],1,1);
lmiterm([4 6 8 X112_62],1,1);
lmiterm([4 6 9 X112_63],1,1);
lmiterm([4 6 10 X112_64],1,1);
lmiterm([4 6 11 X112_65],1,1);
lmiterm([4 6 12 X112_66],1,1);

lmiterm([4 7 7 X122_11],1,1);
lmiterm([4 7 8 X122_12],1,1);
lmiterm([4 7 9 X122_13],1,1);
lmiterm([4 7 10 X122_14],1,1);
lmiterm([4 7 11 X122_15],1,1);
lmiterm([4 7 12 X122_16],1,1);
lmiterm([4 8 8 X122_22],1,1);
lmiterm([4 8 9 X122_23],1,1);
lmiterm([4 8 10 X122_24],1,1);
lmiterm([4 8 11 X122_25],1,1);
lmiterm([4 8 12 X122_26],1,1);
lmiterm([4 9 9 X122_33],1,1);
lmiterm([4 9 10 X122_34],1,1);
lmiterm([4 9 11 X122_35],1,1);
lmiterm([4 9 12 X122_36],1,1);
lmiterm([4 10 10 X122_44],1,1);
lmiterm([4 10 11 X122_45],1,1);
lmiterm([4 10 12 X122_46],1,1);
lmiterm([4 11 11 X122_55],1,1);
lmiterm([4 11 12 X122_56],1,1);
lmiterm([4 12 12 X122_66],1,1);

lmiterm([5 1 1 P1221],1,1,'s');
lmiterm([5 1 1 M2],1,A1,'s');
lmiterm([5 1 1 L1],-1,E1,'s');
lmiterm([5 1 1 Q21],1,1);
lmiterm([5 1 1 R21],-4,1);
lmiterm([5 1 2 P1221],t3-1,1);
lmiterm([5 1 2 R21],-2,1);
lmiterm([5 1 2 M2],1,At1);
lmiterm([5 1 2 L1],-1,Et1);
lmiterm([5 1 2 -M2],A1',m5);
lmiterm([5 1 2 -L1],E1',-m5);
lmiterm([5 1 3 P2221],t1,1);
lmiterm([5 1 3 R21],6,1);
lmiterm([5 1 3 -M2],A1',m6);
lmiterm([5 1 3 -L1],E1',-m6);
lmiterm([5 1 4 P1121],1,1);
lmiterm([5 1 4 M2],-1,1);
lmiterm([5 1 4 -M2],A1',m4);
lmiterm([5 1 4 -L1],E1',-m4);
lmiterm([5 2 2 Q21],t3-1,1);
lmiterm([5 2 2 R21],-4,1);
lmiterm([5 2 2 M2],m5,At1,'s');
lmiterm([5 2 2 L1],-m5,Et1,'s');
lmiterm([5 2 3 P2221],t1,t3-1);
lmiterm([5 2 3 R21],6,1);
lmiterm([5 2 3 -M2],At1',m6);
lmiterm([5 2 3 -L1],Et1',-m6);
lmiterm([5 2 4 M2],-m5,1);
lmiterm([5 2 4 -M2],At1',m4);
lmiterm([5 2 4 -L1],Et1',-m4);
lmiterm([5 3 3 R21],-12,1);
lmiterm([5 3 4 -P1221],t1,1);
lmiterm([5 3 4 M2],-m6,1);
lmiterm([5 4 4 R21],t1*t1,1);
lmiterm([5 4 4 M2],-m4,1,'s');

lmiterm([-5 1 1 X211_11],1,1);
lmiterm([-5 1 2 X211_12],1,1);
lmiterm([-5 1 3 X211_13],1,1);
lmiterm([-5 1 4 X211_14],1,1);
lmiterm([-5 2 2 X211_22],1,1);
lmiterm([-5 2 3 X211_23],1,1);
lmiterm([-5 2 4 X211_24],1,1);
lmiterm([-5 3 3 X211_33],1,1);
lmiterm([-5 3 4 X211_34],1,1);
lmiterm([-5 4 4 X211_44],1,1);

lmiterm([6 1 1 P1222],1,1,'s');
lmiterm([6 1 1 M2],1,A2,'s');
lmiterm([6 1 1 L2],-1,E2,'s');
lmiterm([6 1 1 Q22],1,1);
lmiterm([6 1 1 R22],-4,1);
lmiterm([6 1 2 P1222],t3-1,1);
lmiterm([6 1 2 R22],-2,1);
lmiterm([6 1 2 M2],1,At2);
lmiterm([6 1 2 L2],-1,Et2);
lmiterm([6 1 2 -M2],A2',m5);
lmiterm([6 1 2 -L2],E2',-m5);
lmiterm([6 1 3 P2222],t1,1);
lmiterm([6 1 3 R22],6,1);
lmiterm([6 1 3 -M2],A2',m6);
lmiterm([6 1 3 -L2],E2',-m6);
lmiterm([6 1 4 P1122],1,1);
lmiterm([6 1 4 M2],-1,1);
lmiterm([6 1 4 -M2],A2',m4);
lmiterm([6 1 4 -L2],E2',-m4);
lmiterm([6 2 2 Q22],t3-1,1);
lmiterm([6 2 2 R22],-4,1);
lmiterm([6 2 2 M2],m5,At2,'s');
lmiterm([6 2 2 L2],-m5,Et2,'s');
lmiterm([6 2 3 P2222],t1,t3-1);
lmiterm([6 2 3 R22],6,1);
lmiterm([6 2 3 -M2],At2',m6);
lmiterm([6 2 3 -L2],Et2',-m6);
lmiterm([6 2 4 M2],-m5,1);
lmiterm([6 2 4 -M2],At2',m4);
lmiterm([6 2 4 -L2],Et2',-m4);
lmiterm([6 3 3 R22],-12,1);
lmiterm([6 3 4 -P1222],t1,1);
lmiterm([6 3 4 M2],-m6,1);
lmiterm([6 4 4 R22],t1*t1,1);
lmiterm([6 4 4 M2],-m4,1,'s');

lmiterm([-6 1 1 X222_11],1,1);
lmiterm([-6 1 2 X222_12],1,1);
lmiterm([-6 1 3 X222_13],1,1);
lmiterm([-6 1 4 X222_14],1,1);
lmiterm([-6 2 2 X222_22],1,1);
lmiterm([-6 2 3 X222_23],1,1);
lmiterm([-6 2 4 X222_24],1,1);
lmiterm([-6 3 3 X222_33],1,1);
lmiterm([-6 3 4 X222_34],1,1);
lmiterm([-6 4 4 X222_44],1,1);

lmiterm([7 1 1 P1221],1,1,'s');
lmiterm([7 1 1 P1222],1,1,'s');
lmiterm([7 1 1 M2],1,A1,'s');
lmiterm([7 1 1 M2],1,A2,'s');
lmiterm([7 1 1 L1],-1,E2,'s');
lmiterm([7 1 1 L2],-1,E1,'s');  
lmiterm([7 1 1 Q21],1,1);
lmiterm([7 1 1 Q22],1,1);
lmiterm([7 1 1 R21],-4,1);
lmiterm([7 1 1 R22],-4,1);
lmiterm([7 1 2 P1221],t3-1,1);
lmiterm([7 1 2 P1222],t3-1,1);
lmiterm([7 1 2 R21],-2,1);
lmiterm([7 1 2 R22],-2,1);
lmiterm([7 1 2 M2],1,At1);
lmiterm([7 1 2 M2],1,At2);
lmiterm([7 1 2 L2],-1,Et1);
lmiterm([7 1 2 L1],-1,Et2);
lmiterm([7 1 2 -M2],A1',m5);
lmiterm([7 1 2 -M2],A2',m5);
lmiterm([7 1 2 -L1],E2',-m5);
lmiterm([7 1 2 -L2],E1',-m5);
lmiterm([7 1 3 P2221],t1,1);
lmiterm([7 1 3 P2222],t1,1);
lmiterm([7 1 3 R21],6,1);
lmiterm([7 1 3 R22],6,1);
lmiterm([7 1 3 -M2],A1',m6);
lmiterm([7 1 3 -M2],A2',m6);
lmiterm([7 1 3 -L1],E2',-m6);
lmiterm([7 1 3 -L2],E1',-m6);
lmiterm([7 1 4 P1121],1,1);
lmiterm([7 1 4 P1122],1,1);
lmiterm([7 1 4 M2],-2,1);
lmiterm([7 1 4 -M2],A1',m4);
lmiterm([7 1 4 -M2],A2',m4);
lmiterm([7 1 4 -L1],E2',-m4);
lmiterm([7 1 4 -L2],E1',-m4);
lmiterm([7 2 2 Q21],t3-1,1);
lmiterm([7 2 2 Q22],t3-1,1);
lmiterm([7 2 2 R21],-4,1);
lmiterm([7 2 2 R22],-4,1);
lmiterm([7 2 2 M2],m5,At1,'s');
lmiterm([7 2 2 M2],m5,At2,'s');
lmiterm([7 2 2 L1],-m5,Et2,'s');
lmiterm([7 2 2 L2],-m5,Et1,'s');
lmiterm([7 2 3 P2221],t1,t3-1);
lmiterm([7 2 3 P2222],t1,t3-1);
lmiterm([7 2 3 R21],6,1);
lmiterm([7 2 3 R22],6,1);
lmiterm([7 2 3 -M2],At1',m6);
lmiterm([7 2 3 -M2],At2',m6);
lmiterm([7 2 3 -L1],Et2',-m6);
lmiterm([7 2 3 -L2],Et1',-m6);
lmiterm([7 2 4 M2],-m5,2);
lmiterm([7 2 4 -M2],At1',m4);
lmiterm([7 2 4 -M2],At2',m4);
lmiterm([7 2 4 -L1],Et2',-m4);
lmiterm([7 2 4 -L2],Et1',-m4);
lmiterm([7 3 3 R21],-12,1);
lmiterm([7 3 3 R22],-12,1);
lmiterm([7 3 4 -P1221],t1,1);
lmiterm([7 3 4 -P1222],t1,1);
lmiterm([7 3 4 M2],-m6,2);
lmiterm([7 4 4 R21],t1*t1,1);
lmiterm([7 4 4 R22],t1*t1,1);
lmiterm([7 4 4 M2],-m4,2,'s');

lmiterm([-7 1 1 X212_11],1,1,'s');
lmiterm([-7 1 2 X212_12],1,1);
lmiterm([-7 1 2 -X212_21],1,1);
lmiterm([-7 1 3 X212_13],1,1);
lmiterm([-7 1 3 -X212_31],1,1);
lmiterm([-7 1 4 X212_14],1,1);
lmiterm([-7 1 4 -X212_41],1,1);
lmiterm([-7 2 2 X212_22],1,1,'s');
lmiterm([-7 2 3 X212_23],1,1);
lmiterm([-7 2 3 -X212_32],1,1);
lmiterm([-7 2 4 X212_24],1,1);
lmiterm([-7 2 4 -X212_42],1,1);
lmiterm([-7 3 3 X212_33],1,1,'s');
lmiterm([-7 3 4 X212_34],1,1);
lmiterm([-7 3 4 -X212_43],1,1);
lmiterm([-7 4 4 X212_44],1,1,'s');

lmiterm([8 1 1 X211_11],1,1);
lmiterm([8 1 2 X211_12],1,1);
lmiterm([8 1 3 X211_13],1,1);
lmiterm([8 1 4 X211_14],1,1);
lmiterm([8 1 5 X212_11],1,1);
lmiterm([8 1 6 X212_12],1,1);
lmiterm([8 1 7 X212_13],1,1);
lmiterm([8 1 8 X212_14],1,1);
lmiterm([8 2 2 X211_22],1,1);
lmiterm([8 2 3 X211_23],1,1);
lmiterm([8 2 4 X211_24],1,1);
lmiterm([8 2 5 X212_21],1,1);
lmiterm([8 2 6 X212_22],1,1);
lmiterm([8 2 7 X212_23],1,1);
lmiterm([8 2 8 X212_24],1,1);
lmiterm([8 3 3 X211_33],1,1);
lmiterm([8 3 4 X211_34],1,1);
lmiterm([8 3 5 X212_31],1,1);
lmiterm([8 3 6 X212_32],1,1);
lmiterm([8 3 7 X212_33],1,1);
lmiterm([8 3 8 X212_34],1,1);
lmiterm([8 4 4 X211_44],1,1);
lmiterm([8 4 5 X212_41],1,1);
lmiterm([8 4 6 X212_42],1,1);
lmiterm([8 4 7 X212_43],1,1);
lmiterm([8 4 8 X212_44],1,1);
lmiterm([8 5 5 X222_11],1,1);
lmiterm([8 5 6 X222_12],1,1);
lmiterm([8 5 7 X222_13],1,1);
lmiterm([8 5 8 X222_14],1,1);
lmiterm([8 6 6 X222_22],1,1);
lmiterm([8 6 7 X222_23],1,1);
lmiterm([8 6 8 X222_24],1,1);
lmiterm([8 7 7 X222_33],1,1);
lmiterm([8 7 8 X222_34],1,1);
lmiterm([8 8 8 X222_44],1,1);

lmiterm([9 1 1 P1111],1,1);%%%%%%%%%%%%%%%%% J=1 I=1
lmiterm([9 1 1 P1211],t1,1,'s');
lmiterm([9 1 1 P2211],t1*t1,1);
lmiterm([9 1 1 Q11],t1,1);
lmiterm([9 1 1 R11],0.5*t1*t1*t1,1);
lmiterm([9 2 2 P1121],1,1);
lmiterm([9 2 2 P1221],t1,1,'s');
lmiterm([9 2 2 P2221],t1*t1,1);
lmiterm([9 2 2 Q21],t1,1);
lmiterm([9 2 2 R21],0.5*t1*t1*t1,1);
lmiterm([-9 1 1 PP11],1,1);
lmiterm([-9 2 2 PP21],1,1);

lmiterm([10 1 1 P1111],1,1);%%%%%%%%%%%%%%%%%J=1 I=2
lmiterm([10 1 1 P1211],t1,1,'s');
lmiterm([10 1 1 P2211],t1*t1,1);
lmiterm([10 1 1 Q12],t1,1);
lmiterm([10 1 1 R12],0.5*t1*t1*t1,1);
lmiterm([10 2 2 P1121],1,1);
lmiterm([10 2 2 P1221],t1,1,'s');
lmiterm([10 2 2 P2221],t1*t1,1);
lmiterm([10 2 2 Q22],t1,1);
lmiterm([10 2 2 R22],0.5*t1*t1*t1,1);
lmiterm([-10 1 1 PP11],1,1);
lmiterm([-10 2 2 PP21],1,1);


lmiterm([11 1 1 P1112],1,1);%%%%%%%%%%%%%%%%% J=2 I=1
lmiterm([11 1 1 P1212],t1,1,'s');
lmiterm([11 1 1 P2212],t1*t1,1);
lmiterm([11 1 1 Q11],t1,1);
lmiterm([11 1 1 R11],0.5*t1*t1*t1,1);
lmiterm([11 2 2 P1122],1,1);
lmiterm([11 2 2 P1222],t1,1,'s');
lmiterm([11 2 2 P2222],t1*t1,1);
lmiterm([11 2 2 Q21],t1,1);
lmiterm([11 2 2 R21],0.5*t1*t1*t1,1);
lmiterm([-11 1 1 PP12],1,1);
lmiterm([-11 2 2 PP22],1,1);

lmiterm([12 1 1 P1112],1,1);%%%%%%%%%%%%%%%%% J=2 I=2
lmiterm([12 1 1 P1212],t1,1,'s');
lmiterm([12 1 1 P2212],t1*t1,1);
lmiterm([12 1 1 Q12],t1,1);
lmiterm([12 1 1 R12],0.5*t1*t1*t1,1);
lmiterm([12 2 2 P1122],1,1);
lmiterm([12 2 2 P1222],t1,1,'s');
lmiterm([12 2 2 P2222],t1*t1,1);
lmiterm([12 2 2 Q22],t1,1);
lmiterm([12 2 2 R22],0.5*t1*t1*t1,1);
lmiterm([-12 1 1 PP12],1,1);
lmiterm([-12 2 2 PP22],1,1);

lmiterm([-13 1 1 P1111],1,1);
lmiterm([-13 1 3 P1211],1,1);
lmiterm([-13 2 2 P1121],1,1);
lmiterm([-13 2 4 P1221],1,1);
lmiterm([-13 3 3 P2211],1,1);
lmiterm([-13 4 4 P2221],1,1);

lmiterm([-14 1 1 P1112],1,1);
lmiterm([-14 1 3 P1212],1,1);
lmiterm([-14 2 2 P1122],1,1);
lmiterm([-14 2 4 P1222],1,1);
lmiterm([-14 3 3 P2212],1,1);
lmiterm([-14 4 4 P2222],1,1);

lmiterm([-15 1 1 Q11],1,1);
lmiterm([-15 2 2 Q21],1,1);

lmiterm([-16 1 1 Q12],1,1);
lmiterm([-16 2 2 Q22],1,1);

lmiterm([-17 1 1 R11],1,1);
lmiterm([-17 2 2 R21],1,1);

lmiterm([-18 1 1 R12],1,1);
lmiterm([-18 2 2 R22],1,1);

lmiterm([-19 1 1 PP11],1,1);
lmiterm([-19 2 2 PP21],1,1);

lmiterm([-20 1 1 PP12],1,1);
lmiterm([-20 2 2 PP22],1,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% P1大于P2
lmiterm([21 1 1 P1112],1,1);
lmiterm([21 1 3 P1212],1,1);
lmiterm([21 2 2 P1122],1,1);
lmiterm([21 2 4 P1222],1,1);
lmiterm([21 3 3 P2212],1,1);
lmiterm([21 4 4 P2222],1,1);

lmiterm([-21 1 1 P1111],1,1);
lmiterm([-21 1 3 P1211],1,1);
lmiterm([-21 2 2 P1121],1,1);
lmiterm([-21 2 4 P1221],1,1);
lmiterm([-21 3 3 P2211],1,1);
lmiterm([-21 4 4 P2221],1,1);

lmiterm([22 1 1 Q12],1,1);
lmiterm([22 2 2 Q22],1,1);

lmiterm([-22 1 1 Q11],1,1);
lmiterm([-22 2 2 Q21],1,1);

lmiterm([23 1 1 R12],1,1);
lmiterm([23 2 2 R22],1,1);

lmiterm([-23 1 1 R11],1,1);
lmiterm([-23 2 2 R21],1,1);

lmiterm([-24 1 1 r],1,1);
 
lmis=getlmis;
c=[1 zeros(1,442)];
[copt,xopt]=mincx(lmis,c,[1e-10,10000,0,0,0]);
r=dec2mat(lmis,xopt,r);
rt=sqrt(r)

% if isempty(copt)==0
%     r=dec2mat(lmis,xopt,r);
%     rt=sqrt(r)
%     Value=[Value;rt,m1];
% end
%         
%     end
% end

        

% lmis=getlmis;
% [tmin,xfeas]=feasp(lmis);
% 
% K1=dec2mat(lmis,xfeas,K1);
% K2=dec2mat(lmis,xfeas,K2);
% Kt1=dec2mat(lmis,xfeas,Kt1);
% Kt2=dec2mat(lmis,xfeas,Kt2);
% M1=dec2mat(lmis,xfeas,M1);
% M2=dec2mat(lmis,xfeas,M2);
% L1=dec2mat(lmis,xfeas,L1);
% L2=dec2mat(lmis,xfeas,L2);
% 
% K11=K1*inv(M1')
% K22=K2*inv(M1')
% Kt11=Kt1*inv(M1')
% Kt22=Kt2*inv(M1')
% L11=inv(M2')*L1;
% L22=inv(M2')*L2;
% 
% 
% PP11=dec2mat(lmis,xfeas,PP11);
% PP12=dec2mat(lmis,xfeas,PP12);
% 
% PP21=dec2mat(lmis,xfeas,PP21)
% PP22=dec2mat(lmis,xfeas,PP22)
% 
% P11=inv(M1)*PP11*inv(M1')
% P12=inv(M1)*PP12*inv(M1')
% 
% 
% 
% 
