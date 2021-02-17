clc;clear all;close all;
%input
A=[1 2 3;5 6 7; 8 11 15];
I=eye(3);
epsilon=0.01
e=eig(A)
for i=1:3
    if abs(e(i))==0
        disp('A is not invertible')
        break
    end
    if abs(e(i))>=1
        disp('Series does not converge')
        break
    end 
    
end



%output
