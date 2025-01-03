function [x0, n, er] = interation(fx, a, b, e)
    n = 0;
    x0 = 0;
    fx = str2sym(fx);
    syms x;
    
    %Condition to use interation method
    gx = x + fx;
    d_gx = diff(gx);
    d_gx = matlabFunction(d_gx);
    q = max(abs(d_gx(a:b)));
    if q >= 1
        gx = x - fx;
        d_gx = diff(gx);
        d_gx = matlabFunction(d_gx);
        q = max(abs(d_gx(a:b)));
        if q >= 1
            coefficients = sym2poly(fx);
            degree = length(coefficients) - 1;
            gx = ((x^degree - fx)/coefficients(1))^(1/degree);
            d_gx = diff(gx);
            d_gx = matlabFunction(d_gx);
            q = max(abs(d_gx(a:b)));
            if q >= 1
                er = 'Check your input! Max|g(x)''| must be < 1';
                return;
            end
        end
    end
    
    %Interation method
    x0 = (a + b)/2;
    gx = matlabFunction(gx);
    while(1)
        n = n + 1;
        x1 = gx(x0);
        if abs(x1 - x0) < e
            break;
        end
        x0 = x1;
    end
    er = 'No error';
end