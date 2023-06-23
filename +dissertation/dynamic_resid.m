function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = dissertation.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(62, 1);
lhs = y(27);
rhs = params(2)*params(32)*y(89)+params(2)*(1-params(32))*y(92)+y(26)*T(6);
residual(1) = lhs - rhs;
lhs = y(26);
rhs = params(33)*y(88)+(1-params(33))*y(91)-(y(76)-(params(32)*y(89)+(1-params(32))*y(92))-y(29))*T(13);
residual(2) = lhs - rhs;
lhs = y(28);
rhs = y(46)*T(3)+y(47)*T(5)+y(45)*T(4);
residual(3) = lhs - rhs;
lhs = y(29);
rhs = y(46)*(1-params(9))*T(3)*(-T(2))+(y(90)-y(45))*T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+T(4))+y(47)*(1-params(12))*((1-params(7))*T(1)-T(2)*T(5));
residual(4) = lhs - rhs;
lhs = y(30);
rhs = (y(28)-y(45))*T(2)-y(47)*(1-params(7))*T(1);
residual(5) = lhs - rhs;
lhs = y(32);
rhs = y(26)*T(2);
residual(6) = lhs - rhs;
lhs = y(26);
rhs = y(31)-y(28);
residual(7) = lhs - rhs;
lhs = y(32);
rhs = y(33)-y(30);
residual(8) = lhs - rhs;
lhs = y(34);
rhs = y(27)+params(7)*(y(33)-y(2));
residual(9) = lhs - rhs;
lhs = y(31);
rhs = y(46)+(1-params(4))*y(35);
residual(10) = lhs - rhs;
lhs = y(36);
rhs = y(76)-y(89);
residual(11) = lhs - rhs;
lhs = y(46);
rhs = params(9)*y(9)+x(it_, 1);
residual(12) = lhs - rhs;
lhs = y(47);
rhs = params(12)*y(10)+x(it_, 2);
residual(13) = lhs - rhs;
lhs = y(40);
rhs = y(31)-(steady_state(6));
residual(14) = lhs - rhs;
lhs = y(41);
rhs = y(27)+y(5);
residual(15) = lhs - rhs;
lhs = y(42);
rhs = y(34)+y(6);
residual(16) = lhs - rhs;
lhs = y(33);
rhs = y(43)+x(it_, 9)-y(41);
residual(17) = lhs - rhs;
lhs = y(44);
rhs = y(43)-y(7);
residual(18) = lhs - rhs;
lhs = y(49);
rhs = y(92)*params(14)*params(34)+y(89)*(1-params(34))+y(48)*T(12);
residual(19) = lhs - rhs;
lhs = y(48);
rhs = y(91)*params(35)+y(88)*(1-params(35))-(y(76)-(y(89)*(1-params(34))+y(92)*params(34))-y(51))*T(14);
residual(20) = lhs - rhs;
lhs = y(50);
rhs = y(67)*T(9)+y(68)*T(11)+y(45)*T(10);
residual(21) = lhs - rhs;
lhs = y(51);
rhs = y(67)*(1-params(21))*T(9)*(-T(8))+(y(90)-y(45))*T(8)*(params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1)+T(10))+y(68)*(1-params(23))*((1-params(19))*T(7)-T(8)*T(11));
residual(22) = lhs - rhs;
lhs = y(52);
rhs = (y(50)-y(45))*T(8)-y(68)*(1-params(19))*T(1);
residual(23) = lhs - rhs;
lhs = y(54);
rhs = y(48)*T(8);
residual(24) = lhs - rhs;
lhs = y(48);
rhs = y(53)-y(50);
residual(25) = lhs - rhs;
lhs = y(54);
rhs = y(55)-y(52);
residual(26) = lhs - rhs;
lhs = y(56);
rhs = y(49)+params(19)*(y(55)-y(12));
residual(27) = lhs - rhs;
lhs = y(53);
rhs = y(67)+(1-params(16))*y(57);
residual(28) = lhs - rhs;
lhs = y(58);
rhs = y(76)-y(92);
residual(29) = lhs - rhs;
lhs = y(67);
rhs = params(21)*y(18)+x(it_, 3);
residual(30) = lhs - rhs;
lhs = y(68);
rhs = params(23)*y(19)+x(it_, 4);
residual(31) = lhs - rhs;
lhs = y(62);
rhs = y(53)-(steady_state(28));
residual(32) = lhs - rhs;
lhs = y(63);
rhs = y(49)+y(15);
residual(33) = lhs - rhs;
lhs = y(64);
rhs = y(56)+y(16);
residual(34) = lhs - rhs;
lhs = y(55);
rhs = x(it_, 9)+y(65)-y(63);
residual(35) = lhs - rhs;
lhs = y(66);
rhs = y(65)-y(17);
residual(36) = lhs - rhs;
lhs = y(76);
rhs = params(31)*y(23)+(1-params(31))*(params(29)*(y(49)*(1-params(28))+y(27)*params(28))+params(30)*(y(62)*(1-params(28))+y(40)*params(28)))+y(75);
residual(37) = lhs - rhs;
lhs = y(75);
rhs = params(10)*y(22)+x(it_, 5);
residual(38) = lhs - rhs;
lhs = y(45)-y(8);
rhs = x(it_, 8)+params(11)*(y(8)-y(24));
residual(39) = lhs - rhs;
lhs = y(37)-y(42)-1/(1-params(26))*y(73);
rhs = params(1)*y(39)+params(3)*y(35);
residual(40) = lhs - rhs;
lhs = y(59)-y(64)-1/(1-params(27))*y(74);
rhs = params(13)*y(61)+params(15)*y(57);
residual(41) = lhs - rhs;
lhs = y(38);
rhs = y(33)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(47)*params(7)/params(1);
residual(42) = lhs - rhs;
lhs = y(60);
rhs = y(55)*params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)-y(68)*params(19)/params(13);
residual(43) = lhs - rhs;
lhs = y(38);
rhs = y(31)-y(39)-y(69)-params(7)*y(33);
residual(44) = lhs - rhs;
lhs = y(60);
rhs = y(53)-y(61)-y(71)-params(19)*y(55);
residual(45) = lhs - rhs;
lhs = y(70);
rhs = y(35)+y(37)+y(73);
residual(46) = lhs - rhs;
lhs = y(72);
rhs = y(57)+y(59)+y(74);
residual(47) = lhs - rhs;
lhs = y(70);
rhs = y(41)+y(69);
residual(48) = lhs - rhs;
lhs = y(72);
rhs = y(63)+y(71);
residual(49) = lhs - rhs;
lhs = y(69);
rhs = params(24)*y(20)+x(it_, 6);
residual(50) = lhs - rhs;
lhs = y(71);
rhs = params(25)*y(21)+x(it_, 7);
residual(51) = lhs - rhs;
lhs = y(77);
rhs = y(31)-y(1)+x(it_, 10);
residual(52) = lhs - rhs;
lhs = y(78);
rhs = y(39)-y(4)+x(it_, 11);
residual(53) = lhs - rhs;
lhs = y(79);
rhs = y(37)-y(3)+x(it_, 12);
residual(54) = lhs - rhs;
lhs = y(80);
rhs = y(34)+x(it_, 13);
residual(55) = lhs - rhs;
lhs = y(81);
rhs = y(53)-y(11)+x(it_, 14);
residual(56) = lhs - rhs;
lhs = y(82);
rhs = y(61)-y(14)+x(it_, 15);
residual(57) = lhs - rhs;
lhs = y(83);
rhs = y(59)-y(13)+x(it_, 16);
residual(58) = lhs - rhs;
lhs = y(84);
rhs = y(56)+x(it_, 17);
residual(59) = lhs - rhs;
lhs = y(85);
rhs = x(it_, 18)+x(it_, 19)-y(25);
residual(60) = lhs - rhs;
lhs = y(86);
rhs = y(8);
residual(61) = lhs - rhs;
lhs = y(87);
rhs = x(it_, 19);
residual(62) = lhs - rhs;

end
