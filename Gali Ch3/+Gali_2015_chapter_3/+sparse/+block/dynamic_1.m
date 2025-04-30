function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(38)=params(4)*y(13)+x(2);
  y(39)=params(3)*y(14)+x(1);
  y(44)=params(5)*y(19)-x(3);
  y(31)=(1-params(5))*y(44)+y(39)*(1-params(3))*(1+params(7))/(params(1)+params(7)+(1-params(1))*params(6))*(-params(6));
  y(28)=(1+params(7))/(params(1)+params(7)+(1-params(1))*params(6))*y(39);
  y(42)=y(31)*4;
end
