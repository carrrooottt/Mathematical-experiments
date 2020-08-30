function maxVal = q3_1(n)
    % 通过Monte Carlo法求最大值
    x = unifrnd(-2 * pi, 2 * pi, 1, n);
    f_x = (1 - x.^2) .* sin(3 * x);
    maxVal = max(f_x);
    % 绘制图形
    draw_x = -2 * pi:0.001:2 * pi;
    draw_y = (1 - draw_x.^2) .* sin(3 * draw_x);
    plot(draw_x, draw_y);
end
