function [y, T, residual, g1] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  residual(1)=(y(21))-(y(22)-y(23));
  residual(2)=(y(20))-(params(7)*y(39)+y(21)*(1-params(7)*params(6))*(1-params(6))/params(6)*(params(4)+T(1)));
  T(2)=T(1)^(-1);
  residual(3)=(y(22))-(y(31)+y(26)*T(2));
  residual(4)=(y(26))-(y(7)-y(20));
if nargout > 3
    g1_v = NaN(10, 1);
g1_v(1)=(-1);
g1_v(2)=(-1);
g1_v(3)=1;
g1_v(4)=1;
g1_v(5)=(-((1-params(7)*params(6))*(1-params(6))/params(6)*(params(4)+T(1))));
g1_v(6)=(-T(2));
g1_v(7)=1;
g1_v(8)=1;
g1_v(9)=1;
g1_v(10)=(-params(7));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 12);
end
end
