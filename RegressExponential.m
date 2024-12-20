function [a,b] = RegressExponential(x, y)

    x = log10(x);
    y = log10(y);

    [B, A] = RegressLinear(x, y);
    a = 10^A;
    b = B;
end
