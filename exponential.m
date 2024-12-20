function [a,b] = exponential(x, y)

    x = log10(x);
    y = log10(y);

    [B, A] = linear(x, y);
    a = 10^A;
    b = B;
end
