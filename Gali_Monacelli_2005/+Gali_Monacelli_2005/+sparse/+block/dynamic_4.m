function [y, T] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(27)=y(20)+params(8)*(y(26)-y(7));
end
