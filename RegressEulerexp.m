function [a, b] = RegressEulerexp(x, y)

    y = log(y);
    
    [B, A] = RegressLinear(x, y);
    a = exp(A);
    b = B;
end
