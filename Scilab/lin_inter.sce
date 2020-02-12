//19MCMI07
//Rohan Yadav

x=0:10;
y=x.^5+x.^2;
//curve

//genrating 200 points between 0 and 10
xx=linspace(0,10,200);
yy=interp1(x,y,xx,'linear');
yy2=interp1(x,y,xx,'spline');
//plotting x,y as dots
plot(x,y,'d');
plot(xx,yy);
plot(xx,yy2);
