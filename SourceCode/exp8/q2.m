% 原始测量数据
x = [0, 3, 5, 7, 9, 11, 12, 13, 14, 15];
y = [0, 1.2, 1.7, 2, 2.1, 2, 1.8, 1.2, 1, 1.6];

xi = [0:0.1:15];
% 线性插值
y_linear = interp1(x, y, xi,  'linear');
figure(1)
plot(x, y,  'x', xi, y_linear)
legend('测量数据',  '线性插值')
axis equal  %各坐标轴同比例
% 导出 y_linear 数据到 “线性插值.txt”
y_linear_Data = reshape([y_linear, zeros(1, 160 - length(y_linear))], [10, 16])';
save('线性插值.txt',  'y_linear_Data',  '-ascii')

% 三次样条插值
y_spline = interp1(x, y, xi, 'spline');
figure(2)
plot(x, y, 'x', xi, y_spline)
legend('测量数据','三次样条插值')
axis equal  %各坐标轴同比例
% 导出 y_spline 数据到 “三次样条插值.txt”
y_spline_Data = reshape([y_linear, zeros(1, 160 - length(y_linear))], [10, 16])';
save('三次样条插值.txt',  'y_spline_Data',  '-ascii')
