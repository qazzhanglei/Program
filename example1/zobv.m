function [sys,x0,str,ts] = zobv(t,x,u,flag)
switch flag,
case 0,
    [sys,x0,str,ts]=mdlInitializeSizes;
case 1,
    sys=mdlDerivatives(t,x,u);
case 3,
    sys=mdlOutputs(t,x,u);
case {1,2,4,9}
    sys=[];
otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end
function [sys,x0,str,ts]=mdlInitializeSizes
sizes = simsizes;
sizes.NumContStates  = 2;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 2;
sizes.NumInputs      = 7;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 0;
sys = simsizes(sizes);
x0  = [0.5;-0.4];
str = [];
ts  = [];
function sys=mdlDerivatives(t,x,u)
x1=u(1);
x2=u(2);

ut=u(3);

xpt1=u(4);
xpt2=u(5);

xd1=u(6);
xd2=u(7);

xpt=[xpt1 xpt2]';


A1=[-0.1125 -0.02;1 0];
A2=[-0.1125 -1.527;1 0];
At1=[-0.0125 -0.005;0 0];
At2=[-0.0125 -0.23;0 0];
B1=[1;0];
B2=[1;0];
Bw1=[1;0];
Bw2=[1;0];

wt=sqrt(t)*exp(-t/2);

h1=1-x2^2/2.25;
h2=1-h1;
h3=-2*x2*xd2/2.25 ;

if(h3<=0)
      L1=[  1.4316; 1.1747];
      L2=[-0.1854;  1.2497];
else
      L1=[1.2523;   1.2163];
      L2=[-0.0877;   1.7865];
end



dx=h1*(A1*x+At1*xpt+B1*ut+Bw1*wt+L1*( x2-x(2) ) )+h2*(A2*x+At2*xpt+B2*ut+Bw2*wt+L2*(x2-x(2)));
sys(1)=dx(1);
sys(2)=dx(2);
function sys=mdlOutputs(t,x,u)
x1p=x(1);x2p=x(2);
sys(1)=x1p;
sys(2)=x2p;