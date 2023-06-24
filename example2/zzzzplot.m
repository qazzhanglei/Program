
figure(1);
plot(t,x(:,1),'r',t,xp(:,1),'--b','linewidth',2);
legend('$x_1$','$\hat{x}_1$','Interpreter','Latex');

figure(2);
plot(t,x(:,2),'r',t,xp(:,2),'--b','linewidth',2);
legend('$x_2$','$\hat{x}_2$','Interpreter','Latex');
 
figure(3);
plot(t,2.*sin(x(:,1)).*cos(x(:,1)).*xd(:,1),'b','linewidth',1.5);
hold on
plot(t,ut,'b--','linewidth',1);
legend('$\dot{h}_1$','$u$','Interpreter','Latex');

% figure(4);
% plot(t,xd(:,1),'b','linewidth',2);
% legend('$dx_1$','Interpreter','Latex');
% %grid on;
%set(gca,'GridLineStyle',':','GridColor','k', 'GridAlpha',1);
