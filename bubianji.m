clear
clc
x_1=[];  %保存可行域数据
x_2=[];
for x1=-1.5:0.01:1.5  %设置范围   h>0
    for  x2=-1.5:0.01:1.5
         if(1.4407*(1-x2^2/2.25)*x1^2+2*1.4481*(1-x2^2/2.25)*x1*x2+5.1095*(1-x2^2/2.25)*x2^2+1.6996*(x2^2/2.25)*x1^2+2*1.7678*(x2^2/2.25)*x1*x2+5.8376*(x2^2/2.25)*x2^2<=1)         &&(1.6623*(1-x2^2/2.25)*x1^2+2*1.4253*(1-x2^2/2.25)*x1*x2+4.9642*(1-x2^2/2.25)*x2^2+1.4222*(x2^2/2.25)*x1^2+2*1.2720*(x2^2/2.25)*x1*x2+4.5302*(x2^2/2.25)*x2^2<=1)
             %plot(x1,x2,'+'),hold on;  %画可行域散点图
               x_1=[x_1;x1];
               x_2=[x_2;x2];
        end
    end
end
ind=boundary(x_1,x_2,0.1); %最后的数据是边界收窄系数
plot(x_1(ind),x_2(ind),'g','LineWidth',1)
hold on
y_1=[];  %保存可行域数据
y_2=[];
for y1=-1.5:0.01:1.5  %设置范围   h<0
    for  y2=-1.5:0.01:1.5
         if(1.4407*(1-y2^2/2.25)*y1^2+2*1.4481*(1-y2^2/2.25)*y1*y2+5.1095*(1-y2^2/2.25)*y2^2+1.6996*(y2^2/2.25)*y1^2+2*1.7678*(y2^2/2.25)*y1*y2+5.8376*(y2^2/2.25)*y2^2<=2.21)  &&  (1.6623*(1-y2^2/2.25)*y1^2+2*1.4253*(1-y2^2/2.25)*y1*y2+4.9642*(1-y2^2/2.25)*y2^2+1.4222*(y2^2/2.25)*y1^2+2*1.2720*(y2^2/2.25)*y1*y2+4.5302*(y2^2/2.25)*y2^2<=2.21)
              %plot(x1,x2,'+'),hold on;  %画可行域散点图
               y_1=[y_1;y1];
               y_2=[y_2;y2];
        end
    end
end
ind=boundary(y_1,y_2,0.1); %最后的数据是边界收窄系数
plot(y_1(ind),y_2(ind),'--g','LineWidth',1)

legend({'$${M}_{1}$$','$${M}_{2}$$'},'Interpreter','latex');
xlabel({'$${x_1}(t)$$'},'Interpreter','latex');
ylabel({'$${x_2}(t)$$'},'Interpreter','latex');

A1=[-0.1125 -0.02;1 0];
A2=[-0.1125 -1.527;1 0];
At1=[-0.0125 -0.005;0 0];
At2=[-0.0125 -0.23;0 0];
B1=[1;0];
B2=[1;0];
Bw1=[1;0];
Bw2=[1;0];

K1=[-1.6274   -3.5712];
K2=[ -1.9132   -2.3575];
Kt1= [ -0.0123    0.1585];
Kt2 =[-0.0253    0.5074];
XK1=[-1.6274   -3.5712];
XK2=[ -1.9132   -2.3575];
XKt1=[ -0.0123    0.1585];
XKt2=[-0.0253    0.5074];


A1=[-0.1125 -0.02;1 0];
A2=[-0.1125 -1.527;1 0];
At1=[-0.0125 -0.005;0 0];
At2=[-0.0125 -0.23;0 0];
B1=[1;0];
B2=[1;0];
Bw1=[1;0];
Bw2=[1;0];

K1=[-1.6274   -3.5712];
K2=[ -1.9132   -2.3575];
Kt1= [ -0.0123    0.1585];
Kt2 =[-0.0253    0.5074];
XK1=[-1.6274   -3.5712];
XK2=[ -1.9132   -2.3575];
XKt1=[ -0.0123    0.1585];
XKt2=[-0.0253    0.5074];


%% set simulation variables
% system dimention
n=2;
% simulation time-length
Tf=150;
% simulation step-length
step=0.001;
t=0:step:Tf;
mm=fix(Tf/step);
% set variables space-length
XX=zeros(n,mm+1);
UU=zeros(1,mm+1);

XU=zeros(1,mm+1);
YY=zeros(n,mm+1);
ZZ=zeros(n,mm+1);
ZU=zeros(1,mm+1);

RR=zeros(n,mm+1);
RU=zeros(1,mm+1);
% 
WW=zeros(n,mm+1);
WU=zeros(1,mm+1);
% initial value

XX(:,1)=[-0.22;0.49];%%%%%%%%%%(1)
% YY(:,1)=[-0.68;0.49];
YY(:,1)=[-0.84;0.4];
ZZ(:,1)=[-0.54;-0.2];
% RR(:,1)=[0.79;-0.44];
RR(:,1)=[0.84;-0.4];
WW(:,1)=[0.65;0.12];
% WW(:,1)=[0.43;0.27];
% WW(:,1)=[0.68;0.09];
%%%% 隶属度
v1=1-(XX(2,:)).^2/2.25;  
v2=1-v1;

