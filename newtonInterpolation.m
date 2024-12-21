function [P, result] = newtonInterpolation(xa, ya, x0)
    %da
    n = length(xa);
    d = ya;
    for i = 1 : n
        for j = 1 : i - 1
            d(i) = (d(j) - d(i)) / (xa(j) - xa(i));
        end
    end
    %result
    syms X;
    result = d(n);
    P = d(n);
    for i = (n - 1) : -1 : 1
        result = result * (x0 - xa(i)) + d(i);
        P = P * (X - xa(i)) + d(i);
    end
end
