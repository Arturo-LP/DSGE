function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(8, 1);
end
[T_order, T] = Gali_2015_chapter_2.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(40, 1);
g1_v(1)=(-(4*(-(1/y(1)))));
g1_v(2)=(-(params(3)*1/y(4)));
g1_v(3)=(-(4*(-(params(9)*(-(1/y(6)))))));
g1_v(4)=(-params(5));
g1_v(5)=(-(params(4)*1/y(12)));
g1_v(6)=(-(T(2)*getPowerDeriv(y(13),params(6),1)));
g1_v(7)=(-(y(36)/y(24)*params(2)*(-y(25))/(y(13)*y(13))*T(8)/y(27)));
g1_v(8)=1;
g1_v(9)=(-(4*1/y(13)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-(exp(y(21))*1/params(2)*getPowerDeriv(y(15),params(8),1)));
g1_v(13)=(-(4*1/y(15)));
g1_v(14)=(-T(5));
g1_v(15)=(-((1-params(1))*T(6)));
g1_v(16)=1/y(16);
g1_v(17)=(-(T(1)*getPowerDeriv(y(17),params(7),1)));
g1_v(18)=(-(y(16)*getPowerDeriv(y(17),1-params(1),1)));
g1_v(19)=(-(y(16)*(1-params(1))*getPowerDeriv(y(17),(-params(1)),1)));
g1_v(20)=1;
g1_v(21)=1;
g1_v(22)=1;
g1_v(23)=(-(4*(-(params(9)*1/y(18)))));
g1_v(24)=(-y(27));
g1_v(25)=1;
g1_v(26)=(-1);
g1_v(27)=(-T(7));
g1_v(28)=1;
g1_v(29)=1;
g1_v(30)=1;
g1_v(31)=(-((-1)/(y(23)*y(23))));
g1_v(32)=(-(T(3)*(-y(36))/(y(24)*y(24))/y(27)));
g1_v(33)=1/y(24);
g1_v(34)=(-(y(36)/y(24)*params(2)*T(8)*1/y(13)/y(27)));
g1_v(35)=(-((-T(4))/(y(27)*y(27))));
g1_v(36)=(-y(19));
g1_v(37)=(-(T(3)*1/y(24)/y(27)));
g1_v(38)=(-1);
g1_v(39)=(-1);
g1_v(40)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 12, 39);
end
