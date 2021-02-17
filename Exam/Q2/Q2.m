clear all;close all; clc;
A = randn(3,3)
%[e,mul]=findAM(A)
y=findAM(A)
o=findGM(A)
d=isDiagonalizable(A)
[P,D,P_inverse]=diagonalize(A)