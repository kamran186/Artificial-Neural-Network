clc
clear all
close all
%%


xf1=[1 2 1 2];
xf2=[1 1 -1 -1];

yf1=[4 5 5 6];
yf2=[0 1 -1 0];


plot(xf1,xf2,'ob','markerfacecolor','b')
hold on
plot(yf1,yf2,'sb','markerfacecolor','y')

s1=[xf1(2) xf2(2) 1];
s2=[xf1(4) xf2(4) 1];
s3=[yf1(1) yf2(1) 1];


a=[sum(s1.*s1) sum(s2.*s1) sum(s3.*s1);
   sum(s1.*s2) sum(s2.*s2) sum(s3.*s2);
   sum(s1.*s3) sum(s2.*s3) sum(s3.*s3);
   ];
y=[-1 -1 +1];
x=y/a;
p=x(1);
q=x(2)
r=x(3);

w=[x(1)*s1+x(2)*s2+x(3)*s3]