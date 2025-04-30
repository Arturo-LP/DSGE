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
    T = Aguiar_Gopinath_2007.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(21, 32);
g1(1,1)=(-(T(1)*exp(y(14))*getPowerDeriv(y(1),1-params(8),1)));
g1(1,8)=1;
g1(1,11)=(-(T(7)*exp(y(11))*y(12)*T(20)));
g1(1,12)=(-(T(7)*exp(y(11))*T(20)));
g1(1,14)=(-(T(1)*T(7)));
g1(2,5)=(-params(9));
g1(2,14)=1;
g1(2,31)=(-1);
g1(3,4)=(-params(3));
g1(3,11)=1;
g1(3,32)=(-1);
g1(4,6)=(-(T(3)*getPowerDeriv(y(6),params(12),1)*T(17)/(1-params(2))));
g1(4,12)=(-(T(17)*T(2)*(-(getPowerDeriv(1-y(12),1-params(12),1)))/(1-params(2))));
g1(4,13)=1;
g1(5,6)=(-((1-params(2))*(-(y(13)*params(12)))/(y(6)*y(6))));
g1(5,13)=(-((1-params(2))*params(12)/y(6)));
g1(5,15)=1;
g1(6,12)=(-((1-params(2))*y(13)*(-(1-params(12)))/((1-y(12))*(1-y(12)))));
g1(6,13)=(-((1-params(2))*(-(1-params(12)))/(1-y(12))));
g1(6,16)=1;
g1(7,6)=1;
g1(7,1)=(-(1-params(4)-T(19)));
g1(7,7)=exp(y(11))+y(1)*T(5)*2*T(9)*exp(y(11))/y(1);
g1(7,8)=(-1);
g1(7,3)=1;
g1(7,9)=(-(exp(y(11))*y(10)));
g1(7,10)=(-(exp(y(11))*y(9)));
g1(7,11)=y(7)*exp(y(11))-(y(9)*exp(y(11))*y(10)-y(1)*T(5)*T(8)*2*T(9));
g1(8,9)=(-(params(6)*exp(y(9)-params(7))));
g1(8,10)=(-1)/(y(10)*y(10));
g1(9,1)=exp(y(11))*y(15)*params(5)*(-(y(7)*exp(y(11))))/(y(1)*y(1));
g1(9,7)=exp(y(11))*y(15)*params(5)*exp(y(11))/y(1)-T(6)*((-((1-params(8))*y(28)))/(y(7)*y(7))-T(5)*((y(7)*y(27)*exp(y(29))*(-(2*(-(y(27)*exp(y(29))))/(y(7)*y(7))))-T(15))/(y(7)*y(7))+T(13)*(-(y(27)*exp(y(29))))/(y(7)*y(7))));
g1(9,27)=(-(T(6)*(-(T(5)*((T(14)+y(27)*exp(y(29))*(-(2*exp(y(29))/y(7))))/y(7)+T(13)*exp(y(29))/y(7))))));
g1(9,28)=(-(T(6)*(1-params(8))/y(7)));
g1(9,11)=exp(y(11))*y(15)*(1+params(5)*T(9))+exp(y(11))*y(15)*params(5)*T(8)-T(16)*y(30)*params(11)*params(12)*(1-params(2))*exp(y(11)*params(12)*(1-params(2)));
g1(9,29)=(-(T(6)*(-(T(5)*(y(27)*(T(14)+exp(y(29))*(-(2*T(12))))/y(7)+T(12)*T(13))))));
g1(9,15)=exp(y(11))*(1+params(5)*T(9));
g1(9,30)=(-(params(11)*exp(y(11)*params(12)*(1-params(2)))*T(16)));
g1(10,8)=params(8)*y(15)/y(12);
g1(10,12)=(-(y(8)*params(8)*y(15)))/(y(12)*y(12));
g1(10,15)=y(8)*params(8)/y(12);
g1(10,16)=1;
g1(11,10)=exp(y(11))*y(15);
g1(11,11)=y(10)*exp(y(11))*y(15)-y(30)*params(11)*params(12)*(1-params(2))*exp(y(11)*params(12)*(1-params(2)));
g1(11,15)=exp(y(11))*y(10);
g1(11,30)=(-(params(11)*exp(y(11)*params(12)*(1-params(2)))));
g1(12,1)=(-(T(19)-(1-params(4))));
g1(12,7)=(-(exp(y(11))+y(1)*T(5)*2*T(9)*exp(y(11))/y(1)));
g1(12,11)=(-(y(7)*exp(y(11))+y(1)*T(5)*T(8)*2*T(9)));
g1(12,19)=1;
g1(13,6)=T(18);
g1(13,8)=(-((-y(6))/(y(8)*y(8))));
g1(13,17)=1;
g1(14,8)=(-((-y(19))/(y(8)*y(8))));
g1(14,18)=1;
g1(14,19)=T(18);
g1(15,8)=(-((-(y(3)-y(9)*exp(y(11))*y(10)))/(y(8)*y(8))));
g1(15,3)=T(18);
g1(15,9)=(-((-(exp(y(11))*y(10)))/y(8)));
g1(15,10)=(-((-(exp(y(11))*y(9)))/y(8)));
g1(15,11)=(-((-(y(9)*exp(y(11))*y(10)))/y(8)));
g1(15,20)=1;
g1(16,18)=(-(1/y(18)));
g1(16,21)=1;
g1(17,17)=(-(1/y(17)));
g1(17,22)=1;
g1(18,8)=T(18);
g1(18,23)=1;
g1(19,6)=(-(1/y(6)));
g1(19,24)=1;
g1(20,19)=(-(1/y(19)));
g1(20,25)=1;
g1(21,2)=1/y(2);
g1(21,8)=T(18);
g1(21,4)=(-1);
g1(21,26)=1;

end
