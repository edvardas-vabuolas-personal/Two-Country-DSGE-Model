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
residual = zeros(57, 1);
lhs = y(16);
rhs = params(2)*y(73)+y(15)*T(7);
residual(1) = lhs - rhs;
lhs = y(15);
rhs = y(72)-(y(17)-y(73)-y(19))*T(8);
residual(2) = lhs - rhs;
lhs = y(18);
rhs = y(36)*T(5)+y(38)*T(6);
residual(3) = lhs - rhs;
lhs = y(19);
rhs = y(36)*(1-params(9))*T(5)*(-T(4))+y(38)*(1-params(12))*((1-params(7))*T(3)-T(4)*T(6));
residual(4) = lhs - rhs;
lhs = y(20);
rhs = y(18)*T(4)-y(38)*(1-params(7))*T(3);
residual(5) = lhs - rhs;
lhs = y(22);
rhs = y(15)*T(4);
residual(6) = lhs - rhs;
lhs = y(15);
rhs = y(21)-y(18);
residual(7) = lhs - rhs;
lhs = y(22);
rhs = y(23)-y(20);
residual(8) = lhs - rhs;
lhs = y(24);
rhs = y(16)+params(7)*(y(23)-y(1));
residual(9) = lhs - rhs;
lhs = y(21);
rhs = y(36)+(1-params(4))*y(25);
residual(10) = lhs - rhs;
lhs = y(26);
rhs = y(17)-y(73);
residual(11) = lhs - rhs;
lhs = y(37);
rhs = params(10)*(0.5*y(13)+0.5*y(6))+x(it_, 1);
residual(12) = lhs - rhs;
lhs = y(36);
rhs = params(9)*y(5)+x(it_, 2);
residual(13) = lhs - rhs;
lhs = y(38);
rhs = params(12)*y(7)+x(it_, 3);
residual(14) = lhs - rhs;
lhs = y(27)-y(32);
rhs = params(1)*y(29)+params(3)*y(25);
residual(15) = lhs - rhs;
lhs = y(28);
rhs = y(23)*T(2)-y(38)*T(1);
residual(16) = lhs - rhs;
lhs = y(28);
rhs = y(21)-y(29)-params(7)*y(23);
residual(17) = lhs - rhs;
residual(18) = y(35);
lhs = y(40);
rhs = y(17)*4;
residual(19) = lhs - rhs;
lhs = y(39);
rhs = y(26)*4;
residual(20) = lhs - rhs;
lhs = y(41);
rhs = y(19)*4;
residual(21) = lhs - rhs;
lhs = y(42);
rhs = y(24)*4;
residual(22) = lhs - rhs;
lhs = y(43);
rhs = y(16)*4;
residual(23) = lhs - rhs;
lhs = y(30);
rhs = y(21)-(steady_state(7));
residual(24) = lhs - rhs;
lhs = y(31);
rhs = y(16)+y(2);
residual(25) = lhs - rhs;
lhs = y(32);
rhs = y(24)+y(3);
residual(26) = lhs - rhs;
lhs = y(23);
rhs = y(33)+x(it_, 4)-y(31);
residual(27) = lhs - rhs;
lhs = y(34);
rhs = y(33)-y(4);
residual(28) = lhs - rhs;
lhs = y(17);
rhs = y(37)+y(16)*params(13)+y(30)*params(14);
residual(29) = lhs - rhs;
lhs = y(46);
rhs = y(37)+params(13)*y(45)+params(14)*y(59);
residual(30) = lhs - rhs;
lhs = y(45);
rhs = params(2)*y(75)+y(44)*T(7);
residual(31) = lhs - rhs;
lhs = y(44);
rhs = y(74)-(y(46)-y(75)-y(48))*T(8);
residual(32) = lhs - rhs;
lhs = y(47);
rhs = y(64)*T(5)+y(66)*T(6);
residual(33) = lhs - rhs;
lhs = y(48);
rhs = y(64)*(1-params(9))*T(5)*(-T(4))+y(66)*(1-params(12))*((1-params(7))*T(3)-T(4)*T(6));
residual(34) = lhs - rhs;
lhs = y(49);
rhs = y(47)*T(4)-y(66)*(1-params(7))*T(3);
residual(35) = lhs - rhs;
lhs = y(51);
rhs = y(44)*T(4);
residual(36) = lhs - rhs;
lhs = y(44);
rhs = y(50)-y(47);
residual(37) = lhs - rhs;
lhs = y(51);
rhs = y(52)-y(49);
residual(38) = lhs - rhs;
lhs = y(53);
rhs = y(45)+params(7)*(y(52)-y(8));
residual(39) = lhs - rhs;
lhs = y(50);
rhs = y(64)+(1-params(4))*y(54);
residual(40) = lhs - rhs;
lhs = y(55);
rhs = y(46)-y(75);
residual(41) = lhs - rhs;
lhs = y(65);
rhs = params(10)*(0.5*y(13)+0.5*y(6))+x(it_, 5);
residual(42) = lhs - rhs;
lhs = y(64);
rhs = params(9)*y(12)+x(it_, 6);
residual(43) = lhs - rhs;
lhs = y(66);
rhs = params(12)*y(14)+x(it_, 7);
residual(44) = lhs - rhs;
lhs = y(56)-y(61);
rhs = params(1)*y(58)+params(3)*y(54);
residual(45) = lhs - rhs;
lhs = y(57);
rhs = y(52)*T(2)-T(1)*y(66);
residual(46) = lhs - rhs;
lhs = y(57);
rhs = y(50)-y(58)-params(7)*y(52);
residual(47) = lhs - rhs;
lhs = y(68);
rhs = 4*y(46);
residual(48) = lhs - rhs;
lhs = y(67);
rhs = 4*y(55);
residual(49) = lhs - rhs;
lhs = y(69);
rhs = 4*y(48);
residual(50) = lhs - rhs;
lhs = y(70);
rhs = 4*y(53);
residual(51) = lhs - rhs;
lhs = y(71);
rhs = 4*y(45);
residual(52) = lhs - rhs;
lhs = y(59);
rhs = y(50)-(steady_state(36));
residual(53) = lhs - rhs;
lhs = y(60);
rhs = y(45)+y(9);
residual(54) = lhs - rhs;
lhs = y(61);
rhs = y(53)+y(10);
residual(55) = lhs - rhs;
lhs = y(52);
rhs = x(it_, 4)+y(62)-y(60);
residual(56) = lhs - rhs;
lhs = y(63);
rhs = y(62)-y(11);
residual(57) = lhs - rhs;

end
