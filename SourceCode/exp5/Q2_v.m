clear all
C=[21 18; 3 19];
% C=[15 23;10 16];
M=[20 3;1 15];
full_C=[15,10,23,16,9,19,23,1,26,21,24,1,21,21,9,19,5,1,2,1,21,3,18,19,9,16,12,2,8,1,1,13,13,12,16,10,10,15,20,5,14,8];

% ”…C=K*M «Û K

Kn=mod(M*GetAn(C),26);
counter=1;
syms Full_M
for i = 1:2:length(full_C)
    dC=[full_C(i);full_C(i+1)];
    dM=mod(Kn*dC,26);
    Full_M(i)=dM(1);
    Full_M(i+1)=dM(2);
end
