clc
clear all
close all
%%
Dataset=load('TestData1.txt');

x=Dataset(:,1);
y=Dataset(:,2);

mean_x=mean(x);
min_x=min(x);
max_x=max(x);

x=(mean_x)/(max_x-min_x);
x=[ones(length(x),1),x];

%%
%Code

iterations=100;
alpha=0.7;
m=length(y);
J=zeros(1,iterations);
weights=[rand;rand];

%Calculations
for i=0:iterations
   
    e=(y-x*weights);
    weights(1)=weights(1)+((alpha*e'*x(:,1))/m)    
    weights(2)=weights(2)+((alpha*e'*x(:,2))/m)
    J(i)=(y*x*weights)'*(y*x*weights);
end