function [sys,x0,str,ts] = zctrl(t,x,u,flag)
switch flag,
case 0,
    [sys,x0,str,ts]=mdlInitializeSizes;
case 3,
    sys=mdlOutputs(t,x,u);
case {2,4,9}
    sys=[];
otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end
function [sys,x0,str,ts]=mdlInitializeSizes
sizes = simsizes;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 1;
sizes.NumInputs      = 8;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 0;
sys = simsizes(sizes);
x0  = [];
str = [];
ts  = [];
function sys=mdlOutputs(t,x,u)
x1=u(1);
x2=u(2);

x1p=u(3);
x2p=u(4);
xp=[x1p x2p]';

xd1=u(5);
xd2=u(6);

x1pt=u(7);
x2pt=u(8);
xpt=[x1pt x2pt]';

h1=1-x2^2/2.25;
h2=1-h1;
h3=-2*x2*xd2/2.25;


if(h3<=0)
K1=[ -1.1552   -2.6162];
K2=[  -1.3910   -2.7894];
Kt1=[ 0.1313    0.0302];
Kt2=[ 0.0991    0.1614];
else
K1=[ -0.3246   -2.0252];
K2=[   -0.5885   -3.4705];
Kt1=[0.0521    0.0201];
Kt2=[0.1090    0.1927];
end

ut1=K1*xp+Kt1*xpt;
ut2=K2*xp+Kt2*xpt;

h1+h2;
ut=(h1*ut1+h2*ut2)/(h1+h2);

sys(1)=ut;