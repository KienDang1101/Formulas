function y = simpson38(fx, a, b, N)
    % tach thanh 2 phan:
    % chia het 2 => Simpson 1/3 (n)
    % chia het 3 => Simpson 3/8 (m)
    % it nhat 1 lan Simpson 3/8
    h = (b - a)/N;
    fx = matlabFunction(fx);
    m = 0;
    while 1 
        N = N - 3;
        m = m + 3;
        if mod(N, 2) == 0
            break;
        end
    end
    % Simpson 1/3
    b = b - h*m;
    y = h/3*(fx(a) + fx(b) + 4*sum(fx(a + h: 2*h: b - h)) + 2*sum(fx(a + 2*h: 2*h: b - h)));
    % Simpson 3/8
    a = b;
    while m ~= 0
        y = y + (3*h)/8*(fx(a) + 3*fx(a + h) + 3*fx(a + 2*h) + fx(a + 3*h));
        a = a + 3*h;
        m = m - 3;
    end
end