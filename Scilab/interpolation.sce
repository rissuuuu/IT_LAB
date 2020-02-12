//19MCMI07
//Rohan Yadav

function y=data_fit_l(x,c)
    y=exp(c(1)*x)*cos(c(2)*x)+c(3)*sin(x);
endfunction

function e=myerror(c,z)
    x=z(1);
    y=z(2);
    e=y-data_fit_l(x,c);
endfunction

xdel(winsid());
clear;
clc;
x=[1 0.55 1.11 1.66 2.22 ]
y=[1 0.47 3.73 2.22 2.61 ]
plot(x,y,'ro')

z=[x;y];
c0=[2 2 2]';
[copt,err]=datafit(myerror,z,c0);
x=linspace(0,5,100);
y=data_fit_l(x,copt);
plot(x,y)
