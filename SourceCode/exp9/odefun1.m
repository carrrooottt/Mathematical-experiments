function dy= odefun1(x,y)
  dy = zeros(2,1); % a column vector
  dy(1)= y(2); %第一个方程右边
  dy(2)= -y(1)-sin(2*x); %第二个方程右边