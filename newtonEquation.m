function [x0, n, er] = newtonEquation(fx, a, b, e)
    n = 0;
    x0 = 0;
    fx = str2sym(fx);

    %Condition to use newton method
    d1_fx = diff(fx);
    d2_fx = diff(d1_fx);
    fx = matlabFunction(fx, 'vars', {'x'});
    d1_fx = matlabFunction(d1_fx, 'vars', {'x'}); 
    d2_fx = matlabFunction(d2_fx, 'vars', {'x'});
    if (d1_fx(a) * d1_fx(b) <= 0) || (d2_fx(a) * d2_fx(b) <= 0)
        er = 'Check your input! fx''(a) * fx''(b) and fx''''(a) * fx''''(b) must be > 0';
        return;
    end

    %Newton method
    if fx(a) * d2_fx(a) > 0
        x0 = a;
    elseif fx(b) * d2_fx(b) > 0
        x0 = b;
    end
    while(1)
        n = n + 1;
        x1 = x0 - (fx(x0) / d1_fx(x0));
        if abs(x1 - x0) <= e
            break;
        end
        x0 = x1;
    end
    er = 'No error';
end
