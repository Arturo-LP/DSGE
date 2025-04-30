function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(4, 1);
end
[T_order, T] = Gali_2015_chapter_3.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(25, 1);
    residual(1) = (y(26)) - (params(2)*y(51)+y(27)*T(4));
    residual(2) = (y(27)) - (T(3)*(y(33)-y(51)-y(31))+y(52));
    residual(3) = (y(33)) - (y(26)*params(8)+params(9)*y(30)+y(38));
    residual(4) = (y(31)) - ((1-params(5))*y(44)+y(39)*(1-params(3))*T(1)*(-params(6)));
    residual(5) = (y(32)) - (y(33)-y(51));
    residual(6) = (y(28)) - (T(1)*y(39));
    residual(7) = (y(27)) - (y(29)-y(28));
    residual(8) = (y(38)) - (params(4)*y(13)+x(2));
    residual(9) = (y(39)) - (params(3)*y(14)+x(1));
    residual(10) = (y(29)) - (y(39)+(1-params(1))*y(34));
    residual(11) = (y(44)) - (params(5)*y(19)-x(3));
    residual(12) = (y(36)) - (4*(y(26)+y(29)-y(4)-params(10)*(y(33)-y(8))));
    residual(13) = (y(35)) - (y(29)-y(33)*params(10));
    residual(14) = (y(41)) - (y(33)*4);
    residual(15) = (y(40)) - (y(32)*4);
    residual(16) = (y(42)) - (y(31)*4);
    residual(17) = (y(43)) - (y(26)*4);
    residual(18) = (y(30)) - (y(29)-(steady_state(4)));
    residual(19) = (y(26)) - (y(45)-y(20));
    residual(20) = (y(29)) - (y(47));
    residual(21) = (y(46)-y(45)) - (params(6)*y(47)+params(7)*y(34));
    residual(22) = (y(48)) - (y(46)-y(45));
    residual(23) = (y(37)) - (y(35)+y(45));
    residual(24) = (y(49)) - (y(29)*(-T(2))+y(39)*(1+params(7))/(1-params(1)));
    residual(25) = (y(50)) - (y(27)*(-T(2)));
end
