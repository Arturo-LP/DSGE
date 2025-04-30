function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  y(30)=y(29)-(steady_state(4));
  residual(1)=(y(27))-(y(29)-y(28));
  residual(2)=(y(27))-((-1)/params(6)*(y(33)-y(51)-y(31))+y(52));
  T(1)=(params(6)+(params(1)+params(7))/(1-params(1)))*(1-params(1))/(1-params(1)+params(1)*params(11))*(1-params(12))*(1-params(12)*params(2))/params(12);
  residual(3)=(y(26))-(params(2)*y(51)+y(27)*T(1));
  residual(4)=(y(33))-(y(26)*params(8)+params(9)*y(30)+y(38));
if nargout > 3
    g1_v = NaN(9, 1);
g1_v(1)=(-1);
g1_v(2)=(-params(9));
g1_v(3)=(-((-1)/params(6)));
g1_v(4)=1;
g1_v(5)=1;
g1_v(6)=1;
g1_v(7)=(-T(1));
g1_v(8)=1;
g1_v(9)=(-params(8));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 4);
end
end
