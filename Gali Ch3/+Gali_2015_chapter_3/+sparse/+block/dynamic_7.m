function [y, T] = dynamic_7(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(35)=y(29)-y(33)*params(10);
  y(48)=y(46)-y(45);
  y(37)=y(35)+y(45);
  y(49)=y(29)*(-(params(6)+(params(1)+params(7))/(1-params(1))))+y(39)*(1+params(7))/(1-params(1));
  y(50)=y(27)*(-(params(6)+(params(1)+params(7))/(1-params(1))));
  y(43)=y(26)*4;
  y(32)=y(33)-y(51);
  y(40)=y(32)*4;
  y(41)=y(33)*4;
  y(36)=4*(y(26)+y(29)-y(4)-params(10)*(y(33)-y(8)));
end
