function [p, pi_m] = buffonl(d, l, n)%输入平行线间距 d,针长度 l,掷针次数 n;输出相交概率p, pi 的近似值 pi_m

    m = 0; %存放相交次数 for k=l:n

    y = unifrnd(0, 5 * d); %随机产生针中点的纵座标
    
    x=unifrnd(0,pi);%随机产生针与平行线的夹角

    for i = 0:5%有六条平行线，设最底下一条即为x 轴

        if 0 <= (y - i * d) & (y - i * d) <= d / 2 & (y - i * d) <= (l / 2 * sin(x))%判断针是否与下平行线相

            m = m + 1; %记录相交次数

        elseif (y - (i + 1) * d) < 0 & ((i + 1) * d - y) < d / 2 & ((i + 1) * d - y) <= (l / 2 * sin(x))% 判断针是否与上平行线相交

            m = m + 1;

            165
        end

    end



p = m / n; %计算相交频率
pi_m = 2 * l / (d * p); %计算pi 的近似值

end