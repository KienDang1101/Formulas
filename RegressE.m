function [a,b] = RegressE(x,y)
x0=log10(x);
y0=log10(y);
n=length(x0);
sumx=0;
sumy=0;
sumxy=0;
sumx2=0;
for i=1:n
    sumx=sumx+x0(i);
    sumy=sumy+y0(i);
    sumxy=sumxy+x0(i)*y0(i);
    sumx2=sumx2+x0(i)*x0(i);
end
xm=sumx/n;
ym=sumy/n;
b=(n*sumxy - sumx*sumy)/(n*sumx2 - sumx*sumx);
a=ym-b*xm;
a=10^a;
b=b;
end
