function [pa, pb, pc] = q1_fun(n, type)
    % type=='back' -> 有放回
    % type=='noback' -> 无放回
    maxRange = [12, 12, 12]; %默认为有放回
    if strcmp(type, 'noback')
        maxRange = [12, 11, 10];    % 修改抽球范围
    end
    pa = 0; pb = 0; pc = 0;
    fa = 0; fb = 0; fc = 0;
    total_win = 0;
    for i = 1:n
        Aball = randi([1, maxRange(1)]); % 1-4为白球，其余为黑球
        if Aball <= 4% A抽中白球
            fa = fa + 1;
            total_win = total_win + 1;
        else
            Bball = randi([1, maxRange(2)]); % 1-4为白球，其余为黑球
            if Bball <= 4% B抽中白球
                fb = fb + 1;
                total_win = total_win + 1;
            else
                Cball = randi([1, maxRange(3)]); % 1-4为白球，其余为黑球
                if Cball <= 4% C抽中白球
                    fc = fc + 1;
                    total_win = total_win + 1;
                end
            end
        end
    end
    pa = fa / total_win; % A抽中白球的概率
    pb = fb / total_win; % B抽中白球的概率
    pc = fc / total_win; % C抽中白球的概率
end
