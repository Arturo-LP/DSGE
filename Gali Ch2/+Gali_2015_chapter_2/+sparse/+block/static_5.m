function [y, T, residual, g1] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  residual(1)=(y(8))-(y(4)*y(5)^(1-params(1)));
  residual(2)=(y(2))-(y(4)*(1-params(1))*y(5)^(-params(1)));
  residual(3)=(y(1))-(y(8));
  T(4)=y(1)^params(6);
  T(5)=y(5)^params(7);
  residual(4)=(y(2))-(T(4)*T(5));
if nargout > 3
    g1_v = NaN(9, 1);
g1_v(1)=1;
g1_v(2)=(-1);
g1_v(3)=(-(y(4)*getPowerDeriv(y(5),1-params(1),1)));
g1_v(4)=(-(y(4)*(1-params(1))*getPowerDeriv(y(5),(-params(1)),1)));
g1_v(5)=(-(T(4)*getPowerDeriv(y(5),params(7),1)));
g1_v(6)=1;
g1_v(7)=(-(T(5)*getPowerDeriv(y(1),params(6),1)));
g1_v(8)=1;
g1_v(9)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 4);
end
end
