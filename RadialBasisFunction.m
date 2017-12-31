clc
clear all
close all
%%
x=[4 7 9 12];
c=[x(1) x(2) x(3) x(4)];
y=[5 9 2 6];
sig =1;
fi=[0 0 0 0;0 0 0 0;0 0 0 0;0 0 0 0];
for i=1:4
   for j=1:4
       
       fi(i,j)=exp(-((x(i)-c(j))^2)/2*(sig^2));
       
   end
end

fi

w=inv(fi)*y';
w
y2=[0 0 0 0];
for i=1:4
   for j=1:4
       y2(i)=y2(i)+fi(i,j)*w(j)
   end
    
end