function [a,b] = EulerExp(x,y)
xi = x;
yi = log(y);
[b, a] = Regress(xi,yi)

a = exp(a);
b = b;
end
