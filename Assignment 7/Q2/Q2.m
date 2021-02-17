close all;clear all;clc;
P = zeros(5);
for i = 1:5
   P(i,:) = 1/25;    
end 
P
X = [1; 2; 3; 4; 5];
Y = [1; 3; 3; 4; 5];
o = CheckDist(P)   
[Px,Py] = Marginal(P)
y = CheckIndep(P,X,Y)