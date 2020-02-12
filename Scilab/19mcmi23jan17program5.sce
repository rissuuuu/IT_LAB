clc;
clear all;
clf();
lambda=2;
x=grand(1000000,1,"exp",1/lambda);
xmax=max(x);
histplot(40,x,style=2);
x=linspace(0,max(xmax),100);
plot2d(x,lambda*exp(-lambda*x),strf="000",style=5)
legend(["Exponential random simple histogram" "exact density curve"]);
xlabel("Sample value");
ylabel("Exponential output values");
title("Exponential distribution data")
