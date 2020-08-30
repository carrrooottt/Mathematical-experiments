clear all;
%原始投入产出值
X=[15 30 20;
20 10 60;
30 45 0;];
Y=[35;110;75];                   % 原始最终产品
x_total=[100 200 150];           % 原始总产品
x_rep = repmat( x_total,3,1);    % 复制3份，扩展为3x3矩阵
A=X./x_rep;                      % 求直接消耗系数
current_Y=[50;150;100];          % 现在的Y
% 由x=(I-A)^-1*y得总产出
current_x_total=(eye(3)-A)\current_Y;
% 外部需求分别增加1个单位,总产出增量
delta_x=inv(eye(3)-A);