clc
clear all
close all
%%

x=1;0.4;0.4;0.1;
c=0;

sigma=1;

rbf=exp(-(x-c)^2/sigma)

rbf2=radbas(x)