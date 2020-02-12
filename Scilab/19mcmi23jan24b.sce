xdel(winsid()); clear; clc 

function y = data_fit_1(x, c)
  y = exp(c(1)*x) .* cos(c(2)*x) + c(3)*sin(x);
endfunction 

function e = myerror(c, z)
  x = z(1); y = z(2);
  e = y - data_fit_1(x, c);
endfunction 

x = [0 0.55 1.11 1.66 2.22 ...
     2.77 3.33 3.88 4.44 5];
y = [1 0.47 3.73 2.22 2.61 ...
     1.63 -2.13 0.62 -6.58 1.56]; 

plot(x, y, 'ro') 

z = [x; y];

c0 = [2 2 2]'; 
[copt, err] = datafit(e, z, c0); 

x = linspace(0, 5, 100);
y = data_fit_1(x, copt);
plot(x, y)

