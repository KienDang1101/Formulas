function [x0, n, er] = bisection(fx, a, b, e) 
    n = 0;
    x0 = 0;
    fx = str2func(['@(x)', fx]);

    %Condition to use bisection method
    if fx(a) * fx(b) >= 0
        er = 'Check your input! fx(a) * fx(b) must be < 0';
        return;
    end

    %Bisection method
    while(abs(a-b) >= e)
        n = n + 1;
        c = (a+b)/2;
        if fx(a)*fx(c) <= 0 
            b = c;
        else
            a = c;
        end
    end
    x0 = c;
    er = 'No error';
end
