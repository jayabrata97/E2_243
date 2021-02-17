close all;clear all;clc;
H = [2,2+i,4; 2-i,3,i; 4,-i,1]
[V,D]=eig(H)
eig(H)