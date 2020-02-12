t2=interp1(simout(1:5),tout(1:5),0.9,'spline')
t1=interp1(simout(1:5),tout(1:5),0.1,'spline')
tr=t2-t1
