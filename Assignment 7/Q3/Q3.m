clear all; close all; clc;
Scores = [6 8 2 7 8 1 8 5 4 9 2 10 6 7 8 4 6 2 10 8 9 8 10 8 2 7 7 8 4 10];
x = [0 1 2 3 4 5 6 7 8 9 10];
avg = Average(Scores)
var = Variance(Scores)
std = StandardDeviation(Scores)
frequency = Freq(Scores, 10)
%p = NormFreq(Scores, 4)Scores = [6 8 2 7 8 1 8 5 4 9 2 10 6 7 8 4 6 2 10 8 9 8 10 8 2 7 7 8 4 10];
pmf=[];
for i = 1:11
    pmf(i) = NormFreq(Scores, x(i));
end    
pmf
t = 0:10;
stem(t,pmf)
grid;


