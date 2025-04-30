function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = Gali_2015_chapter_3.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(25, 1);
    residual(1) = (y(7)) - (params(2)*y(32)+y(8)*T(4));
    residual(2) = (y(8)) - (T(3)*(y(14)-y(32)-y(12))+y(33));
    residual(3) = (y(14)) - (y(7)*params(8)+params(9)*y(11)+y(19));
    residual(4) = (y(12)) - ((1-params(5))*y(25)+y(20)*(1-params(3))*T(1)*(-params(6)));
    residual(5) = (y(13)) - (y(14)-y(32));
    residual(6) = (y(9)) - (T(1)*y(20));
    residual(7) = (y(8)) - (y(10)-y(9));
    residual(8) = (y(19)) - (params(4)*y(3)+x(it_, 2));
    residual(9) = (y(20)) - (params(3)*y(4)+x(it_, 1));
    residual(10) = (y(10)) - (y(20)+(1-params(1))*y(15));
    residual(11) = (y(25)) - (params(5)*y(5)-x(it_, 3));
    residual(12) = (y(17)) - (4*(y(7)+y(10)-y(1)-params(10)*(y(14)-y(2))));
    residual(13) = (y(16)) - (y(10)-y(14)*params(10));
    residual(14) = (y(22)) - (y(14)*4);
    residual(15) = (y(21)) - (y(13)*4);
    residual(16) = (y(23)) - (y(12)*4);
    residual(17) = (y(24)) - (y(7)*4);
    residual(18) = (y(11)) - (y(10)-(steady_state(4)));
    residual(19) = (y(7)) - (y(26)-y(6));
    residual(20) = (y(10)) - (y(28));
    residual(21) = (y(27)-y(26)) - (params(6)*y(28)+params(7)*y(15));
    residual(22) = (y(29)) - (y(27)-y(26));
    residual(23) = (y(18)) - (y(16)+y(26));
    residual(24) = (y(30)) - (y(10)*(-T(2))+y(20)*(1+params(7))/(1-params(1)));
    residual(25) = (y(31)) - (y(8)*(-T(2)));

end
