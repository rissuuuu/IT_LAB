//19MCMI07
//Rohan Yadav

x=0:5;
y=[8 10 25 36 52 59];
x_new=0:.01:5;
y_new=interp1(x,y,x_new,'linear');
plot(x,y,'d')
disp(x)

plot(x_new,y_new);
title('Velocity versus Time','fontsize',5);
ylabel('Miles per Hour','fontsize',5);
xlabel('Time, seconds','fontsize',5);
legend('Data Points','Linear Interpolation',-1)
