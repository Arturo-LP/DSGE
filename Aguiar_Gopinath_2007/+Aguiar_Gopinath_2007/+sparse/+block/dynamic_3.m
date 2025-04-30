function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(35)=y(2)*T(13)+y(23)*T(5)-(1-params(4))*y(2);
  y(41)=log(y(35));
  y(40)=log(y(22));
  T(19)=log(y(24));
  y(42)=y(6)+T(19)-log(y(3));
  y(34)=y(35)/y(24);
  y(33)=y(22)/y(24);
  y(39)=T(19);
  y(38)=log(y(33));
  y(37)=log(y(34));
  y(36)=(y(4)-y(25)*T(5)*y(26))/y(24);
end
