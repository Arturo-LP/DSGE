function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 8);

T(1) = (exp(y(6))*y(7))^params(8);
T(2) = exp(y(9))*y(2)^(1-params(8));
T(3) = y(1)^params(12);
T(4) = (1-y(7))^(1-params(12));
T(5) = T(3)*T(4);
T(6) = params(5)/2;
T(7) = (exp(y(6))-exp(params(1)))^2;
T(8) = 1-params(4)+y(3)*(1-params(8))/y(2)-T(6)*(T(7)+exp(y(6))*(-(2*(exp(y(6))-exp(params(1))))));

end
