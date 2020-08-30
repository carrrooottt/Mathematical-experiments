n=5;
% 第一小问
syms ax ay A;
for j=1:n
    ax(1,j)=sym (['a',num2str(j)]);
    ay(j,1)=sym (['b',num2str(j)]);
end
A=ax*ay;
ra=rank(A);
% 第二小问，建立变量k，通过solve求解
syms k;
res=solve(A*A-k*A==0,k);
