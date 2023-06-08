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
residual = zeros(60, 1);
lhs = y(24);
rhs = params(2)*y(84)+y(23)*T(10);
residual(1) = lhs - rhs;
lhs = y(23);
rhs = y(83)-(y(25)-y(84)-y(27))*1/T(7);
residual(2) = lhs - rhs;
lhs = y(26);
rhs = y(44)*T(8)+y(46)*T(9);
residual(3) = lhs - rhs;
lhs = y(27);
rhs = y(44)*(1-params(9))*T(8)*(-T(7))+y(46)*(1-params(12))*((1-params(7))*T(6)-T(7)*T(9));
residual(4) = lhs - rhs;
lhs = y(28);
rhs = y(26)*T(7)-y(46)*(1-params(7))*T(6);
residual(5) = lhs - rhs;
lhs = y(30);
rhs = y(23)*T(7);
residual(6) = lhs - rhs;
lhs = y(23);
rhs = y(29)-y(26);
residual(7) = lhs - rhs;
lhs = y(30);
rhs = y(31)-y(28);
residual(8) = lhs - rhs;
lhs = y(32);
rhs = y(24)+params(7)*(y(31)-y(2));
residual(9) = lhs - rhs;
lhs = y(29);
rhs = y(44)+(1-params(4))*y(33);
residual(10) = lhs - rhs;
lhs = y(34);
rhs = y(25)-y(84);
residual(11) = lhs - rhs;
lhs = y(45);
rhs = params(10)*y(8)+x(it_, 1);
residual(12) = lhs - rhs;
lhs = y(44);
rhs = params(9)*y(7)+x(it_, 2);
residual(13) = lhs - rhs;
lhs = y(46);
rhs = params(12)*y(9)+x(it_, 3);
residual(14) = lhs - rhs;
lhs = y(35)-y(40);
rhs = params(1)*y(37)+params(3)*y(33);
residual(15) = lhs - rhs;
lhs = y(36);
rhs = y(31)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(46)*params(7)/params(1);
residual(16) = lhs - rhs;
lhs = y(36);
rhs = y(29)-y(37)-params(7)*y(31);
residual(17) = lhs - rhs;
residual(18) = y(43);
lhs = y(48);
rhs = y(25)*4;
residual(19) = lhs - rhs;
lhs = y(47);
rhs = y(34)*4;
residual(20) = lhs - rhs;
lhs = y(49);
rhs = y(27)*4;
residual(21) = lhs - rhs;
lhs = y(50);
rhs = y(32)*4;
residual(22) = lhs - rhs;
lhs = y(51);
rhs = y(24)*4;
residual(23) = lhs - rhs;
lhs = y(38);
rhs = y(29)-(steady_state(7));
residual(24) = lhs - rhs;
lhs = y(39);
rhs = y(24)+y(4);
residual(25) = lhs - rhs;
lhs = y(40);
rhs = y(32)+y(5);
residual(26) = lhs - rhs;
lhs = y(31);
rhs = y(41)+x(it_, 4)-y(39);
residual(27) = lhs - rhs;
lhs = y(42);
rhs = y(41)-y(6);
residual(28) = lhs - rhs;
lhs = y(25);
rhs = 0.5*(y(45)+y(72))+params(13)*(y(1)+y(10))+params(14)*(y(3)+y(12))+0.5*(y(1)-y(19))+0.5*(y(10)-y(20))+0.5*(y(3)-y(21))+0.5*(y(12)-y(22));
residual(29) = lhs - rhs;
lhs = y(53);
rhs = params(16)*y(86)+y(52)*T(5);
residual(30) = lhs - rhs;
lhs = y(52);
rhs = y(85)-(y(25)-y(86)-y(55))*1/T(2);
residual(31) = lhs - rhs;
lhs = y(54);
rhs = y(71)*T(3)+y(73)*T(4);
residual(32) = lhs - rhs;
lhs = y(55);
rhs = y(71)*(1-params(23))*T(3)*(-T(2))+y(73)*(1-params(26))*((1-params(21))*T(1)-T(2)*T(4));
residual(33) = lhs - rhs;
lhs = y(56);
rhs = y(54)*T(2)-y(73)*(1-params(21))*T(6);
residual(34) = lhs - rhs;
lhs = y(58);
rhs = y(52)*T(2);
residual(35) = lhs - rhs;
lhs = y(52);
rhs = y(57)-y(54);
residual(36) = lhs - rhs;
lhs = y(58);
rhs = y(59)-y(56);
residual(37) = lhs - rhs;
lhs = y(60);
rhs = y(53)+params(21)*(y(59)-y(11));
residual(38) = lhs - rhs;
lhs = y(57);
rhs = y(71)+(1-params(18))*y(61);
residual(39) = lhs - rhs;
lhs = y(62);
rhs = y(25)-y(86);
residual(40) = lhs - rhs;
lhs = y(72);
rhs = params(24)*y(17)+x(it_, 5);
residual(41) = lhs - rhs;
lhs = y(71);
rhs = params(23)*y(16)+x(it_, 6);
residual(42) = lhs - rhs;
lhs = y(73);
rhs = params(26)*y(18)+x(it_, 7);
residual(43) = lhs - rhs;
lhs = y(63)-y(68);
rhs = params(15)*y(65)+params(17)*y(61);
residual(44) = lhs - rhs;
lhs = y(64);
rhs = y(59)*params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)-y(73)*params(21)/params(15);
residual(45) = lhs - rhs;
lhs = y(64);
rhs = y(57)-y(65)-params(21)*y(59);
residual(46) = lhs - rhs;
lhs = y(75);
rhs = y(25)*4;
residual(47) = lhs - rhs;
lhs = y(74);
rhs = 4*y(62);
residual(48) = lhs - rhs;
lhs = y(76);
rhs = 4*y(55);
residual(49) = lhs - rhs;
lhs = y(77);
rhs = 4*y(60);
residual(50) = lhs - rhs;
lhs = y(78);
rhs = 4*y(53);
residual(51) = lhs - rhs;
lhs = y(66);
rhs = y(57)-(steady_state(35));
residual(52) = lhs - rhs;
lhs = y(67);
rhs = y(53)+y(13);
residual(53) = lhs - rhs;
lhs = y(68);
rhs = y(60)+y(14);
residual(54) = lhs - rhs;
lhs = y(59);
rhs = x(it_, 4)+y(69)-y(67);
residual(55) = lhs - rhs;
lhs = y(70);
rhs = y(69)-y(15);
residual(56) = lhs - rhs;
lhs = y(79);
rhs = y(1);
residual(57) = lhs - rhs;
lhs = y(80);
rhs = y(10);
residual(58) = lhs - rhs;
lhs = y(81);
rhs = y(3);
residual(59) = lhs - rhs;
lhs = y(82);
rhs = y(12);
residual(60) = lhs - rhs;

end
