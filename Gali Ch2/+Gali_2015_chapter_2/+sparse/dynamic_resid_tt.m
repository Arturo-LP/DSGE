function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 7
    T = [T; NaN(7 - size(T, 1), 1)];
end
T(1) = y(13)^params(6);
T(2) = y(17)^params(7);
T(3) = params(2)*(y(25)/y(13))^(-params(6));
T(4) = T(3)*y(36)/y(24);
T(5) = y(17)^(1-params(1));
T(6) = y(17)^(-params(1));
T(7) = 1/params(2)*y(15)^params(8)*exp(y(21));
end
