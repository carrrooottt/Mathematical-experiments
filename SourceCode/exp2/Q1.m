n=10;
% 建立符号矩阵
syms A;
for i=1:n
	A(i)=sym (['a',num2str(i)]);
end
% 建立题目中的矩阵
for i=1:n-1
	X(i,i+1)=A(i);
end
X(n,1)=A(n);
% 对X矩阵求逆
result=X^-1;