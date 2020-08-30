function maxVal = q3_3(n)
    % 通过Monte Carlo法求f(x,y)最大值
    x = unifrnd(-1.5, 1.5, 1, n);
    y = unifrnd(-1.5, 1.5, 1, n);
    f_xy = (x.^2 + 2 * y.^2 + x .* y) .* exp(-x.^2 - y.^2);
    maxVal = max(f_xy);

    % 通过imagesc绘制f(x,y)的图形
    all_x = -1.5:0.01:1.5;
    all_y = -1.5:0.01:1.5;
    [X, Y] = meshgrid(all_x, all_y);
    Z = (X.^2 + 2 * Y.^2 + X .* Y) .* exp(-X.^2 - Y.^2);
    % colormap('jet')
    % imagesc(all_x, all_y, Z); hold on
    waterfall(all_x, all_y, Z); hold on
end
