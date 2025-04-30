function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = Aguiar_Gopinath_2007.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 10
    T = [T; NaN(10 - size(T, 1), 1)];
end
T(9) = getPowerDeriv(T(5),1-params(2),1);
T(10) = getPowerDeriv(exp(y(6))*y(7),params(8),1);
end
