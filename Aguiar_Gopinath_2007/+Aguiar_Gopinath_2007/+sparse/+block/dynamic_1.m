function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(30)=params(9)*y(9)+x(1);
  y(27)=(1-params(3))*params(1)+params(3)*y(6)+x(2);
end
