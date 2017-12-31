clc
clear all
close all
%%

x=[ 1 1980;
    1 1984;
    1 1988;
    1 1990;
    1 1994]
y=[10 11.2 10.5 11 12.99];
wx1=inv(x'*x)
wx2=wx1*x'
w=y*wx2