xv1=1-(YY(2,:)).^2/2.25;
xv2=1-xv1;

zv1=1-(ZZ(2,:)).^2/2.25;
zv2=1-zv1;

rv1=1-(RR(2,:)).^2/2.25;
rv2=1-rv1;
% % 
wv1=1-(WW(2,:)).^2/2.25;
wv2=1-wv1;

w=sqrt(t).*exp(-t/2);%%%扰动函数
% w=exp(-100.*t);%%%扰动函数
% system mode
rd=zeros(1,mm+1);
rd(1)=1;
% control mode
sd=zeros(1,mm+1);
sd(1)=1;

%time-delay
tau=t-0.9;
taud=fix(tau/step);
taud(taud<=step)=1;
%% simulation procedure
for i=2:mm+1
        UU(:,i-1)=v1(:,i-1)*(K1*XX(:,i-1)+Kt1*XX(:,taud(i-1)))+v2(:,i-1)*(K2*XX(:,i-1)+Kt2*XX(:,taud(i-1)));
        XX(:,i)=step* (v1(:,i-1)*(A1*XX(:,i-1)+At1*XX(:,taud(i-1))+B1*UU(:,i-1)+Bw1*w(:,i-1))+v2(:,i-1)*(A2*XX(:,i-1)+At2*XX(:,taud(i-1))+B2*UU(:,i-1))+Bw2*w(:,i-1))+XX(:,i-1);
    end
for i=2:mm+1
        XU(:,i-1)=xv1(:,i-1)*(K1*YY(:,i-1)+Kt1*YY(:,taud(i-1)))+xv2(:,i-1)*(K2*YY(:,i-1)+Kt2*YY(:,taud(i-1)));
        YY(:,i)=step* (xv1(:,i-1)*(A1*YY(:,i-1)+At1*YY(:,taud(i-1))+B1*XU(:,i-1)+Bw1*w(:,i-1))+xv2(:,i-1)*(A2*YY(:,i-1)+At2*YY(:,taud(i-1))+B2*XU(:,i-1))+Bw2*w(:,i-1))+YY(:,i-1);
end
    for i=2:mm+1
        ZU(:,i-1)=zv1(:,i-1)*(K1*ZZ(:,i-1)+Kt1*ZZ(:,taud(i-1)))+zv2(:,i-1)*(K2*ZZ(:,i-1)+Kt2*ZZ(:,taud(i-1)));
        ZZ(:,i)=step* (zv1(:,i-1)*(A1*ZZ(:,i-1)+At1*ZZ(:,taud(i-1))+B1*ZU(:,i-1)+Bw1*w(:,i-1))+zv2(:,i-1)*(A2*ZZ(:,i-1)+At2*ZZ(:,taud(i-1))+B2*ZU(:,i-1))+Bw2*w(:,i-1))+ZZ(:,i-1);
%        
    end
     for i=2:mm+1
        RU(:,i-1)=rv1(:,i-1)*(K1*RR(:,i-1)+Kt1*RR(:,taud(i-1)))+rv2(:,i-1)*(K2*RR(:,i-1)+Kt2*RR(:,taud(i-1)));
        RR(:,i)=step* (rv1(:,i-1)*(A1*RR(:,i-1)+At1*RR(:,taud(i-1))+B1*RU(:,i-1)+Bw1*w(:,i-1))+rv2(:,i-1)*(A2*RR(:,i-1)+At2*RR(:,taud(i-1))+B2*RU(:,i-1))+Bw2*w(:,i-1))+RR(:,i-1);
     end
     for i=2:mm+1
        WU(:,i-1)=wv1(:,i-1)*(K1*WW(:,i-1)+Kt1*WW(:,taud(i-1)))+wv2(:,i-1)*(K2*WW(:,i-1)+Kt2*WW(:,taud(i-1)));
        WW(:,i)=step* (wv1(:,i-1)*(A1*WW(:,i-1)+At1*WW(:,taud(i-1))+B1*WU(:,i-1)+Bw1*w(:,i-1))+wv2(:,i-1)*(A2*WW(:,i-1)+At2*WW(:,taud(i-1))+B2*WU(:,i-1))+Bw2*w(:,i-1))+WW(:,i-1);
    end
hold on
plot(XX(1,:),XX(2,:),'b','Linewidth',1);
plot(YY(1,:),YY(2,:),'b','Linewidth',1);
plot(ZZ(1,:),ZZ(2,:),'b','Linewidth',1);
plot(RR(1,:),RR(2,:),'b','Linewidth',1);
plot(WW(1,:),WW(2,:),'b','Linewidth',1);

legend({'$${M}_{1}$$','$${M}_{2}$$'},'Interpreter','latex');
xlabel({'$${x_1}(t)$$'},'Interpreter','latex');
ylabel({'$${x_2}(t)$$'},'Interpreter','latex');
%  hold on
%rectangle('Position',[-1.5 -1.5 3 3]);%画矩形
 %axis([-2 2 -2 2]);  %设定坐标范围