clear all
Y=[6,9;9,14;18,7;];%����
A=[1,-1,1; 1,1,-1; -1,1,1;];
X = A * Y; %����
INV_A = inv(A);
K = mod(INV_A,26); %������Կ
M = mod(K * X,26); %�ָ�����