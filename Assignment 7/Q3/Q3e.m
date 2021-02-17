clear all; close all; clc;
Scores = [6 8 2 7 8 1 8 5 4 9 2 10 6 7 8 4 6 2 10 8 9 8 10 8 2 7 7 8 4 10];
x = [0 1 2 3 4 5 6 7 8 9 10];
Mean = 0;
for i = 1:11
   Mean = Mean + (x(i) * NormFreq(Scores, x(i))); 
end
Mean
Var = 0;
Y = [];
for i = 1:11
    Y(i) = (x(i) - Mean).^2;
end    
Y;
for i = 1:11
   Var = Var + (Y(i) * NormFreq(Scores, x(i)));
end    
Var
Std = Var.^0.5
M=mean(Scores)
V = var(Scores)
S = std(Scores)