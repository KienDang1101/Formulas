function [P, result] = lagrange(xa, ya, x0)
    n = length(xa);
    syms x;
    P = 0;
    for i = 1 : n
        L = 1;
        for j = 1 : n
            if (i ~= j)
                L = L*(x - xa(j)) / (xa(i) - xa(j));
            end
        end
        P = P + ya(i)*L;
    end
    
    P = expand(P);
    result = double(subs(P, x, x0));
end