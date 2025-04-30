function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 16
    T = [T; NaN(16 - size(T, 1), 1)];
end
T(1) = (exp(y(27))*y(28))^params(8);
T(2) = y(22)^params(12);
T(3) = (1-y(28))^(1-params(12));
T(4) = T(2)*T(3);
T(5) = params(5)/2;
T(6) = params(11)*exp(y(27)*params(12)*(1-params(2)))*y(52);
T(7) = exp(y(30))*y(2)^(1-params(8));
T(8) = y(23)*exp(y(27))/y(2);
T(9) = T(8)-exp(params(1));
T(10) = T(5)*T(9)^2;
T(11) = y(2)*T(10);
T(12) = y(44)*exp(y(48))/y(23);
T(13) = 2*(T(12)-exp(params(1)));
T(14) = exp(y(48))*(-T(13));
T(15) = y(44)*T(14);
T(16) = 1-params(4)+(1-params(8))*y(45)/y(23)-T(5)*(T(15)/y(23)+(T(12)-exp(params(1)))^2);
end
