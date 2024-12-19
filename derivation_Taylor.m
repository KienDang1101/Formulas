function ketqua = derivation_Taylor(x, y, tai_x, phuongphap, saiso_oh)
    h = x(2) - x(1);
    i = find(x == tai_x, 1);
    
    switch phuongphap
        case 1 % tiến
            if saiso_oh == 1
                ketqua = (y(i + 1) - y(i)) / h; % Sai số O(h)
            else
                ketqua = (-y(i + 2) + 4 * y(i + 1) - 3 * y(i)) / (2 * h); % Sai số O(h^2)
            end
        case 2 % trung tâm
            ketqua = (y(i + 1) - y(i - 1)) / (2 * h); % Sai số O(h^2)
        case 3 % lùi
            if saiso_oh == 1
                ketqua = (y(i) - y(i - 1)) / h; % Sai số O(h)
            else
                ketqua = (3 * y(i) - 4 * y(i - 1) + y(i - 2)) / (2 * h); % Sai số O(h^2)
            end
    end
end
