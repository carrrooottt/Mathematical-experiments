function [z, A] = frat3(z, A, n);
    N = 10; % 最大迭代次数
    s = 0.7; % scale
    Br = [pi / 100; -pi / 4]; % 偏转角

    if n > N% 超出迭代次数
        return
    end

    k = 1;

    if n == 1; % 第1次，画主干z=9i
        plot([z, z + exp(i * A)],  'linewidth', 3 / N * (N - n + 1)); pause(1)
        hold on
        z = z + exp(i * A);
        [z, A] = frat3(z, A, n + 1); % 第2次，画分支
    else

        while k < 3% k＝1画左支,k=2画又支
            A = A + Br(k);
            leng = s^(n - 1);
            plot([z, z + leng * exp(i * A)],  'linewidth', 3 / N * (N - n + 1));
%             pause(0.01)
            z = z + leng * exp(i * A);
            [z, A] = frat3(z, A, n + 1); % 第n+1次，画分支
            A = A + pi;
            z = z + leng * exp(i * A);
            A = A + pi - Br(k);
            k = k + 1;
        end

    end

end
