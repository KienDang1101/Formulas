function [x0, n, er] = interation(fx, a, b, e)
    gx = fx + x;
    gx = str2sym(gx);
    %Condition to use interation method
    d_gx = diff(gx);
    d_gx = matlabFunction(d_gx);
    q = max(d_gx(|a:b|));
    if q >= 1
        er = 'Check your input! Max'
end
