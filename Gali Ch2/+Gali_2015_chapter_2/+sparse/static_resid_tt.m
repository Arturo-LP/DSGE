function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 5
    T = [T; NaN(5 - size(T, 1), 1)];
end
T(1) = y(1)^params(6);
T(2) = y(5)^params(7);
T(3) = y(5)^(1-params(1));
T(4) = y(5)^(-params(1));
T(5) = 1/params(2)*y(3)^params(8)*exp(y(9));
end
