function [a, b] = eulerexp(x, y)

    y = log(y);
    [B, A] = linear(x, y);

    a = exp(A);
    b = B;
end