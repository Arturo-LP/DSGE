function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(4, 1);
end
[T_order, T] = Gali_2015_chapter_3.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(25, 1);
    residual(1) = (y(1)) - (params(2)*y(1)+T(3)*y(2));
    residual(2) = (y(2)) - (y(2)+T(4)*(y(8)-y(1)-y(6)));
    residual(3) = (y(8)) - (y(1)*params(8)+params(9)*y(5)+y(13));
    residual(4) = (y(6)) - ((1-params(5))*y(19)+y(14)*(1-params(3))*T(1)*(-params(6)));
    residual(5) = (y(7)) - (y(8)-y(1));
    residual(6) = (y(3)) - (T(1)*y(14));
    residual(7) = (y(2)) - (y(4)-y(3));
    residual(8) = (y(13)) - (y(13)*params(4)+x(2));
    residual(9) = (y(14)) - (y(14)*params(3)+x(1));
    residual(10) = (y(4)) - (y(14)+(1-params(1))*y(9));
    residual(11) = (y(19)) - (params(5)*y(19)-x(3));
    residual(12) = (y(11)) - (y(1)*4);
    residual(13) = (y(10)) - (y(4)-y(8)*params(10));
    residual(14) = (y(16)) - (y(8)*4);
    residual(15) = (y(15)) - (y(7)*4);
    residual(16) = (y(17)) - (y(6)*4);
    residual(17) = (y(18)) - (y(1)*4);
    residual(18) = (y(5)) - (y(4)-(y(4)));
residual(19) = y(1);
    residual(20) = (y(4)) - (y(22));
    residual(21) = (y(21)-y(20)) - (params(6)*y(22)+params(7)*y(9));
    residual(22) = (y(23)) - (y(21)-y(20));
    residual(23) = (y(12)) - (y(10)+y(20));
    residual(24) = (y(24)) - (y(4)*(-T(2))+y(14)*(1+params(7))/(1-params(1)));
    residual(25) = (y(25)) - (y(2)*(-T(2)));
end
