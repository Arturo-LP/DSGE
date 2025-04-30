function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(5, 1);
end
[T_order, T] = Gali_2015_chapter_2.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(26, 1);
g1_v(1)=(-(T(2)*getPowerDeriv(y(1),params(6),1)));
g1_v(2)=1;
g1_v(3)=1;
g1_v(4)=1;
g1_v(5)=(-((-params(2))/(y(3)*y(3))));
g1_v(6)=(-y(7));
g1_v(7)=(-(exp(y(9))*1/params(2)*getPowerDeriv(y(3),params(8),1)));
g1_v(8)=(-(4*1/y(3)));
g1_v(9)=(-T(3));
g1_v(10)=(-((1-params(1))*T(4)));
g1_v(11)=1/y(4)-params(3)*1/y(4);
g1_v(12)=(-(T(1)*getPowerDeriv(y(5),params(7),1)));
g1_v(13)=(-(y(4)*getPowerDeriv(y(5),1-params(1),1)));
g1_v(14)=(-(y(4)*(1-params(1))*getPowerDeriv(y(5),(-params(1)),1)));
g1_v(15)=1;
g1_v(16)=1;
g1_v(17)=1;
g1_v(18)=(-y(3));
g1_v(19)=1;
g1_v(20)=(-1);
g1_v(21)=(-T(5));
g1_v(22)=1-params(5);
g1_v(23)=1;
g1_v(24)=1;
g1_v(25)=(-((-1)/(y(11)*y(11))));
g1_v(26)=1/y(12)-params(4)*1/y(12);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 12, 12);
end
