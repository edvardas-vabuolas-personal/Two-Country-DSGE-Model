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
residual = zeros(70, 1);
lhs = y(83);
rhs = params(42)*y(28)+params(43)*y(41)+y(86);
residual(1) = lhs - rhs;
lhs = y(84);
rhs = y(86)+params(42)*y(51)+params(43)*y(64);
residual(2) = lhs - rhs;
lhs = y(86);
rhs = params(10)*y(25)+x(it_, 5);
residual(3) = lhs - rhs;
lhs = y(85);
rhs = y(83)*params(41)+y(84)*(1-params(41));
residual(4) = lhs - rhs;
lhs = y(28);
rhs = params(2)*y(98)+y(27)*T(3);
residual(5) = lhs - rhs;
lhs = y(51);
rhs = params(14)*y(101)+y(50)*T(6);
residual(6) = lhs - rhs;
lhs = y(27);
rhs = y(97)-(y(83)-y(98)-y(30))*params(27)*1/T(2);
residual(7) = lhs - rhs;
lhs = y(50);
rhs = y(100)-(y(84)-y(101)-y(53))*params(28)*1/T(5);
residual(8) = lhs - rhs;
lhs = y(37);
rhs = y(83)-y(98);
residual(9) = lhs - rhs;
lhs = y(60);
rhs = y(84)-y(101);
residual(10) = lhs - rhs;
lhs = y(29);
rhs = y(47)*T(9)+y(48)*T(8)+y(46)*T(7)+y(73)*T(10)+y(81)*T(15);
residual(11) = lhs - rhs;
lhs = y(52);
rhs = y(69)*T(13)+y(70)*T(12)+y(46)*T(11)+y(75)*T(14)+y(82)*T(16);
residual(12) = lhs - rhs;
lhs = y(30);
rhs = y(47)*(1-params(9))*T(9)*params(29)*(-T(2))+(y(99)-y(46))*T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+params(29)*T(7))+y(48)*(1-params(12))*((1-params(7))*T(1)-params(29)*T(2)*T(8))-y(73)*(1-params(33))*T(2)*(params(29)*T(10)-params(31))+(y(102)-y(81))*params(29)*T(2)*T(15);
residual(13) = lhs - rhs;
lhs = y(53);
rhs = y(69)*(1-params(21))*T(13)*params(30)*(-T(5))+(y(99)-y(46))*T(5)*(params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1)+params(30)*T(11))+y(70)*(1-params(24))*((1-params(19))*T(4)-params(30)*T(5)*T(12))-y(75)*(1-params(34))*T(5)*(params(30)*T(14)-params(32))+(y(103)-y(82))*params(30)*T(5)*T(16);
residual(14) = lhs - rhs;
lhs = y(31);
rhs = (params(29)*y(29)-y(46)-params(31)*y(73))*T(2)-y(48)*(1-params(7))*T(1);
residual(15) = lhs - rhs;
lhs = y(54);
rhs = (params(30)*y(52)-y(46)-params(32)*y(75))*T(5)-y(70)*(1-params(19))*T(4);
residual(16) = lhs - rhs;
lhs = y(46)-y(7);
rhs = x(it_, 8)+params(11)*(y(7)-y(26));
residual(17) = lhs - rhs;
lhs = params(1)*y(40)+params(3)*y(36);
rhs = y(49)-y(81)*params(39)/(1-params(39));
residual(18) = lhs - rhs;
lhs = params(13)*y(63)+params(15)*y(59);
rhs = y(71)-y(82)*params(40)/(1-params(40));
residual(19) = lhs - rhs;
lhs = y(39);
rhs = y(32)-y(40)-y(73)-params(7)*y(34);
residual(20) = lhs - rhs;
lhs = y(62);
rhs = y(55)-y(63)-y(75)-params(19)*y(57);
residual(21) = lhs - rhs;
lhs = y(39);
rhs = y(34)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(48)*params(7)/params(1);
residual(22) = lhs - rhs;
lhs = y(62);
rhs = y(57)*params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)-y(70)*params(19)/params(13);
residual(23) = lhs - rhs;
lhs = y(74);
rhs = y(36)+y(81)+y(49);
residual(24) = lhs - rhs;
lhs = y(76);
rhs = y(59)+y(82)+y(71);
residual(25) = lhs - rhs;
lhs = y(74);
rhs = y(73)*params(37)+params(35)*y(22);
residual(26) = lhs - rhs;
lhs = y(76);
rhs = y(75)*params(38)+params(36)*y(23);
residual(27) = lhs - rhs;
lhs = y(77);
rhs = 1/params(2)*(y(73)*(1-params(37))+(1-params(35))*y(22));
residual(28) = lhs - rhs;
lhs = y(78);
rhs = 1/params(14)*(y(75)*(1-params(38))+(1-params(36))*y(23));
residual(29) = lhs - rhs;
lhs = y(73);
rhs = params(33)*y(20)+x(it_, 6);
residual(30) = lhs - rhs;
lhs = y(75);
rhs = params(34)*y(21)+x(it_, 7);
residual(31) = lhs - rhs;
lhs = y(73)-y(74);
rhs = y(79);
residual(32) = lhs - rhs;
lhs = y(75)-y(76);
rhs = y(80);
residual(33) = lhs - rhs;
lhs = y(33);
rhs = y(27)*params(29)*T(2);
residual(34) = lhs - rhs;
lhs = y(56);
rhs = y(50)*params(30)*T(5);
residual(35) = lhs - rhs;
lhs = y(27);
rhs = y(32)-y(29);
residual(36) = lhs - rhs;
lhs = y(50);
rhs = y(55)-y(52);
residual(37) = lhs - rhs;
lhs = y(33);
rhs = y(34)-y(31);
residual(38) = lhs - rhs;
lhs = y(56);
rhs = y(57)-y(54);
residual(39) = lhs - rhs;
lhs = y(35);
rhs = y(28)+params(7)*(y(34)-y(2));
residual(40) = lhs - rhs;
lhs = y(58);
rhs = y(51)+params(19)*(y(57)-y(12));
residual(41) = lhs - rhs;
lhs = y(32);
rhs = y(47)+(1-params(4))*y(36);
residual(42) = lhs - rhs;
lhs = y(55);
rhs = y(69)+(1-params(16))*y(59);
residual(43) = lhs - rhs;
lhs = y(47);
rhs = params(9)*y(8)+x(it_, 1);
residual(44) = lhs - rhs;
lhs = y(69);
rhs = params(21)*y(17)+x(it_, 3);
residual(45) = lhs - rhs;
lhs = y(48);
rhs = params(12)*y(9)+x(it_, 2);
residual(46) = lhs - rhs;
lhs = y(70);
rhs = params(24)*y(18)+x(it_, 4);
residual(47) = lhs - rhs;
lhs = y(41);
rhs = y(32)-(steady_state(6));
residual(48) = lhs - rhs;
lhs = y(64);
rhs = y(55)-(steady_state(29));
residual(49) = lhs - rhs;
lhs = y(42);
rhs = y(28)+y(4);
residual(50) = lhs - rhs;
lhs = y(65);
rhs = y(51)+y(14);
residual(51) = lhs - rhs;
lhs = y(43);
rhs = y(35)+y(5);
residual(52) = lhs - rhs;
lhs = y(66);
rhs = y(58)+y(15);
residual(53) = lhs - rhs;
lhs = y(34);
rhs = y(44)+x(it_, 9)-y(42);
residual(54) = lhs - rhs;
lhs = y(57);
rhs = x(it_, 9)+y(67)-y(65);
residual(55) = lhs - rhs;
lhs = y(45);
rhs = y(44)-y(6);
residual(56) = lhs - rhs;
lhs = y(68);
rhs = y(67)-y(16);
residual(57) = lhs - rhs;
lhs = y(72);
rhs = params(41)*y(43)+(1-params(41))*y(66);
residual(58) = lhs - rhs;
lhs = y(49);
rhs = y(38)-y(43);
residual(59) = lhs - rhs;
lhs = y(71);
rhs = y(61)-y(66);
residual(60) = lhs - rhs;
lhs = y(87);
rhs = y(32)-y(1)+x(it_, 10);
residual(61) = lhs - rhs;
lhs = y(88);
rhs = y(40)-y(3)+x(it_, 11);
residual(62) = lhs - rhs;
lhs = y(89);
rhs = y(49)-y(10)+x(it_, 12);
residual(63) = lhs - rhs;
lhs = y(90);
rhs = y(35)+x(it_, 13);
residual(64) = lhs - rhs;
lhs = y(91);
rhs = y(55)-y(11)+x(it_, 14);
residual(65) = lhs - rhs;
lhs = y(92);
rhs = y(63)-y(13)+x(it_, 15);
residual(66) = lhs - rhs;
lhs = y(93);
rhs = y(71)-y(19)+x(it_, 16);
residual(67) = lhs - rhs;
lhs = y(94);
rhs = y(58)+x(it_, 17);
residual(68) = lhs - rhs;
lhs = y(95);
rhs = y(85)-y(24)+x(it_, 18);
residual(69) = lhs - rhs;
lhs = y(96);
rhs = y(7);
residual(70) = lhs - rhs;

end
