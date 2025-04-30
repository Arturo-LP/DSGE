function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 8
    T = [T; NaN(8 - size(T, 1), 1)];
end
T(1) = (exp(y(6))*y(7))^params(8);
T(2) = exp(y(9))*y(2)^(1-params(8));
T(3) = y(1)^params(12);
T(4) = (1-y(7))^(1-params(12));
T(5) = T(3)*T(4);
T(6) = params(5)/2;
T(7) = (exp(y(6))-exp(params(1)))^2;
T(8) = 1-params(4)+y(3)*(1-params(8))/y(2)-T(6)*(T(7)+exp(y(6))*(-(2*(exp(y(6))-exp(params(1))))));
end
