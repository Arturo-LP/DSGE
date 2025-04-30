function [y, T] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(14)=y(2)*params(5)/2*T(6)+T(4)*y(2)-y(2)*(1-params(4));
  y(20)=log(y(14));
  y(19)=log(y(1));
  y(13)=y(14)/y(3);
  y(12)=y(1)/y(3);
  y(18)=log(y(3));
  y(17)=log(y(12));
  y(16)=log(y(13));
  y(15)=(y(4)-y(4)*T(4)*y(5))/y(3);
end
