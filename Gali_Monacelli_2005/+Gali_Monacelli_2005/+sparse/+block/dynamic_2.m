function [y, T] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1)=params(1)/(1-params(8)+params(8)*(params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1)));
  y(24)=y(36)*(1-params(10))*(1+params(4))/(params(4)+T(1))*(-T(1))+(y(50)-y(31))*params(8)*T(1)*((1-params(8))*(params(1)*params(2)-1)+params(1)*params(3)-1+T(1)*(-((1-params(8))*(params(1)*params(2)-1)+params(1)*params(3)-1))/(params(4)+T(1)));
  y(23)=y(36)*(1+params(4))/(params(4)+T(1))+y(31)*params(8)*T(1)*(-((1-params(8))*(params(1)*params(2)-1)+params(1)*params(3)-1))/(params(4)+T(1));
end
