clear all;
% “投入”系数矩阵
A=[0.2 0.3 0.2;
0.4 0.1 0.2;
0.1 0.3 0.2];
% 盈余，即相当于z1...zn,把A转置之后相当于y
profit=[10;5;6];
n = size(profit,1);
W = eye(n) - A'; 
x = W\profit %总投入/总产出

