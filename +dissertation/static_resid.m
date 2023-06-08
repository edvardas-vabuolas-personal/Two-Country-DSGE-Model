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
residual = zeros(60, 1);
lhs = y(2);
rhs = params(2)*y(2)+T(10)*y(1);
residual(1) = lhs - rhs;
lhs = y(1);
rhs = y(1)-(y(3)-y(2)-y(5))*1/T(7);
residual(2) = lhs - rhs;
lhs = y(4);
rhs = T(8)*y(22)+T(9)*y(24);
residual(3) = lhs - rhs;
lhs = y(5);
rhs = y(22)*(1-params(9))*T(8)*(-T(7))+y(24)*((1-params(7))*T(6)-T(7)*T(9))*(1-params(12));
residual(4) = lhs - rhs;
lhs = y(6);
rhs = T(7)*y(4)-(1-params(7))*T(6)*y(24);
residual(5) = lhs - rhs;
lhs = y(8);
rhs = T(7)*y(1);
residual(6) = lhs - rhs;
lhs = y(1);
rhs = y(7)-y(4);
residual(7) = lhs - rhs;
lhs = y(8);
rhs = y(9)-y(6);
residual(8) = lhs - rhs;
lhs = y(10);
rhs = y(2);
residual(9) = lhs - rhs;
lhs = y(7);
rhs = y(22)+(1-params(4))*y(11);
residual(10) = lhs - rhs;
lhs = y(12);
rhs = y(3)-y(2);
residual(11) = lhs - rhs;
lhs = y(23);
rhs = y(23)*params(10)+x(1);
residual(12) = lhs - rhs;
lhs = y(22);
rhs = y(22)*params(9)+x(2);
residual(13) = lhs - rhs;
lhs = y(24);
rhs = y(24)*params(12)+x(3);
residual(14) = lhs - rhs;
lhs = y(13)-y(18);
rhs = params(1)*y(15)+params(3)*y(11);
residual(15) = lhs - rhs;
lhs = y(14);
rhs = y(9)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(24)*params(7)/params(1);
residual(16) = lhs - rhs;
lhs = y(14);
rhs = y(7)-y(15)-params(7)*y(9);
residual(17) = lhs - rhs;
residual(18) = y(21);
lhs = y(26);
rhs = y(3)*4;
residual(19) = lhs - rhs;
lhs = y(25);
rhs = y(12)*4;
residual(20) = lhs - rhs;
lhs = y(27);
rhs = y(5)*4;
residual(21) = lhs - rhs;
lhs = y(28);
rhs = y(10)*4;
residual(22) = lhs - rhs;
lhs = y(29);
rhs = y(2)*4;
residual(23) = lhs - rhs;
lhs = y(16);
rhs = y(7)-(y(7));
residual(24) = lhs - rhs;
lhs = y(17);
rhs = y(2)+y(17);
residual(25) = lhs - rhs;
lhs = y(18);
rhs = y(10)+y(18);
residual(26) = lhs - rhs;
lhs = y(9);
rhs = y(19)+x(4)-y(17);
residual(27) = lhs - rhs;
residual(28) = y(20);
lhs = y(3);
rhs = 0.5*(y(23)+y(50))+params(13)*(y(2)+y(31))+params(14)*(y(16)+y(44));
residual(29) = lhs - rhs;
lhs = y(31);
rhs = params(16)*y(31)+T(5)*y(30);
residual(30) = lhs - rhs;
lhs = y(30);
rhs = y(30)-(y(3)-y(31)-y(33))*1/T(2);
residual(31) = lhs - rhs;
lhs = y(32);
rhs = T(3)*y(49)+T(4)*y(51);
residual(32) = lhs - rhs;
lhs = y(33);
rhs = y(49)*(1-params(23))*T(3)*(-T(2))+y(51)*((1-params(21))*T(1)-T(2)*T(4))*(1-params(26));
residual(33) = lhs - rhs;
lhs = y(34);
rhs = T(2)*y(32)-y(51)*(1-params(21))*T(6);
residual(34) = lhs - rhs;
lhs = y(36);
rhs = T(2)*y(30);
residual(35) = lhs - rhs;
lhs = y(30);
rhs = y(35)-y(32);
residual(36) = lhs - rhs;
lhs = y(36);
rhs = y(37)-y(34);
residual(37) = lhs - rhs;
lhs = y(38);
rhs = y(31);
residual(38) = lhs - rhs;
lhs = y(35);
rhs = y(49)+(1-params(18))*y(39);
residual(39) = lhs - rhs;
lhs = y(40);
rhs = y(3)-y(31);
residual(40) = lhs - rhs;
lhs = y(50);
rhs = y(50)*params(24)+x(5);
residual(41) = lhs - rhs;
lhs = y(49);
rhs = y(49)*params(23)+x(6);
residual(42) = lhs - rhs;
lhs = y(51);
rhs = y(51)*params(26)+x(7);
residual(43) = lhs - rhs;
lhs = y(41)-y(46);
rhs = params(15)*y(43)+params(17)*y(39);
residual(44) = lhs - rhs;
lhs = y(42);
rhs = y(37)*params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)-y(51)*params(21)/params(15);
residual(45) = lhs - rhs;
lhs = y(42);
rhs = y(35)-y(43)-params(21)*y(37);
residual(46) = lhs - rhs;
lhs = y(53);
rhs = y(3)*4;
residual(47) = lhs - rhs;
lhs = y(52);
rhs = 4*y(40);
residual(48) = lhs - rhs;
lhs = y(54);
rhs = 4*y(33);
residual(49) = lhs - rhs;
lhs = y(55);
rhs = 4*y(38);
residual(50) = lhs - rhs;
lhs = y(56);
rhs = 4*y(31);
residual(51) = lhs - rhs;
lhs = y(44);
rhs = y(35)-(y(35));
residual(52) = lhs - rhs;
lhs = y(45);
rhs = y(31)+y(45);
residual(53) = lhs - rhs;
lhs = y(46);
rhs = y(38)+y(46);
residual(54) = lhs - rhs;
lhs = y(37);
rhs = x(4)+y(47)-y(45);
residual(55) = lhs - rhs;
residual(56) = y(48);
lhs = y(57);
rhs = y(2);
residual(57) = lhs - rhs;
lhs = y(58);
rhs = y(31);
residual(58) = lhs - rhs;
lhs = y(59);
rhs = y(16);
residual(59) = lhs - rhs;
lhs = y(60);
rhs = y(44);
residual(60) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
