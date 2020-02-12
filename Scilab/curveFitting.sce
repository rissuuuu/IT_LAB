
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

// Define (arbitrarily) the number of points to take into account
np = 10; 

// Define the x-vector and two functions, the second function
// is a noised version of the first one
x = linspace(0, 1, np);
y1 = x.^3 - 5*x.^2 - 3*x - 7;
y2 = y1 + .1*rand(1, np); 

// Enter the x and y vectors, and the order of the polynomial
// that we want to obtain
p = polyfit(x, y2, 3) 

// Define other x-values and find the original function
x = 0 : .4 : 1
y1 = x.^3 - 5*x.^2 - 3*x - 7 

// Use polyval to find the equivalent values in the
// noised function
y = polyval(p, x) 

// Divide the values just for comparison purposes
ratio = y1./y


disp(p,"P: ")
disp(x,"x: ")
disp(y1,"Y1: ")
disp(y,"Y: ")
disp(ratio,"Ratio: ")
