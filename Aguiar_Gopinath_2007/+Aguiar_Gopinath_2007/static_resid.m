function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = Aguiar_Gopinath_2007.static_resid_tt(T, y, x, params);
end
residual = zeros(21, 1);
    residual(1) = (y(3)) - (T(1)*T(2));
    residual(2) = (y(9)) - (y(9)*params(9)+x(1));
    residual(3) = (y(6)) - ((1-params(3))*params(1)+y(6)*params(3)+x(2));
    residual(4) = (y(8)) - (T(5)^(1-params(2))/(1-params(2)));
    residual(5) = (y(10)) - ((1-params(2))*y(8)*params(12)/y(1));
    residual(6) = (y(11)) - ((1-params(2))*y(8)*(-(1-params(12)))/(1-y(7)));
    residual(7) = (y(1)+exp(y(6))*y(2)) - (y(3)+y(2)*(1-params(4))-y(2)*T(6)*T(7)-y(4)+y(4)*exp(y(6))*y(5));
    residual(8) = (1/y(5)) - (1+params(10)+params(6)*(exp(y(4)-params(7))-1));
    residual(9) = (exp(y(6))*y(10)*(1+params(5)*(exp(y(6))-exp(params(1))))) - (y(10)*params(11)*exp(y(6)*params(12)*(1-params(2)))*T(8));
residual(10) = y(11)+y(3)*params(8)*y(10)/y(7);
    residual(11) = (y(5)*exp(y(6))*y(10)) - (y(10)*params(11)*exp(y(6)*params(12)*(1-params(2))));
    residual(12) = (y(14)) - (y(2)*T(6)*T(7)+exp(y(6))*y(2)-y(2)*(1-params(4)));
    residual(13) = (y(12)) - (y(1)/y(3));
    residual(14) = (y(13)) - (y(14)/y(3));
    residual(15) = (y(15)) - ((y(4)-y(4)*exp(y(6))*y(5))/y(3));
    residual(16) = (y(16)) - (log(y(13)));
    residual(17) = (y(17)) - (log(y(12)));
    residual(18) = (y(18)) - (log(y(3)));
    residual(19) = (y(19)) - (log(y(1)));
    residual(20) = (y(20)) - (log(y(14)));
    residual(21) = (y(21)) - (y(6));

end
