clc
clear all
close all
%%
dataset=load('TestData2.txt');

x1=dataset(:,1);
x2=dataset(:,2);
y=dataset(:,3);

mean_x1=mean(x1);
min_x1=min(x1);
max_x1=max(x1);
x1=(x1-mean_x1)/(max_x1-min_x1);

mean_x2=mean(x2);
min_x2=min(x2);
max_x2=max(x2);
x2=(x2-mean_x2)/(max_x2-min_x2);

x=[ones(length(x1),1),x1 x2];


weights=inv(x'*x)*x'*y

%Testing
input=[5 6];
input_1=(input(1)-mean_x1)/(max(x1)-min(x1))
input_2=(input(2)-mean_x2)/(max(x2)-min(x2));

%regression

output=weights(1)+weights(2)*input_1+weights(3)*input_2;

disp(output)