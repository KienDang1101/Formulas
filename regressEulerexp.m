function [a, b] = regressEulerexp(x, y)

    y = log(y);
    
    [B, A] = regressLinear(x, y);
    a = exp(A);
    b = B;
end
