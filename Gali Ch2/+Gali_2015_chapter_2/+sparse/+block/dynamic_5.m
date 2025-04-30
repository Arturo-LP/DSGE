function [y, T, residual, g1] = dynamic_5(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(2, 1);
  y(18)=1/y(23);
  T(3)=params(2)*(y(25)/y(13))^(-params(6))*y(36)/y(24);
  residual(1)=(y(23))-(T(3)/y(27));
  T(4)=exp(y(21));
  residual(2)=(y(18))-(1/params(2)*y(15)^params(8)*T(4));
if nargout > 3
    g1_v = NaN(3, 1);
g1_v(1)=1;
g1_v(2)=(-1)/(y(23)*y(23));
g1_v(3)=(-(T(4)*1/params(2)*getPowerDeriv(y(15),params(8),1)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 2, 2);
end
end
