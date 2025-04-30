function [y, T, residual, g1] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  y(20)=y(16)*y(17)^(1-params(1));
  y(13)=y(20);
  T(1)=y(13)^params(6);
  T(2)=y(17)^params(7);
  y(14)=T(1)*T(2);
  residual(1)=(y(14))-(y(16)*(1-params(1))*y(17)^(-params(1)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=T(1)*getPowerDeriv(y(17),params(7),1)+T(2)*getPowerDeriv(y(13),params(6),1)*y(16)*getPowerDeriv(y(17),1-params(1),1)-y(16)*(1-params(1))*getPowerDeriv(y(17),(-params(1)),1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
