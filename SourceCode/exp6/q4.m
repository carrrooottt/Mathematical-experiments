clear all
clc
A=[1,1/2,0; 0,1/2,1; 0,0,0;];
[pc,lambda] = eig(A); %求A 的特征值和对应的特征向量
[Y,I] = sort(diag(abs(lambda)),'descend');%对特征值的绝对值降序排列
temp = diag(lambda);
lambda = temp(I)     %输出按特征值的绝对值降序排列的特征值
lambda_norm=[norm(lambda(1));norm(lambda(2));norm(lambda(3))]
pc = pc(:,I)        %与特征值对应的特征向量

%{
  
lambda =
    1.0000
    0.5000
         0
lambda_norm =
    1.0000
    0.5000
        0
pc =
    1.0000   -0.7071    0.4082
         0    0.7071   -0.8165
         0         0    0.4082

%}
n=20;
x_n=[1; 0; 0]+0.4*0.5^(n)*[-0.7071; 0.7071; 0]


n=[1.0000,-0.7071;
    0,0.7071];
rs=[0.8; 0.2];
c=n\rs
% c=rs\n

n=0:10;
x_n=1-0.4*0.5.^n*0.7071;
str=[repmat(' n:',5,1) num2str(n') repmat(', x_n:',5,1) num2str(x_n')];
plot(n,x_n)
text(n,x_n,cellstr(str))