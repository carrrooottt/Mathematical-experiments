function ode4(vc)
global c; %全局变量
hold on %hold 住图形窗口
tspan=linspace(0,4,100);
for i=1:length(vc);
c= vc(i);
[t,x]= ode45('odefun4',tspan,[1,0]);
text(t(10),x(10,1),['\leftarrow c=',num2str(c)])
plot(t,x(:,1))
end
hold off