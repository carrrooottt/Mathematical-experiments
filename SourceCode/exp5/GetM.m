function M = GetM(K,C)
% GetM - 根据C=K*M公式，由K C求M
% 
% Syntax: res = GetM(n,C,M)  
% 
% 其中res为M矩阵，n为K中四个数字的最大取值，C是密文，M是明文

Kn=GetAn(K);
M=Kn*C;
end