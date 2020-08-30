clear all
syms i;
for index = 1:8
    i(index) = sym(['i', num2str(index)]);
end
syms eq
eq(1)=i(1)==i(2)+i(3);
eq(2)=i(2)==i(1)+i(4);
eq(3)=i(3)==i(6)+i(5);
eq(4)=i(6)==i(8)+i(7);
eq(5)=50*i(2)+100*i(1)==5;
eq(6)=-50*i(2)+10*i(3)-20*i(4)+40*i(5)==-10;
eq(7)=1000*i(8)+1000*i(6)-40*i(5)==-5;
eq(8)=2000*i(7)+1000*i(8)==15;
res=solve(eq,i);
% 心形线
GraphicHandle = ezplot('x^2+y^2+x-sqrt(x^2+y^2)');
set( GraphicHandle, 'LineWidth', 2 );

% 费马螺线
x=0:0.01*pi:8*pi;
y=x.^1/2;
GraphicHandle = polar(x,y,'-');
set( GraphicHandle, 'LineWidth', 2 );

% 双曲线
GraphicHandle = ezplot('x^2/2-y^2/4-1');
set( GraphicHandle, 'LineWidth', 2 );
grid on;
line([0 0],[-6 6],'LineWidth', 1.5);
line([-6 6],[0 0],'LineWidth', 1.5);

% 抛物线
GraphicHandle = ezplot('x*-3+y^2');
set( GraphicHandle, 'LineWidth', 2 );
grid on;
line([0 0],[-6 6],'LineWidth', 1.5);
line([-6 6],[0 0],'LineWidth', 1.5);


% 椭圆曲线

GraphicHandle = ezplot('y^2-x*(x-1)*(x-2)');
set( GraphicHandle, 'LineWidth', 3 );
grid on;
line([0 0],[-6 6],'LineWidth', 1.5);
line([-6 6],[0 0],'LineWidth', 1.5);


% 画出图中的公式
% 定义微分方程函数
dudt = @(t) u;
% 在(0, 10]上画图
r = linspace(0.01, 3, 500);
dR = dRdr(r);
figure(10);
plot(r, dR, '^b', 'MarkerFaceColor', 'blue', 'DisplayName', 'dR/dr vs r');
xlabel('r', 'FontSize', 16);
ylabel('dR/dr', 'FontSize', 16);
legend('show');

s=-14:0.1:14
a=6./sqrt(100-16.*s.^2+s.^4)
plot(s,a,'r','LineWidth', 1.5)
axis([-15 15 0 1.1]); 
line([0 0],[0 1.1],'LineWidth', 2);
line([-15 15],[0 0],'LineWidth',2);
xlabel('ξ','FontWeight','bold');
ylabel('a','FontWeight','bold');
box off;
