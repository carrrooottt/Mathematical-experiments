clear all
Y=[6,9;9,14;18,7;];%明文
A=[1,-1,1; 1,1,-1; -1,1,1;];
X = A * Y; %密文
INV_A = inv(A);
M = mod(INV_A * X,26); %恢复明文


C=[15,10,23,16,9,19,23,1,26,21,24,1,21,21,9,19,5,1,2,1,21;
3,18,19,9,16,12,2,8,1,1,13,13,12,16,10,10,15,20,5,14,8];
K=[sym(['a']),sym(['b']);sym(['c']),sym(['d'])]
M=C*inv(K)
M=[20 3;1 15];
K=inv(M)*C

[ (15*d)/(a*d - b*c) - (3*b)/(a*d - b*c), (10*d)/(a*d - b*c) - (18*b)/(a*d - b*c), (23*d)/(a*d - b*c) - (19*b)/(a*d - b*c), (16*d)/(a*d - b*c) - (9*b)/(a*d - b*c), (9*d)/(a*d - b*c) - (16*b)/(a*d - b*c), (19*d)/(a*d - b*c) - (12*b)/(a*d - b*c), (23*d)/(a*d - b*c) - (2*b)/(a*d - b*c), d/(a*d - b*c) - (8*b)/(a*d - b*c), (26*d)/(a*d - b*c) - b/(a*d - b*c), (21*d)/(a*d - b*c) - b/(a*d - b*c), (24*d)/(a*d - b*c) - (13*b)/(a*d - b*c), d/(a*d - b*c) - (13*b)/(a*d - b*c), (21*d)/(a*d - b*c) - (12*b)/(a*d - b*c), (21*d)/(a*d - b*c) - (16*b)/(a*d - b*c), (9*d)/(a*d - b*c) - (10*b)/(a*d - b*c), (19*d)/(a*d - b*c) - (10*b)/(a*d - b*c), (5*d)/(a*d - b*c) - (15*b)/(a*d - b*c), d/(a*d - b*c) - (20*b)/(a*d - b*c), (2*d)/(a*d - b*c) - (5*b)/(a*d - b*c), d/(a*d - b*c) - (14*b)/(a*d - b*c),]
[ , , , (9*a)/(a*d - b*c) - (16*c)/(a*d - b*c), (16*a)/(a*d - b*c) - (9*c)/(a*d - b*c), (12*a)/(a*d - b*c) - (19*c)/(a*d - b*c), (2*a)/(a*d - b*c) - (23*c)/(a*d - b*c), (8*a)/(a*d - b*c) - c/(a*d - b*c), a/(a*d - b*c) - (26*c)/(a*d - b*c), a/(a*d - b*c) - (21*c)/(a*d - b*c), (13*a)/(a*d - b*c) - (24*c)/(a*d - b*c), (13*a)/(a*d - b*c) - c/(a*d - b*c), (12*a)/(a*d - b*c) - (21*c)/(a*d - b*c), (16*a)/(a*d - b*c) - (21*c)/(a*d - b*c), (10*a)/(a*d - b*c) - (9*c)/(a*d - b*c), (10*a)/(a*d - b*c) - (19*c)/(a*d - b*c), (15*a)/(a*d - b*c) - (5*c)/(a*d - b*c), (20*a)/(a*d - b*c) - c/(a*d - b*c), (5*a)/(a*d - b*c) - (2*c)/(a*d - b*c), (14*a)/(a*d - b*c) - c/(a*d - b*c), (8*a)/(a*d - b*c) - (21*c)/(a*d - b*c)]
eq(1)= (21*d)/(a*d - b*c) - (8*b)/(a*d - b*c)==20
eq(2)=(3*a)/(a*d - b*c) - (15*c)/(a*d - b*c)==1
eq(3)=(18*a)/(a*d - b*c) - (10*c)/(a*d - b*c)==3
eq(4)=(19*a)/(a*d - b*c) - (23*c)/(a*d - b*c)==15


(21*d)/(a*d - b*c) - (8*b)/(a*d - b*c)-20;
(3*a)/(a*d - b*c) - (15*c)/(a*d - b*c)-1;
(18*a)/(a*d - b*c) - (10*c)/(a*d - b*c)-3;
(19*a)/(a*d - b*c) - (23*c)/(a*d - b*c)-15

  syms 
  [x1,x2,x3,x4]=solve('(19*a)/(a*d - b*c) - (23*c)/(a*d - b*c)-15','(18*a)/(a*d - b*c) - (10*c)/(a*d - b*c)-3','(3*a)/(a*d - b*c) - (15*c)/(a*d - b*c)-1','(21*d)/(a*d - b*c) - (8*b)/(a*d - b*c)-20','a','b','c','d')
  syms a b c d
  [x1,x2,x3,x4]=solve(,[a,b,c,d])

  M=[20 1;13 15];
  C=[13 18;27 8];
  INV_M=inv(M)
  DET_M=det(M)
  INV_M=mod(INV_M.*DET_M,26)
  mod(C*INV_M,26)
  