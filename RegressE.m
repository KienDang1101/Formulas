function [a,b] = RegressE(x,y)
xi = log10(x);
yi = log10(y);
[b, a] = Regress(xi, yi)
a = 10^a;
b = b;
end
