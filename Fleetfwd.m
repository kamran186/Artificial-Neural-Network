clc
clear all
close all

x=[1 1];
b=[-1 -1 -1 -1];
a=0.9;
iteration=1000;


weights=rand(3,3);
num_x=4;


%%
%XOR Gate
for i = 1:iteration
    outs=zeros(4,1);
    for j=1:num_x
        
        y=weights(1,1)*b+x(1)*weights(2,1)+x(j,2)*weights(3,1);
        outs(j)=logsig(y);
        
        error=target(j)-outs(j);
    
    end
end
for j=1:num_x
    outs(j)
end
%y=purelin(x(1)*w(1)+x(2)+w(2));