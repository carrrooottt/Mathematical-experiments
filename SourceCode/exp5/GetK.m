function res = GetK(n,C,M,type)
% GetK - 根据C=K*M公式，由C M反求二阶K
%
% Syntax: res = GetK(n,C,M)
%
% 其中res为K矩阵，n为K中四个数字的最大取值，C是密文，M是明文

flag=0;
if type=='KM'
    for a = 1:n
        for b = 1:n
            for c = 1:n
                for d = 1:n
                    K=[a,b;c,d];
                    L=mod(K*M,26);
                    if C==L
                        flag=1;
                        res=K;
                        break
                    end
                end
                if flag==1
                    break;
                end
            end
            if flag==1
                break;
            end
        end
        if flag==1
            break;
        end
    end
elseif type=='MK'
    for a = 1:n
        for b = 1:n
            for c = 1:n
                for d = 1:n
                    K=[a,b;c,d];
                    L=mod(M*K,26);
                    if C==L
                        flag=1;
                        res=K;
                        break
                    end
                end
                if flag==1
                    break;
                end
            end
            if flag==1
                break;
            end
        end
        if flag==1
            break;
        end
    end
end
end
