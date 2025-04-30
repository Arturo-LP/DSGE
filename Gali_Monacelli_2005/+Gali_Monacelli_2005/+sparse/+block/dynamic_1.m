function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(32)=0;
  y(36)=params(10)*y(17)+x(2);
  y(31)=params(11)*y(12)+x(1);
  y(30)=0;
  y(38)=0;
end
