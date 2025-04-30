function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(7, 1);
end
[T_order, T] = Gali_2015_chapter_2.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(12, 1);
    residual(1) = (y(14)) - (T(1)*T(2));
    residual(2) = (y(23)) - (T(4)/y(27));
    residual(3) = (y(18)) - (1/y(23));
    residual(4) = (y(20)) - (y(16)*T(5));
    residual(5) = (y(14)) - (y(16)*(1-params(1))*T(6));
    residual(6) = (y(18)) - (y(27)*y(19));
    residual(7) = (y(18)) - (T(7));
    residual(8) = (y(13)) - (y(20));
    residual(9) = (log(y(16))) - (params(3)*log(y(4))+x(1));
    residual(10) = (log(y(24))) - (params(4)*log(y(12))+x(2));
    residual(11) = (y(21)) - (params(5)*y(9)+x(3));
    residual(12) = (y(22)) - (4*(log(y(13))-log(y(1))-params(9)*(log(y(18))-log(y(6)))+log(y(15))));
end
