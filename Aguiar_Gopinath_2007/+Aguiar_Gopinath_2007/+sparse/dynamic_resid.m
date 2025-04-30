function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(16, 1);
end
[T_order, T] = Aguiar_Gopinath_2007.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(21, 1);
    residual(1) = (y(24)) - (T(1)*T(7));
    residual(2) = (y(30)) - (params(9)*y(9)+x(1));
    residual(3) = (y(27)) - ((1-params(3))*params(1)+params(3)*y(6)+x(2));
    residual(4) = (y(29)) - (T(4)^(1-params(2))/(1-params(2)));
    residual(5) = (y(31)) - ((1-params(2))*y(29)*params(12)/y(22));
    residual(6) = (y(32)) - ((1-params(2))*y(29)*(-(1-params(12)))/(1-y(28)));
    residual(7) = (y(22)+y(23)*exp(y(27))) - (y(24)+(1-params(4))*y(2)-T(11)-y(4)+y(25)*exp(y(27))*y(26));
    residual(8) = (1/y(26)) - (1+params(10)+params(6)*(exp(y(25)-params(7))-1));
    residual(9) = (exp(y(27))*y(31)*(1+params(5)*T(9))) - (T(6)*T(16));
residual(10) = y(32)+y(24)*params(8)*y(31)/y(28);
    residual(11) = (y(26)*exp(y(27))*y(31)) - (T(6));
    residual(12) = (y(35)) - (T(11)+y(23)*exp(y(27))-(1-params(4))*y(2));
    residual(13) = (y(33)) - (y(22)/y(24));
    residual(14) = (y(34)) - (y(35)/y(24));
    residual(15) = (y(36)) - ((y(4)-y(25)*exp(y(27))*y(26))/y(24));
    residual(16) = (y(37)) - (log(y(34)));
    residual(17) = (y(38)) - (log(y(33)));
    residual(18) = (y(39)) - (log(y(24)));
    residual(19) = (y(40)) - (log(y(22)));
    residual(20) = (y(41)) - (log(y(35)));
    residual(21) = (y(42)) - (y(6)+log(y(24))-log(y(3)));
end
