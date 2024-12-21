function y = trapzium(fx, a, b, N)
    h = (b - a)/N;
    fx = matlabFunction(fx);
    y = h/2*(fx(a) + fx(b) + 2*sum(fx(a + h: h: b - h)));
end