function [sys,x0,str,ts] = zzzzobv(t,x,u,flag)
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
x0  = [-0.7;-0.5];
str = [];
ts  = [];
function sys=mdlDerivatives(t,x,u)
x1=u(1);
x2=u(2);

ut=u(3);

xpt1=u(4);
xpt2=u(5);
xpt=[xpt1 xpt2]';

xd1=u(6);
xd2=u(7);

A1=[-0.4 0.2;0.3 -0.6];
A2=[-0.45 0.375;0.15 -0.45];
At1=[-0.1 0.3;0.1 -0.05];
At2=[-0.05 0.1;0.1 -0.25];
B1=[1;0];
B2=[1;0];
Bw1=[0.7;1];
Bw2=[0.5;0.2];
E1=[0.8 0.1];
E2=[0.4 0.9];



wt=cos(t)/((t+1)^2);
% wt=0;

h1=sin(x1)^2;  
h2=1-h1;
h3=2*sin(x1)*cos(x1)*xd1


if(h3<=0)
      L1=[1.4916; 0.1469];
      L2=[ 0.8226;  0.3140];
else
      L1=[0.7760;   0.6295];
      L2=[ 0.7236;  1.0710];
end

dx=h1*(A1*x+At1*xpt+B1*ut+Bw1*wt+L1*( 0.8*(x1-x(1))+0.1*(x2-x(2)) ))+h2*(A2*x+At2*xpt+B2*ut+Bw2*wt+L2*( 0.4*(x1-x(1))+0.9*(x2-x(2)) ));
sys(1)=dx(1);
sys(2)=dx(2);
function sys=mdlOutputs(t,x,u)
x1p=x(1);x2p=x(2);
sys(1)=x1p;
sys(2)=x2p;