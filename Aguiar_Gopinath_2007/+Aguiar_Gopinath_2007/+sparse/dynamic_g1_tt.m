function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = Aguiar_Gopinath_2007.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 20
    T = [T; NaN(20 - size(T, 1), 1)];
end
T(17) = getPowerDeriv(T(4),1-params(2),1);
T(18) = (-(1/y(24)));
T(19) = T(10)+y(2)*T(5)*(-(y(23)*exp(y(27))))/(y(2)*y(2))*2*T(9);
T(20) = getPowerDeriv(exp(y(27))*y(28),params(8),1);
end
