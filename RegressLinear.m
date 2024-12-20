function [a, b] = RegressLinear(x, y)
    n = length(x);
    sumx = sum(x);
    sumy = sum(y);
    sumxy = sum(x.* y);
    sumx2 = sum(x.^ 2);
   
    a = (n*sumxy - sumx*sumy)/(n*sumx2 - sumx^2);
    b = (sumy - a*sumx) / n;
end
