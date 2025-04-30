function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(22)=4*(log(y(13))-log(y(1))-params(9)*(log(y(18))-log(y(6)))+log(y(15)));
end
