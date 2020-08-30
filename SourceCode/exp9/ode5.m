function ode5(cval)
global c
c=cval; %阻尼系数
tspan=linspace(0,4,200);
[t,x1]= ode45('odefun5',tspan,[1,0]);
[t,x2]= ode45('odefun4',tspan,[1,0]);
plot(t,x1(:,1),'r.', t, x2(:,1),'b');
legend('有外力','无外力')