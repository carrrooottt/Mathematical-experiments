function dy = odefun2(t, y)
    dy = zeros(2, 1); % a column vector
    dy(1) = y(2); %第一个方程右边
    dy(2) = -0.01 * y(2) - sin(y(1)); %第二个方程右边
