function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(5, 1);
end
[T_order, T] = Gali_2015_chapter_2.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(12, 1);
    residual(1) = (y(2)) - (T(1)*T(2));
    residual(2) = (y(11)) - (params(2)/y(3));
    residual(3) = (y(6)) - (1/y(11));
    residual(4) = (y(8)) - (y(4)*T(3));
    residual(5) = (y(2)) - (y(4)*(1-params(1))*T(4));
    residual(6) = (y(6)) - (y(3)*y(7));
    residual(7) = (y(6)) - (T(5));
    residual(8) = (y(1)) - (y(8));
    residual(9) = (log(y(4))) - (log(y(4))*params(3)+x(1));
    residual(10) = (log(y(12))) - (log(y(12))*params(4)+x(2));
    residual(11) = (y(9)) - (y(9)*params(5)+x(3));
    residual(12) = (y(10)) - (4*log(y(3)));
end
