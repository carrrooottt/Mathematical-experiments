function maxVal = q3_2(n)
    % 通过Monte Carlo法求最大值
    fx = [];
    x2 = unifrnd(10, 20, 1, n);
    x1 = x2 + 10;
    x3 = unifrnd(-20, 20, 1, n);
    for i = 1:n
        if -x1(i) + 2 * x2(i) + 2 * x3(i) >= 0 && x1(i) + x2(i) + 2 * x3(i) <= 72
            fx = [fx, x1(i) * x2(i) * x3(i)];
        end
    end
    maxVal = max(fx);
    % 通过imagesc绘制图形
    x2 = 10:0.001:20;
    x3 = -5:0.001:16;
    [X, Y] = meshgrid(x2, x3);
    err1 = X + 2 * Y < 10;
    err2 = 2 * X + 2 * Y > 62;
    X(err1) = nan;
    Y(err2) = nan;
    Z = X .* Y .* (X + 10);
    colormap('jet')
    imagesc(x2, x3, Z); hold on
end
