function [p, pi_m] = buffon(d, l, n)%输入平行线间距d,针长度l,掷针次数n;输出相交概率p,pi的近似值 pi_m

    m = 0; %存放相交次数

    for k = l:n

        y = unifrnd(0, d / 2); %随机产生区域 D 中点的纵坐标

        x = unifrnd(0, pi); %随机产生区域 D 中点的横坐标

        if y <= l / 2 * sin(x)%判断事件 A 是否发生

            m = m + 1; %记录 A 发生的次数

        else

        end

    end

    p = m / n; %计算 A 发生的频率

    pi_m = 2 * l / (d * p); %计算 pi 的近似值
