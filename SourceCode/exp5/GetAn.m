function An = GetAn(A)
%GetAn 模26逆矩阵
%
% Syntax: output = GetAn(input)
%
% 输入矩阵A，如果其模26逆矩阵存在的话则返回其模26逆矩阵

DA=round(mod(det(A),26));
for x = 1:100
    if mod(x*DA,26)==1
        res=x;
        An=round(mod(inv(A)*det(A)*res,26));
        break;
    end
end
end
