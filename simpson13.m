function [y, e] = simpson13(fx, a, b, N)
    if mod(N, 2) == 0
        e = 0;
        h = (b - a)/N;
        fx = matlabFunction(fx);
        y = h/3*(fx(a) + fx(b) + 4*sum(fx(a + h: 2*h: b - h)) + 2*sum(fx(a + 2*h: 2*h: b - h)));
    else
        e = 1;
        y = 0;
    end
end