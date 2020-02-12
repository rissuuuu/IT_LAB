//19MCMI07
//Rohan Yadav

function p = polyfit(x, y, n)
  if length(x) ~= length(y)
    error('x and y vectors must be the same size')
  end 

  x = x( : );
  y = y( : );
  V = ones(length(x), n+1); 

  for j = n : -1 : 1
    V(:, j) = x .* V (:, j+1);
  end 

  [Q, R] = qr(V);
  QTy = Q' * y;
  p = R(1 : n+1, 1 : n+1) \ QTy(1 : n+1);
  p = p.';
endfunction

function y = polyval(p, x)
  y = 0*x;
  p = mtlb_fliplr(p);
  for ix = 1 : length(p)
    y =  y + p(ix) * x.^(ix-1);
  end
endfunction

x = 0:5;
y = [0 10 25 36 52 59];
x_ls = 0:0.01:5;
y1 = polyval(polyfit(x,y,1),x_ls);
subplot(221)
plot(x,y,'s')
plot(x_ls,y1)
title('First-Degree (Linear) Fit','fontsize',5)
ylabel('mph','fontsize',5)
subplot(222)
y2 = polyval(polyfit(x,y,2),x_ls);
plot(x,y,'s')
plot(x_ls,y2)
title('Second-Degree Fit','fontsize',5)
ylabel('mph','fontsize',5)
subplot(223)
y3 = polyval(polyfit(x,y,3),x_ls);
plot(x,y,'s')
plot(x_ls,y3)
title('Third-Degree Fit','fontsize',5)
ylabel('mph','fontsize',5)
xlabel('Time-Seconds','fontsize',5)
subplot(224)
y5 = polyval(polyfit(x,y,5),x_ls);
plot(x,y,'s')
plot(x_ls,y5)
title('Fifth-Degree Fit','fontsize',5)
ylabel('mph','fontsize',5)
xlabel('Time-Seconds','fontsize',5)
