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
residual = zeros(58, 1);
lhs = y(25);
rhs = params(2)*params(29)*y(83)+params(2)*(1-params(29))*y(86)+y(24)*T(6);
residual(1) = lhs - rhs;
lhs = y(24);
rhs = params(30)*y(82)+(1-params(30))*y(85)-(y(75)-(params(29)*y(83)+(1-params(29))*y(86))-y(27))*T(13);
residual(2) = lhs - rhs;
lhs = y(26);
rhs = y(44)*T(3)+y(46)*T(5)+y(43)*T(4);
residual(3) = lhs - rhs;
lhs = y(27);
rhs = y(44)*(1-params(9))*T(3)*(-T(2))+(y(84)-y(43))*T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+T(4))+y(46)*(1-params(12))*((1-params(7))*T(1)-T(2)*T(5));
residual(4) = lhs - rhs;
lhs = y(28);
rhs = (y(26)-y(43))*T(2)-y(46)*(1-params(7))*T(1);
residual(5) = lhs - rhs;
lhs = y(30);
rhs = y(24)*T(2);
residual(6) = lhs - rhs;
lhs = y(24);
rhs = y(29)-y(26);
residual(7) = lhs - rhs;
lhs = y(30);
rhs = y(31)-y(28);
residual(8) = lhs - rhs;
lhs = y(32);
rhs = y(25)+params(7)*(y(31)-y(2));
residual(9) = lhs - rhs;
lhs = y(29);
rhs = y(44)+(1-params(4))*y(33);
residual(10) = lhs - rhs;
lhs = y(34);
rhs = y(75)-y(83);
residual(11) = lhs - rhs;
lhs = y(44);
rhs = params(9)*y(9)+x(it_, 2);
residual(12) = lhs - rhs;
lhs = y(46);
rhs = params(12)*y(11)+x(it_, 3);
residual(13) = lhs - rhs;
lhs = y(35)-y(40);
rhs = params(1)*y(37)+params(3)*y(33)+(1-params(33))*y(48);
residual(14) = lhs - rhs;
lhs = y(36);
rhs = y(31)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(46)*params(7)/params(1);
residual(15) = lhs - rhs;
lhs = y(36);
rhs = y(29)-y(37)-y(47)-params(7)*y(31);
residual(16) = lhs - rhs;
lhs = y(49);
rhs = y(33)+y(35)+y(48);
residual(17) = lhs - rhs;
lhs = y(49);
rhs = y(47)+y(39);
residual(18) = lhs - rhs;
lhs = y(47);
rhs = params(28)*y(12)+x(it_, 4);
residual(19) = lhs - rhs;
lhs = y(38);
rhs = y(29)-(steady_state(6));
residual(20) = lhs - rhs;
lhs = y(39);
rhs = y(25)+y(5);
residual(21) = lhs - rhs;
lhs = y(40);
rhs = y(32)+y(6);
residual(22) = lhs - rhs;
lhs = y(31);
rhs = y(41)+x(it_, 8)-y(39);
residual(23) = lhs - rhs;
lhs = y(42);
rhs = y(41)-y(7);
residual(24) = lhs - rhs;
lhs = y(55);
rhs = y(86)*params(16)*params(31)+y(83)*(1-params(31))+y(54)*T(12);
residual(25) = lhs - rhs;
lhs = y(54);
rhs = y(85)*params(32)+y(82)*(1-params(32))-(y(75)-(y(83)*(1-params(31))+y(86)*params(31))-y(57))*T(14);
residual(26) = lhs - rhs;
lhs = y(56);
rhs = y(73)*T(9)+y(74)*T(11)+y(43)*T(10);
residual(27) = lhs - rhs;
lhs = y(57);
rhs = y(73)*(1-params(23))*T(9)*(-T(8))+(y(84)-y(43))*T(8)*(params(21)*(params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1)-1)+T(10))+y(74)*(1-params(25))*((1-params(21))*T(7)-T(8)*T(11));
residual(28) = lhs - rhs;
lhs = y(58);
rhs = (y(56)-y(43))*T(8)-y(74)*(1-params(21))*T(1);
residual(29) = lhs - rhs;
lhs = y(60);
rhs = y(54)*T(8);
residual(30) = lhs - rhs;
lhs = y(54);
rhs = y(59)-y(56);
residual(31) = lhs - rhs;
lhs = y(60);
rhs = y(61)-y(58);
residual(32) = lhs - rhs;
lhs = y(62);
rhs = y(55)+params(21)*(y(61)-y(14));
residual(33) = lhs - rhs;
lhs = y(59);
rhs = y(73)+(1-params(18))*y(63);
residual(34) = lhs - rhs;
lhs = y(64);
rhs = y(75)-y(86);
residual(35) = lhs - rhs;
lhs = y(73);
rhs = params(23)*y(20)+x(it_, 5);
residual(36) = lhs - rhs;
lhs = y(74);
rhs = params(25)*y(21)+x(it_, 6);
residual(37) = lhs - rhs;
lhs = y(65)-y(70);
rhs = params(15)*y(67)+params(17)*y(63);
residual(38) = lhs - rhs;
lhs = y(66);
rhs = y(61)*params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)-y(74)*params(21)/params(15);
residual(39) = lhs - rhs;
lhs = y(66);
rhs = y(59)-y(67)-params(21)*y(61);
residual(40) = lhs - rhs;
lhs = y(68);
rhs = y(59)-(steady_state(36));
residual(41) = lhs - rhs;
lhs = y(69);
rhs = y(55)+y(17);
residual(42) = lhs - rhs;
lhs = y(70);
rhs = y(62)+y(18);
residual(43) = lhs - rhs;
lhs = y(61);
rhs = x(it_, 8)+y(71)-y(69);
residual(44) = lhs - rhs;
lhs = y(72);
rhs = y(71)-y(19);
residual(45) = lhs - rhs;
lhs = y(75);
rhs = y(75)*params(27)+(1-params(27))*(params(13)*(y(55)*(1-params(26))+y(25)*params(26))+params(14)*(y(68)*(1-params(26))+y(38)*params(26)))+y(45);
residual(46) = lhs - rhs;
lhs = y(45);
rhs = params(10)*y(10)+x(it_, 1);
residual(47) = lhs - rhs;
lhs = y(43)-y(8);
rhs = x(it_, 7)+params(11)*(y(8)-y(23));
residual(48) = lhs - rhs;
lhs = y(50);
rhs = y(29)-y(1)+x(it_, 9);
residual(49) = lhs - rhs;
lhs = y(51);
rhs = y(37)-y(4)+x(it_, 10);
residual(50) = lhs - rhs;
lhs = y(52);
rhs = y(35)-y(3)+x(it_, 11);
residual(51) = lhs - rhs;
lhs = y(53);
rhs = y(32)+x(it_, 12);
residual(52) = lhs - rhs;
lhs = y(76);
rhs = y(59)-y(13)+x(it_, 13);
residual(53) = lhs - rhs;
lhs = y(77);
rhs = y(67)-y(16)+x(it_, 14);
residual(54) = lhs - rhs;
lhs = y(78);
rhs = y(65)-y(15)+x(it_, 15);
residual(55) = lhs - rhs;
lhs = y(79);
rhs = y(62)+x(it_, 16);
residual(56) = lhs - rhs;
lhs = y(80);
rhs = y(75)-y(22)+x(it_, 17);
residual(57) = lhs - rhs;
lhs = y(81);
rhs = y(8);
residual(58) = lhs - rhs;

end
