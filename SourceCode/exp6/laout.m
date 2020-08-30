function laout(A,m,n)
%用于latex格式输出
%其中A 为矩阵,m,n分别为行数列数,如果m*n大于A 的长度,
%在tex中会用空格输出
clc
fprintf('\n')
A=A(:);
len=length(A);
for i=1:m
    for j=1:n
        pos=(i-1)*n+j;
        if pos<=len
            if j==n
                disp([num2str(A(pos)),'\\ \hline']);
            else
                fprintf('%d &',A(pos));
            end
        else
            if j==n
                disp('\\\hline');
            else
                fprintf('&');
            end
        end
    end
end
end
