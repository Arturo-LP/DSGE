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
    T = Gali_Monacelli_2005.static_resid_tt(T, y, x, params);
end
residual = zeros(19, 1);
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
