clear all;
%原始投入产出值
X=[30 20 50;
20 30 35;
16 18 2];
Y=[150;115;64];                  % 原始最终产品
x_total=[250 200 100];           % 原始总产品
x_rep = repmat( x_total,3,1);    % 复制3份，扩展为3x3矩阵
A=X./x_rep;                      % 求直接消耗系数
delta_y=[-30;0;36];              % y的变化量
current_Y=Y+delta_y;             % 现在的Y
% 由x=(I-A)^-1*y得
current_x_total=(eye(3)-A)\current_Y;
current_x_rep=repmat(current_x_total',3,1);
% 在技术水平没有显著提高的条件下，假设直接消耗系数不变
% 即可求得各产品与各部门之间的变化
current_X=current_x_rep.*A;
