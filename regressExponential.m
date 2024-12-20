function [a,b] = regressExponential(x, y)

    x = log10(x);
    y = log10(y);

    [B, A] = regressLinear(x, y);
    a = 10^A;
    b = B;
end
