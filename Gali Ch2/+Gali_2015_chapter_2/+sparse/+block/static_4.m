function [y, T, residual, g1] = static_4(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(3, 1);
  residual(1)=(y(6))-(1/y(11));
  T(3)=exp(y(9));
  residual(2)=(y(6))-(1/params(2)*y(3)^params(8)*T(3));
  residual(3)=(y(11))-(params(2)/y(3));
if nargout > 3
    g1_v = NaN(6, 1);
g1_v(1)=(-((-1)/(y(11)*y(11))));
g1_v(2)=1;
g1_v(3)=1;
g1_v(4)=1;
g1_v(5)=(-(T(3)*1/params(2)*getPowerDeriv(y(3),params(8),1)));
g1_v(6)=(-((-params(2))/(y(3)*y(3))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 3, 3);
end
end
