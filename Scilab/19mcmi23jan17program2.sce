clc;
clear all;
clf;
a1=1000;
count1=0;
for i=1:a1
    x=round(rand(1));
    if(x==1)
        count1=count1+1;
    end
    p(i)=count1/i;
end
plot(1:a1,p)
