function [sys,x0,str,ts] = zzzzctrl(t,x,u,flag)
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

h1=sin(x1)^2;  
h2=1-h1;
h3=2*sin(x1)*cos(x1)*xd1


if(h3<=0)
K1=[-0.1336   -1.2322];
K2=[ -0.0350   -2.6685];
Kt1=[-0.0395    0.0086];
Kt2=[ -0.2234    0.3272];
else
K1=[ -0.1400   -1.1550];
K2=[  -0.5192   -2.9361];
Kt1=[ -0.0288   -0.0267];
Kt2=[-0.1794    0.1330];
end



ut1=K1*xp+Kt1*xpt;
ut2=K2*xp+Kt2*xpt;

h1+h2;
ut=(h1*ut1+h2*ut2)/(h1+h2);

sys(1)=ut;