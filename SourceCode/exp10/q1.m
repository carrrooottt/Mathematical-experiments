%进行10^i次的蒙特卡洛实验
for i = 1:7
    % 有放回的情况
    [a_back(i), b_back(i), c_back(i)] = q1_fun(10^i, 'back');
    % 无放回的情况
    [a_noback(i), b_noback(i), c_noback(i)] = q1_fun(10^i, 'noback');
end

% 将实验结果输出到txt
outputData = [a_back; b_back; c_back; a_noback; b_noback; c_noback]
save('蒙特卡洛实验第一题结果.txt', 'outputData', '-ascii')
