function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = Gali_Monacelli_2005.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(19, 29);
g1(1,25)=(-T(3));
g1(1,7)=1;
g1(1,26)=(-1);
g1(1,10)=(-T(3));
g1(1,11)=T(3);
g1(2,6)=1;
g1(2,25)=(-params(7));
g1(2,7)=(-((1-params(7)*params(6))*(1-params(6))/params(6)*T(2)));
g1(3,10)=1;
g1(3,17)=T(4);
g1(3,27)=(-T(4));
g1(3,22)=(-((1-params(10))*(1+params(4))/T(2)*(-T(1))));
g1(4,9)=1;
g1(4,17)=(-T(5));
g1(4,22)=(-((1+params(4))/T(2)));
g1(5,7)=1;
g1(5,8)=(-1);
g1(5,9)=1;
g1(6,8)=1;
g1(6,12)=(-T(3));
g1(6,17)=(-1);
g1(7,6)=(-1);
g1(7,1)=params(8);
g1(7,12)=(-params(8));
g1(7,13)=1;
g1(8,6)=1;
g1(8,1)=(-1);
g1(8,12)=1;
g1(9,18)=1;
g1(10,8)=1;
g1(10,19)=(-1);
g1(10,22)=(-1);
g1(11,12)=(-(params(8)*((params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)-1)));
g1(11,20)=1;
g1(12,8)=1;
g1(12,12)=(-(params(8)*(params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)));
g1(12,23)=(-1);
g1(13,19)=(-params(4));
g1(13,21)=1;
g1(13,23)=(-params(1));
g1(14,5)=(-params(10));
g1(14,22)=1;
g1(14,29)=(-1);
g1(15,4)=(-params(11));
g1(15,17)=1;
g1(15,28)=(-1);
g1(16,16)=1;
g1(17,13)=1;
g1(17,2)=1;
g1(17,14)=(-1);
g1(18,6)=1;
g1(18,3)=1;
g1(18,15)=(-1);
g1(19,24)=1;

end
