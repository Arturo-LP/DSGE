function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = Aguiar_Gopinath_2007.static_g1_tt(T, y, x, params);
end
g1 = zeros(21, 21);
g1(1,2)=(-(T(1)*exp(y(9))*getPowerDeriv(y(2),1-params(8),1)));
g1(1,3)=1;
g1(1,6)=(-(T(2)*exp(y(6))*y(7)*T(10)));
g1(1,7)=(-(T(2)*exp(y(6))*T(10)));
g1(1,9)=(-(T(1)*T(2)));
g1(2,9)=1-params(9);
g1(3,6)=1-params(3);
g1(4,1)=(-(T(4)*getPowerDeriv(y(1),params(12),1)*T(9)/(1-params(2))));
g1(4,7)=(-(T(9)*T(3)*(-(getPowerDeriv(1-y(7),1-params(12),1)))/(1-params(2))));
g1(4,8)=1;
g1(5,1)=(-((1-params(2))*(-(y(8)*params(12)))/(y(1)*y(1))));
g1(5,8)=(-((1-params(2))*params(12)/y(1)));
g1(5,10)=1;
g1(6,7)=(-((1-params(2))*y(8)*(-(1-params(12)))/((1-y(7))*(1-y(7)))));
g1(6,8)=(-((1-params(2))*(-(1-params(12)))/(1-y(7))));
g1(6,11)=1;
g1(7,1)=1;
g1(7,2)=exp(y(6))-(1-params(4)-T(6)*T(7));
g1(7,3)=(-1);
g1(7,4)=(-(exp(y(6))*y(5)-1));
g1(7,5)=(-(exp(y(6))*y(4)));
g1(7,6)=exp(y(6))*y(2)-(y(4)*exp(y(6))*y(5)-y(2)*T(6)*exp(y(6))*2*(exp(y(6))-exp(params(1))));
g1(8,4)=(-(params(6)*exp(y(4)-params(7))));
g1(8,5)=(-1)/(y(5)*y(5));
g1(9,2)=(-(y(10)*params(11)*exp(y(6)*params(12)*(1-params(2)))*(-(y(3)*(1-params(8))))/(y(2)*y(2))));
g1(9,3)=(-(y(10)*params(11)*exp(y(6)*params(12)*(1-params(2)))*(1-params(8))/y(2)));
g1(9,6)=exp(y(6))*y(10)*(1+params(5)*(exp(y(6))-exp(params(1))))+exp(y(6))*y(10)*exp(y(6))*params(5)-(T(8)*y(10)*params(11)*params(12)*(1-params(2))*exp(y(6)*params(12)*(1-params(2)))+y(10)*params(11)*exp(y(6)*params(12)*(1-params(2)))*(-(T(6)*(exp(y(6))*2*(exp(y(6))-exp(params(1)))+exp(y(6))*(-(2*(exp(y(6))-exp(params(1)))))+exp(y(6))*(-(2*exp(y(6))))))));
g1(9,10)=exp(y(6))*(1+params(5)*(exp(y(6))-exp(params(1))))-params(11)*exp(y(6)*params(12)*(1-params(2)))*T(8);
g1(10,3)=params(8)*y(10)/y(7);
g1(10,7)=(-(y(3)*params(8)*y(10)))/(y(7)*y(7));
g1(10,10)=y(3)*params(8)/y(7);
g1(10,11)=1;
g1(11,5)=exp(y(6))*y(10);
g1(11,6)=y(5)*exp(y(6))*y(10)-y(10)*params(11)*params(12)*(1-params(2))*exp(y(6)*params(12)*(1-params(2)));
g1(11,10)=exp(y(6))*y(5)-params(11)*exp(y(6)*params(12)*(1-params(2)));
g1(12,2)=(-(T(6)*T(7)+exp(y(6))-(1-params(4))));
g1(12,6)=(-(exp(y(6))*y(2)+y(2)*T(6)*exp(y(6))*2*(exp(y(6))-exp(params(1)))));
g1(12,14)=1;
g1(13,1)=(-(1/y(3)));
g1(13,3)=(-((-y(1))/(y(3)*y(3))));
g1(13,12)=1;
g1(14,3)=(-((-y(14))/(y(3)*y(3))));
g1(14,13)=1;
g1(14,14)=(-(1/y(3)));
g1(15,3)=(-((-(y(4)-y(4)*exp(y(6))*y(5)))/(y(3)*y(3))));
g1(15,4)=(-((1-exp(y(6))*y(5))/y(3)));
g1(15,5)=(-((-(exp(y(6))*y(4)))/y(3)));
g1(15,6)=(-((-(y(4)*exp(y(6))*y(5)))/y(3)));
g1(15,15)=1;
g1(16,13)=(-(1/y(13)));
g1(16,16)=1;
g1(17,12)=(-(1/y(12)));
g1(17,17)=1;
g1(18,3)=(-(1/y(3)));
g1(18,18)=1;
g1(19,1)=(-(1/y(1)));
g1(19,19)=1;
g1(20,14)=(-(1/y(14)));
g1(20,20)=1;
g1(21,6)=(-1);
g1(21,21)=1;

end
