
figure(1);
plot(t,x(:,1),'r',t,xp(:,1),'--b','linewidth',2);
%grid on;
%set(gca,'GridLineStyle',':','GridColor','k', 'GridAlpha',1);
legend('$x_1$','$\hat{x}_1$','Interpreter','Latex');

figure(2);
plot(t,x(:,2),'r',t,xp(:,2),'--b','linewidth',2);
%grid on;
%set(gca,'GridLineStyle',':','GridColor','k', 'GridAlpha',1);
legend('$x_2$','$\hat{x}_2$','Interpreter','Latex');

% figure(3);
% plot(xd1(:,3),-2/2.25*xd1(:,1).*xd1(:,2),'b','linewidth',2);
% legend('$\dot{h}_1$','Interpreter','Latex');
% hold on
% plot(t,ut,'r','linewidth',2);

figure(3);
plot(t,-2*x(:,2).*xd(:,2)/2.25,'b','linewidth',1.5);
hold on
plot(t,ut,'b--','linewidth',1);
legend('$\dot{h}_1$','$u$','Interpreter','Latex');



