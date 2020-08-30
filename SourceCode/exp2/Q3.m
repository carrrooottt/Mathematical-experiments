clear all
n=3;
syms A B C D; 
for i=1:n
  for j=1:n
    A(i,j)=sym (['a',num2str(i),num2str(j)]);
    B(i,j)=sym (['b',num2str(i),num2str(j)]);
    C(i,j)=sym (['c',num2str(i),num2str(j)]);
  	D(i,j)=sym (['d',num2str(i),num2str(j)]);
	end
end
res=det([A B;C D])-det([A*D-A*C*inv(A)*B]);
