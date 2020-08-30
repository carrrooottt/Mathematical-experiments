function [pa, pb, Awin, Bwin] = q2_fun(n)
    Awin = 0;
    Bwin = 0;
    for k = 1:n
        counter = 0;
        balls = randperm(12, 7); % 随机抽取7个球
        for i = 1:7
            if balls(i) <= 4
                counter = counter + 1; %计算白球个数
            end
        end
        %判断A赢还是B赢
        if counter >= 3
            Awin = Awin + 1;
        else
            Bwin = Bwin + 1;
        end
    end
    %用频率近似概率
    pa = Awin / n;
    pb = Bwin / n;
end
