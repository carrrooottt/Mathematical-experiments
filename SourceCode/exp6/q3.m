A1=[0.4,0.3;
    -0.325,1.2];
[pc,lambda] = eig(A1); %求A 的特征值和对应的特征向量
[Y,I] = sort(diag(abs(lambda)),'descend');%对特征值的绝对值降序排列
temp = diag(lambda);
lambda = temp(I);     %输出按特征值的绝对值降序排列的特征值
pc = pc(:,I);        %与特征值对应的特征向量

%{
  lambda =

    1.0500
    0.5500


pc =

   -0.4191   -0.8944
   -0.9080   -0.4472

%}

A2=[0.4,0.3;
    -0.5,1.2];
[pc,lambda] = eig(A2); %求A 的特征值和对应的特征向量
[Y,I] = sort(diag(abs(lambda)),'descend');%对特征值的绝对值降序排列
temp = diag(lambda);
lambda = temp(I) %输出按特征值的绝对值降序排列的特征值
pc = pc(:,I) %与特征值对应的特征向量

%{
  lambda =

    0.9000
    0.7000


pc =

   -0.5145   -0.7071
   -0.8575   -0.7071

%}
syms p;
Ap=[0.4,0.3;
    -p,1.2];
[pc,lambda] = eig(Ap);
[Y,I] = sort(diag(abs(lambda)),'descend');%对特征值的绝对值降序排列
temp = diag(lambda);
lambda = temp(I) %输出按特征值的绝对值降序排列的特征值
p=solve(lambda(1)==1)
Ap=[0.4,0.3;
    -p,1.2];
[pc,lambda] = eig(Ap);
[Y,I] = sort(diag(abs(lambda)),'descend');%对特征值的绝对值降序排列
temp = diag(lambda);
lambda = temp(I) %输出按特征值的绝对值降序排列的特征值
pc = pc(:,I) %与特征值对应的特征向量