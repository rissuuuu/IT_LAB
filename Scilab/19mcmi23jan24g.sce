load m0_points.dat;
x = m0_points(:,1);
y = m0_points(:,2);
code = m0_points(:,3);
plot(x,y,'s')
plot held» plot(x,y)
title('Mission Path','fontsize',18)
ylabel('y','fontsize',14)
xlabel('x','fontsize',14)
