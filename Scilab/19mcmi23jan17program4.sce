clf();
b=4;
a=2;
x=a+(b-a).*rand(1,1000,'uniform');
histplot(1000,x)
xlabel("Number of samples");
ylabel("Range of values of uniformly generated data");
title("Uniformly distributed data in the range to b");
