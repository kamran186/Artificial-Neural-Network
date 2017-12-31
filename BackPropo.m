clc
clear all
close all
%%
%And Gate Using BackPropogation

x=[0 0;0 1;1 0;1 1];
d_out=[0;1;1;0];
weights=rand(3,3);
bias=[-1 -1 -1];
alpha=0.8;
n=4;
itterations=10000;

for i=1:itterations
    ak=zeros(4,1);
    for j=1:n
       hidden_j1=bias(1,1)*weights(1,1)+x(n,1)*weights(1,2)+x(n,2)*weights(2,2);
       aj(1)=logsig(hidden_j1);
       
       hidden_j2=bias(1,2)*weights(2,1)+x(n,1)*weights(1,3)+x(n,2)*weights(2,3);
       aj(2)=logsig(hidden_j2);
       
       out_ak=bias(1,3)*weights(3,1)+aj(1)*weights(3,2)+aj(2)*weights(3,3);
       ak(n)=logsig(out_ak);
       
       e(n)=ak(n)-d_out(n);
       %%
       %Backward Pass
       
       wkj=e(n) * ak(n) *(1-ak(n));       
       
       wji(1)= wkj*weights(3,2)*aj(1)*(1-aj(1));
       
       wji(2)= wkj*weights(3,3)*aj(2)*(1-aj(2));
       
       %Update Weights
       
       weights(3,1)=weights(3,1)+alpha*bias(1,3)*wkj;
       weights(3,2)=weights(3,2)+alpha*aj(1)*wkj;
       weights(3,3)=weights(3,3)+alpha*aj(2)*wkj;
       
       %Hidden Layer
       
       weights(1,1)=weights(1,1)+alpha*bias(1,1)*wji(1);
       weights(1,2)=weights(1,2)+alpha*x(n,1)*wji(1);
       weights(2,2)=weights(2,2)+alpha*x(n,2)*wji(1);
       
       weights(2,1)=weights(2,1)+alpha*bias(1,2)*wji(2);
       weights(1,3)=weights(1,3)+alpha*x(n,1)*wji(2);
       weights(2,2)=weights(2,2)+alpha*x(n,2)*wji(2);
       
    end
end
ak