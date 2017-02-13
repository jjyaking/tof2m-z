clc
clear
% time of flight---->m/z
data=load('xxx');
save_filename='xxx.dat';
n=size(data,1);                   % data number 
% y = a*x^2 + x*b + c
a=aaa;       
b=bbb;           
c=ccc;          
Edate=zeros(n,2);
Edata(:,2)=-data(:,2);
Edata(:,1)=aaa.*data(:,1).^2+data(:,1).*bbb+cccc;
save(save_filename,'Edata','-tabs','-ascii');
%plot(data(:,1),data(:,2),'b-');
plot(Edata(:,1),Edata(:,2),'b-');
%xlabel('Time of Flight: mass')
%ylabel('Intensity');
title(save_filename);
