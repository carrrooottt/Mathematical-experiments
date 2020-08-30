m=3;
n=4;
% 建立题目中的矩阵
syms A B; % A=nxm
for i=1:m
	for j=1:n
	A(j,i)=sym (['a',num2str(j),num2str(i)]);
	B(i,j)=sym (['b',num2str(i),num2str(j)]);
	end
end
Em=eye(m);
En=eye(n);
%三个式子依次为
X1=det([Em B;A En]);
X2=det([En-A*B]);
X3=det([Em-B*A]);
% 作差
result=[X2-X1 X3-X2]
