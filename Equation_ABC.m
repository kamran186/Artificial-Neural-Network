clc
clear all
close all
%%
% ABC+A'BC+AB'C+ABC'+A'B'C+A'BC'+A'B'C'
x=[0 0 0;0 0 1;0 1 0;0 1 1;1 0 0; 1 0 1;1 1 0;1 1 1];
for i=1:8
   
% ABC
ABC=x(i,1)*0.6+x(i,2)*0.6+x(i,3)*0.6;
out1=hardlim(ABC-(1.5));

% A'BC
AbBC=x(i,1)*-0.6+x(i,2)*0.6+x(i,3)*0.6;
out2=hardlim(AbBC-1);

% AB'C
ABbC=x(i,1)*0.6+x(i,2)*-0.6+x(i,3)*0.6;
out3=hardlim(ABbC-1);

%ABC'
AbBC=x(i,1)*0.6+x(i,2)*0.6+x(i,3)*-0.6;
out4=hardlim(AbBC-1);


%A'B'C
AbBC=x(i,1)*-0.6+x(i,2)*-0.6+x(i,3)*0.6;
out5=hardlim(AbBC-0.5);


%ABC'
AbBC=x(i,1)*-0.6+x(i,2)*0.6+x(i,3)*-0.6;
out6=hardlim(AbBC-0.5);


%TotalOR
out=out1*0.6+out2*0.6+out3*0.6+out4*0.6+out5*0.6+out6*0.6;
out=hardlim(out-0.5)    
    
end