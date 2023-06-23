function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = dissertation.static_resid_tt(T, y, x, params);
end
residual = zeros(62, 1);
lhs = y(2);
rhs = y(2)*params(2)*params(32)+params(2)*(1-params(32))*y(24)+T(6)*y(1);
residual(1) = lhs - rhs;
lhs = y(1);
rhs = y(1)*params(33)+(1-params(33))*y(23)-(y(51)-(y(2)*params(32)+(1-params(32))*y(24))-y(4))*T(13);
residual(2) = lhs - rhs;
lhs = y(3);
rhs = T(3)*y(21)+T(5)*y(22)+T(4)*y(20);
residual(3) = lhs - rhs;
lhs = y(4);
rhs = y(21)*(1-params(9))*T(3)*(-T(2))+y(22)*((1-params(7))*T(1)-T(2)*T(5))*(1-params(12));
residual(4) = lhs - rhs;
lhs = y(5);
rhs = T(2)*(y(3)-y(20))-(1-params(7))*T(1)*y(22);
residual(5) = lhs - rhs;
lhs = y(7);
rhs = T(2)*y(1);
residual(6) = lhs - rhs;
lhs = y(1);
rhs = y(6)-y(3);
residual(7) = lhs - rhs;
lhs = y(7);
rhs = y(8)-y(5);
residual(8) = lhs - rhs;
lhs = y(9);
rhs = y(2);
residual(9) = lhs - rhs;
lhs = y(6);
rhs = y(21)+(1-params(4))*y(10);
residual(10) = lhs - rhs;
lhs = y(11);
rhs = y(51)-y(2);
residual(11) = lhs - rhs;
lhs = y(21);
rhs = y(21)*params(9)+x(1);
residual(12) = lhs - rhs;
lhs = y(22);
rhs = y(22)*params(12)+x(2);
residual(13) = lhs - rhs;
lhs = y(15);
rhs = y(6)-(y(6));
residual(14) = lhs - rhs;
lhs = y(16);
rhs = y(2)+y(16);
residual(15) = lhs - rhs;
lhs = y(17);
rhs = y(9)+y(17);
residual(16) = lhs - rhs;
lhs = y(8);
rhs = y(18)+x(9)-y(16);
residual(17) = lhs - rhs;
residual(18) = y(19);
lhs = y(24);
rhs = y(24)*params(14)*params(34)+y(2)*(1-params(34))+T(12)*y(23);
residual(19) = lhs - rhs;
lhs = y(23);
rhs = y(23)*params(35)+y(1)*(1-params(35))-(y(51)-(y(2)*(1-params(34))+y(24)*params(34))-y(26))*T(14);
residual(20) = lhs - rhs;
lhs = y(25);
rhs = T(9)*y(42)+T(11)*y(43)+T(10)*y(20);
residual(21) = lhs - rhs;
lhs = y(26);
rhs = y(42)*(1-params(21))*T(9)*(-T(8))+y(43)*((1-params(19))*T(7)-T(8)*T(11))*(1-params(23));
residual(22) = lhs - rhs;
lhs = y(27);
rhs = T(8)*(y(25)-y(20))-y(43)*T(1)*(1-params(19));
residual(23) = lhs - rhs;
lhs = y(29);
rhs = T(8)*y(23);
residual(24) = lhs - rhs;
lhs = y(23);
rhs = y(28)-y(25);
residual(25) = lhs - rhs;
lhs = y(29);
rhs = y(30)-y(27);
residual(26) = lhs - rhs;
lhs = y(31);
rhs = y(24);
residual(27) = lhs - rhs;
lhs = y(28);
rhs = y(42)+(1-params(16))*y(32);
residual(28) = lhs - rhs;
lhs = y(33);
rhs = y(51)-y(24);
residual(29) = lhs - rhs;
lhs = y(42);
rhs = y(42)*params(21)+x(3);
residual(30) = lhs - rhs;
lhs = y(43);
rhs = y(43)*params(23)+x(4);
residual(31) = lhs - rhs;
lhs = y(37);
rhs = y(28)-(y(28));
residual(32) = lhs - rhs;
lhs = y(38);
rhs = y(24)+y(38);
residual(33) = lhs - rhs;
lhs = y(39);
rhs = y(31)+y(39);
residual(34) = lhs - rhs;
lhs = y(30);
rhs = x(9)+y(40)-y(38);
residual(35) = lhs - rhs;
residual(36) = y(41);
lhs = y(51);
rhs = y(51)*params(31)+(1-params(31))*(params(29)*(y(24)*(1-params(28))+y(2)*params(28))+params(30)*(y(37)*(1-params(28))+y(15)*params(28)))+y(50);
residual(37) = lhs - rhs;
lhs = y(50);
rhs = y(50)*params(10)+x(5);
residual(38) = lhs - rhs;
lhs = 0;
rhs = x(8);
residual(39) = lhs - rhs;
lhs = y(12)-y(17)-1/(1-params(26))*y(48);
rhs = params(1)*y(14)+params(3)*y(10);
residual(40) = lhs - rhs;
lhs = y(34)-y(39)-1/(1-params(27))*y(49);
rhs = params(13)*y(36)+params(15)*y(32);
residual(41) = lhs - rhs;
lhs = y(13);
rhs = y(8)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(22)*params(7)/params(1);
residual(42) = lhs - rhs;
lhs = y(35);
rhs = y(30)*params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)-y(43)*params(19)/params(13);
residual(43) = lhs - rhs;
lhs = y(13);
rhs = y(6)-y(14)-y(44)-params(7)*y(8);
residual(44) = lhs - rhs;
lhs = y(35);
rhs = y(28)-y(36)-y(46)-params(19)*y(30);
residual(45) = lhs - rhs;
lhs = y(45);
rhs = y(10)+y(12)+y(48);
residual(46) = lhs - rhs;
lhs = y(47);
rhs = y(32)+y(34)+y(49);
residual(47) = lhs - rhs;
lhs = y(45);
rhs = y(16)+y(44);
residual(48) = lhs - rhs;
lhs = y(47);
rhs = y(38)+y(46);
residual(49) = lhs - rhs;
lhs = y(44);
rhs = y(44)*params(24)+x(6);
residual(50) = lhs - rhs;
lhs = y(46);
rhs = y(46)*params(25)+x(7);
residual(51) = lhs - rhs;
lhs = y(52);
rhs = x(10);
residual(52) = lhs - rhs;
lhs = y(53);
rhs = x(11);
residual(53) = lhs - rhs;
lhs = y(54);
rhs = x(12);
residual(54) = lhs - rhs;
lhs = y(55);
rhs = y(9)+x(13);
residual(55) = lhs - rhs;
lhs = y(56);
rhs = x(14);
residual(56) = lhs - rhs;
lhs = y(57);
rhs = x(15);
residual(57) = lhs - rhs;
lhs = y(58);
rhs = x(16);
residual(58) = lhs - rhs;
lhs = y(59);
rhs = y(31)+x(17);
residual(59) = lhs - rhs;
lhs = y(60);
rhs = x(18);
residual(60) = lhs - rhs;
lhs = y(61);
rhs = y(20);
residual(61) = lhs - rhs;
lhs = y(62);
rhs = x(19);
residual(62) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
