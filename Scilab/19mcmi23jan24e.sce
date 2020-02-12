x=0:5;
y=[0 10 25 36 52 59];
x_new=0:.01:5;
y_new=interp1(x,y,x_new,'spline');
plot(x,y,'d');
legend off;

plot(x_new,y_new)
title('Velocity versus Time','fontsize',5)
ylabel('Miles per Hour','fontsize',5)
xlabel('Time, seconds','fontsize',5)
legend('Data Points','Cubic Spline Interpolation')
