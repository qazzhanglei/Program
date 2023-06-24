function [sys,x0,str,ts]=zzzzplant(t,x,u,flag)
switch flag,
case 0,
    [sys,x0,str,ts]=mdlInitializeSizes;
case 1,
    sys=mdlDerivatives(t,x,u);
case 3,
    sys=mdlOutputs(t,x,u);
case {2, 4, 9 }
    sys = [];
otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end
function [sys,x0,str,ts]=mdlInitializeSizes
sizes = simsizes;
sizes.NumContStates  = 2;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 2;
sizes.NumInputs      = 3;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 0;
sys=simsizes(sizes);
x0=[-0.5;-0.4];
str=[];
ts=[];
function sys=mdlDerivatives(t,x,u)
xt1=u(1);
xt2=u(2);

xt=[xt1 xt2]';
ut=u(3);



A1=[-0.4 0.2;0.3 -0.6];
A2=[-0.45 0.375;0.15 -0.45];
At1=[-0.1 0.3;0.1 -0.05];
At2=[-0.05 0.1;0.1 -0.25];
B1=[1;0];
B2=[1;0];
Bw1=[0.7;1];
Bw2=[1.2;0.2];

wt=cos(t)/((t+1)^2);
% wt=0;
% 
h1=sin(x(1))^2;  
h2=1-h1;


dx=h1*(A1*x+At1*xt+B1*ut+Bw1*wt)+h2*(A2*x+At2*xt+B2*ut+Bw2*wt);

sys(1)=dx(1);
sys(2)=dx(2);


function sys=mdlOutputs(t,x,u)
sys(1)=x(1);
sys(2)=x(2);