function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 4
    T = [T; NaN(4 - size(T, 1), 1)];
end
T(1) = (1+params(7))/(params(1)+params(7)+(1-params(1))*params(6));
T(2) = params(6)+(params(1)+params(7))/(1-params(1));
T(3) = (-1)/params(6);
T(4) = T(2)*(1-params(1))/(1-params(1)+params(1)*params(11))*(1-params(12))*(1-params(12)*params(2))/params(12);
end
