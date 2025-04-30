function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(4, 1);
end
[T_order, T] = Gali_Monacelli_2005.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(37, 1);
g1_v(1)=(-T(3));
g1_v(2)=1-params(7);
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=1;
g1_v(6)=(-((1-params(7)*params(6))*(1-params(6))/params(6)*T(2)));
g1_v(7)=1;
g1_v(8)=(-1);
g1_v(9)=1;
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=1;
g1_v(13)=1;
g1_v(14)=(-T(3));
g1_v(15)=1;
g1_v(16)=T(3);
g1_v(17)=(-T(3));
g1_v(18)=(-(params(8)*((params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)-1)));
g1_v(19)=(-(params(8)*(params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)));
g1_v(20)=1;
g1_v(21)=1;
g1_v(22)=1;
g1_v(23)=(-T(4));
g1_v(24)=(-1);
g1_v(25)=1-params(11);
g1_v(26)=1;
g1_v(27)=(-1);
g1_v(28)=(-params(4));
g1_v(29)=1;
g1_v(30)=1;
g1_v(31)=(-((1-params(10))*(1+params(4))/T(2)*(-T(1))));
g1_v(32)=(-((1+params(4))/T(2)));
g1_v(33)=(-1);
g1_v(34)=1-params(10);
g1_v(35)=(-1);
g1_v(36)=(-params(1));
g1_v(37)=1;
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 19, 19);
end
