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
    T = Gali_2015_chapter_2.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(12, 1);
    residual(1) = (y(7)) - (T(1)*T(2));
    residual(2) = (y(16)) - (T(4)/y(19));
    residual(3) = (y(11)) - (1/y(16));
    residual(4) = (y(13)) - (y(9)*T(5));
    residual(5) = (y(7)) - (y(9)*(1-params(1))*T(6));
    residual(6) = (y(11)) - (y(19)*y(12));
    residual(7) = (y(11)) - (T(7));
    residual(8) = (y(6)) - (y(13));
    residual(9) = (log(y(9))) - (params(3)*log(y(2))+x(it_, 1));
    residual(10) = (log(y(17))) - (params(4)*log(y(5))+x(it_, 2));
    residual(11) = (y(14)) - (params(5)*y(4)+x(it_, 3));
    residual(12) = (y(15)) - (4*(log(y(6))-log(y(1))-params(9)*(log(y(11))-log(y(3)))+log(y(8))));

end
