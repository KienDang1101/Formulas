function [A] = readArray(str)
    % IF S IS A EQUATION
    findX = 0 + double(strfind(str, 'x'));
    if  findX ~= 0
        % f(x)
        A = str2sym(str);
    else
        % IF NOT A EQUATION
        if 0 + double(strfind(str, ':')) ~= 0
            A = eval(str);
        else
            str = regexprep(str, '[[]]', '');
            str = regexprep(str, ',', ' ');
            A = str2double(strsplit(str));
        end
    end
end
