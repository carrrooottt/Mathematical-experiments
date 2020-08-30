function dx = odefun3(t, x)
    dx = zeros(2, 1); % a column vector
    dx(1) = x(2); %第一个方程右边
    dx(2) = -20 * x(2) - 100 * x(1); %第二个方程右边
