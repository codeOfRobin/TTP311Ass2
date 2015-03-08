[myT myY]=ode45(@Diffeqq,[0 24],[8.837,0.1,0.1],[],513,0.55555,0.1,8.837);
[myT2 myY2]=ode45(@Diffeqq,[0 24],[8.837,0.1,0.1],[],523,0.55555,0.1,8.837);
[myT3 myY3]=ode45(@Diffeqq,[0 24],[8.837,0.1,0.1],[],533,0.5555,0.1,8.837);

figure('name','Effect of temperature')

subplot(3,1,1)
plot(myT,myY(:,1),myT2,myY2(:,1),myT3,myY3(:,1));
title('plot of l at 3 different temperatures')
legend('240 degrees','250 degrees','260 degrees')
xlabel('time')
ylabel('concentration of caprolactam')

subplot(3,1,2)
plot(myT,myY(:,2),myT2,myY2(:,2),myT3,myY3(:,2));
title('plot of p at 3 different temperatures')
legend('240 degrees','250 degrees','260 degrees')
xlabel('time')
ylabel('concentration of polymers')

subplot(3,1,3)
plot(myT,myY(:,3),myT2,myY2(:,3),myT3,myY3(:,3));
title('plot of p1 at 3 different temperatures')
legend('240 degrees','250 degrees','260 degrees')
xlabel('time')
ylabel('concentration of single length monomer')

[myT myY]=ode45(@Diffeqq,[0 24],[8.837,0.1,0.1],[],533,0,0.1,8.837);
[myT2 myY2]=ode45(@Diffeqq,[0 24],[8.837,0.1,0.1],[],533,0.05555,0.1,8.837);
[myT3 myY3]=ode45(@Diffeqq,[0 24],[8.837,0.1,0.1],[],533,0.5555,0.1,8.837);
[myT4 myY4]=ode45(@Diffeqq,[0 24],[8.837,0.1,0.1],[],533,2.7777,0.1,8.837);

figure('name','Effect of water concentration')
subplot(3,1,1)
plot(myT,myY(:,1),myT2,myY2(:,1),myT3,myY3(:,1),myT4,myY4(:,2));
title('plot of l at 3 different water concentrations')
legend('0% wt','0.1% wt','1% wt','5% wt');
xlabel('time')
ylabel('concentration of caprolactam')

subplot(3,1,2)
plot(myT,myY(:,2),myT2,myY2(:,2),myT3,myY3(:,2),myT4,myY4(:,2));
title('plot of p at 3 different water concentrations')
legend('0% wt','0.1% wt','1% wt','5% wt');
xlabel('time')
ylabel('concentration of caprolactam')

subplot(3,1,3)
plot(myT,myY(:,3),myT2,myY2(:,3),myT3,myY3(:,3),myT4,myY4(:,3));
title('plot of p1 at 3 different water concentrations')
legend('0% wt','0.1% wt','1% wt','5% wt');
xlabel('time')
ylabel('concentration of caprolactam')