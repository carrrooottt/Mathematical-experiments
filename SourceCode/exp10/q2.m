clear all; clc;
%进行10^i次的蒙特卡洛实验
% pa=zeros(1,7);
% pb=zeros(1,7);
% Awin=zeros(1,7);
% Bwin=zeros(1,7);
for i = 1:7
    [pa(i), pb(i), Awin(i), Bwin(i)] = q2_fun(10^i);
end

% 将实验结果输出到txt
outputData = [pa; pb; Awin; Bwin];

save('蒙特卡洛实验第二题结果.txt', 'outputData', '-ascii')