function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(4, 1);
end
[T_order, T] = Gali_Monacelli_2005.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(19, 1);
    residual(1) = (y(2)) - (y(2)-(y(6)-y(1)-y(5))*T(3));
    residual(2) = (y(1)) - (params(7)*y(1)+(1-params(7)*params(6))*(1-params(6))/params(6)*T(2)*y(2));
    residual(3) = (y(5)) - (y(17)*(1-params(10))*(1+params(4))/T(2)*(-T(1)));
    residual(4) = (y(4)) - ((1+params(4))/T(2)*y(17)+y(12)*T(4));
    residual(5) = (y(2)) - (y(3)-y(4));
    residual(6) = (y(3)) - (y(12)+T(3)*y(7));
    residual(7) = (y(8)) - (y(1));
    residual(8) = (y(7)) - (y(7)-y(1));
residual(9) = y(13);
    residual(10) = (y(3)) - (y(17)+y(14));
    residual(11) = (y(15)) - (y(7)*params(8)*((params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)-1));
    residual(12) = (y(3)) - (y(18)+y(7)*params(8)*(params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1));
    residual(13) = (y(16)) - (params(1)*y(18)+params(4)*y(14));
    residual(14) = (y(17)) - (y(17)*params(10)+x(2));
    residual(15) = (y(12)) - (y(12)*params(11)+x(1));
residual(16) = y(11);
residual(17) = y(8);
residual(18) = y(1);
residual(19) = y(19);
end
