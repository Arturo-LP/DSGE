function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(5, 1);
end
[T_order, T] = Gali_Monacelli_2005.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(19, 1);
    residual(1) = (y(21)) - (y(40)-(y(25)-y(39)-y(24))*T(3));
    residual(2) = (y(20)) - (params(7)*y(39)+y(21)*(1-params(7)*params(6))*(1-params(6))/params(6)*T(2));
    residual(3) = (y(24)) - (y(36)*(1-params(10))*(1+params(4))/T(2)*(-T(1))+(y(50)-y(31))*T(4));
    residual(4) = (y(23)) - (y(36)*(1+params(4))/T(2)+y(31)*T(5));
    residual(5) = (y(21)) - (y(22)-y(23));
    residual(6) = (y(22)) - (y(31)+y(26)*T(3));
    residual(7) = (y(27)) - (y(20)+params(8)*(y(26)-y(7)));
    residual(8) = (y(26)) - (y(7)-y(20));
residual(9) = y(32);
    residual(10) = (y(22)) - (y(36)+y(33));
    residual(11) = (y(34)) - (y(26)*params(8)*((params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)-1));
    residual(12) = (y(22)) - (y(37)+y(26)*params(8)*(params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1));
    residual(13) = (y(35)) - (params(1)*y(37)+params(4)*y(33));
    residual(14) = (y(36)) - (params(10)*y(17)+x(2));
    residual(15) = (y(31)) - (params(11)*y(12)+x(1));
residual(16) = y(30);
    residual(17) = (y(27)) - (y(28)-y(9));
    residual(18) = (y(20)) - (y(29)-y(10));
residual(19) = y(38);
end
