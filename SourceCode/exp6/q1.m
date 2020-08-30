clear 
% 原始数据
m1=[10; 12; 5; 7; 0; 25; 9; 6; 8];
m2=[2; 0; 3; 9; 1; 5; 4; 5; 2];
m3=[14; 12; 11; 25; 2; 35; 17; 16; 12];
m4=[12; 25; 0; 5; 25; 5; 25; 10; 0];
m5=[20; 35; 5; 15; 5; 35; 2; 10; 2];
m6=[38; 60; 14; 47; 33; 55; 39; 35; 6];
m7=[100; 55; 0; 35; 6; 50; 25; 10; 20];
M=[m1,m2,m3,m4,m5,m6,m7];
[M0,jb]=rref(M)
r=length(jb)

%{
上面的运行结果

M0 =

     1     0     1     0     0     0     0
     0     1     2     0     0     0     0
     0     0     0     1     0     0     0
     0     0     0     0     1     0     0
     0     0     0     0     0     1     0
     0     0     0     0     0     0     1
     0     0     0     0     0     0     0
     0     0     0     0     0     0     0
     0     0     0     0     0     0     0


jb =

     1     2     4     5     6     7


r =

     6;


>> 可知他的秩为6，其中一个最大无关组为[m1,m2,m4,m5,m6,m7]


%}

B=[m1,m2,m4,m5,m6,m7];
x3=B\m3;



% 三种新药
nm1=[40,62,14,44,53,50,71,41,14]';
nm2=[162,141,27,102,60,155,118,68,52]';
nm3=[88,67,8,51,7,80,38,21,30]';

B_nm1=[m1,m2,m4,m5,m6,m7,nm1];
B_nm1_0=rref(B_nm1)

B_nm2=[m1,m2,m4,m5,m6,m7,nm2];
B_nm2_0=rref(B_nm2)

B_nm3=[m1,m2,m4,m5,m6,m7,nm3];
B_nm3_0=rref(B_nm3)

%{
B_nm1_0 =

     1     0     0     0     0     0     1
     0     1     0     0     0     0     3
     0     0     1     0     0     0     2
     0     0     0     1     0     0     0
     0     0     0     0     1     0     0
     0     0     0     0     0     1     0
     0     0     0     0     0     0     0
     0     0     0     0     0     0     0
     0     0     0     0     0     0     0


B_nm2_0 =

     1     0     0     0     0     0     3
     0     1     0     0     0     0     4
     0     0     1     0     0     0     2
     0     0     0     1     0     0     0
     0     0     0     0     1     0     0
     0     0     0     0     0     1     1
     0     0     0     0     0     0     0
     0     0     0     0     0     0     0
     0     0     0     0     0     0     0


B_nm3_0 =

     1     0     0     0     0     0     0
     0     1     0     0     0     0     0
     0     0     1     0     0     0     0
     0     0     0     1     0     0     0
     0     0     0     0     1     0     0
     0     0     0     0     0     1     0
     0     0     0     0     0     0     1
     0     0     0     0     0     0     0
     0     0     0     0     0     0     0
%}