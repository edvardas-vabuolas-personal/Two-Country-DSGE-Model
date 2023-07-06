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
lhs = y(73);
rhs = params(40)*y(16)+(1-params(40))*(params(38)*y(21)+params(39)*y(34))+y(76);
residual(1) = lhs - rhs;
lhs = y(74);
rhs = y(76)+params(40)*y(17)+(1-params(40))*(params(38)*y(44)+params(39)*y(57));
residual(2) = lhs - rhs;
lhs = y(76);
rhs = params(10)*y(18)+x(it_, 5);
residual(3) = lhs - rhs;
lhs = y(75);
rhs = y(73)*params(37)+y(74)*(1-params(37));
residual(4) = lhs - rhs;
lhs = y(21);
rhs = params(2)*y(79)+y(20)*T(6);
residual(5) = lhs - rhs;
lhs = y(44);
rhs = params(14)*y(82)+y(43)*T(12);
residual(6) = lhs - rhs;
lhs = y(20);
rhs = y(78)-(y(73)-y(79)-y(23))*1/T(2);
residual(7) = lhs - rhs;
lhs = y(43);
rhs = y(81)-(y(74)-y(82)-y(46))*1/T(8);
residual(8) = lhs - rhs;
lhs = y(30);
rhs = y(73)-y(79);
residual(9) = lhs - rhs;
lhs = y(53);
rhs = y(74)-y(82);
residual(10) = lhs - rhs;
lhs = y(22);
rhs = y(40)*T(3)+y(41)*T(5)+y(39)*T(4)+y(66)*params(31)*T(4)+y(72)*T(13);
residual(11) = lhs - rhs;
lhs = y(45);
rhs = y(62)*T(9)+y(63)*T(11)+y(39)*T(10)+y(66)*params(32)*T(10)+y(72)*T(14);
residual(12) = lhs - rhs;
lhs = y(23);
rhs = y(40)*(1-params(9))*T(3)*(-T(2))+(y(80)-y(39))*T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+T(4))+y(41)*(1-params(12))*((1-params(7))*T(1)-T(2)*T(5))-y(66)*T(15)+(y(83)-y(72))*T(2)*T(13);
residual(13) = lhs - rhs;
lhs = y(46);
rhs = y(62)*(1-params(21))*T(9)*(-T(8))+(y(80)-y(39))*T(8)*(params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1)+T(10))+y(63)*(1-params(24))*((1-params(19))*T(7)-T(8)*T(11))-y(66)*T(16)+(y(83)-y(72))*T(8)*T(14);
residual(14) = lhs - rhs;
lhs = y(24);
rhs = (y(22)-y(39))*T(2)-y(41)*(1-params(7))*T(1)-y(66)*params(31)*T(2);
residual(15) = lhs - rhs;
lhs = y(47);
rhs = (y(45)-y(39))*T(8)-y(63)*(1-params(19))*T(1)-y(66)*params(32)*T(8);
residual(16) = lhs - rhs;
lhs = y(39)-y(5);
rhs = x(it_, 7)+params(11)*(y(5)-y(19));
residual(17) = lhs - rhs;
lhs = params(1)*y(33)+params(3)*y(29);
rhs = y(42)-y(72)*params(36)/(1-params(36));
residual(18) = lhs - rhs;
lhs = params(13)*y(56)+params(15)*y(52);
rhs = y(64)-y(72)*params(36)/(1-params(36));
residual(19) = lhs - rhs;
lhs = 1/params(37)*y(32);
rhs = y(25)-y(33)-y(66)-params(7)*y(27);
residual(20) = lhs - rhs;
lhs = 1/(1-params(37))*y(55);
rhs = y(48)-y(56)-y(66)-params(19)*y(50);
residual(21) = lhs - rhs;
lhs = y(70);
rhs = y(29)+y(72)+y(42);
residual(22) = lhs - rhs;
lhs = y(71);
rhs = y(52)+y(72)+y(64);
residual(23) = lhs - rhs;
lhs = y(67);
rhs = params(37)*y(70)+(1-params(37))*y(71);
residual(24) = lhs - rhs;
lhs = y(67)-y(65);
rhs = y(66)*params(35)*(params(37)*params(31)+(1-params(37))*params(32))+params(34)*(y(15)-y(65));
residual(25) = lhs - rhs;
lhs = params(14)*(y(68)-y(65)-y(84));
rhs = y(66)*(params(37)*params(31)+(1-params(37))*params(32))*(1-params(35))+(1-params(34))*(y(15)-y(65));
residual(26) = lhs - rhs;
lhs = y(66);
rhs = params(33)*y(14)+x(it_, 6);
residual(27) = lhs - rhs;
lhs = y(66)-y(67);
rhs = y(69);
residual(28) = lhs - rhs;
lhs = y(26);
rhs = y(20)*T(2);
residual(29) = lhs - rhs;
lhs = y(49);
rhs = y(43)*T(8);
residual(30) = lhs - rhs;
lhs = y(20);
rhs = y(25)-y(22);
residual(31) = lhs - rhs;
lhs = y(43);
rhs = y(48)-y(45);
residual(32) = lhs - rhs;
lhs = y(26);
rhs = y(27)-y(24);
residual(33) = lhs - rhs;
lhs = y(49);
rhs = y(50)-y(47);
residual(34) = lhs - rhs;
lhs = y(32);
rhs = y(27)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(41)*params(7)/params(1);
residual(35) = lhs - rhs;
lhs = y(55);
rhs = y(50)*params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)-y(63)*params(19)/params(13);
residual(36) = lhs - rhs;
lhs = y(28);
rhs = y(21)+params(7)*(y(27)-y(1));
residual(37) = lhs - rhs;
lhs = y(51);
rhs = y(44)+params(19)*(y(50)-y(8));
residual(38) = lhs - rhs;
lhs = y(25);
rhs = y(40)+(1-params(4))*y(29);
residual(39) = lhs - rhs;
lhs = y(48);
rhs = y(62)+(1-params(16))*y(52);
residual(40) = lhs - rhs;
lhs = y(40);
rhs = params(9)*y(6)+x(it_, 1);
residual(41) = lhs - rhs;
lhs = y(62);
rhs = params(21)*y(12)+x(it_, 3);
residual(42) = lhs - rhs;
lhs = y(41);
rhs = params(12)*y(7)+x(it_, 2);
residual(43) = lhs - rhs;
lhs = y(63);
rhs = params(24)*y(13)+x(it_, 4);
residual(44) = lhs - rhs;
lhs = y(34);
rhs = y(25)-(steady_state(6));
residual(45) = lhs - rhs;
lhs = y(57);
rhs = y(48)-(steady_state(29));
residual(46) = lhs - rhs;
lhs = y(35);
rhs = y(21)+y(2);
residual(47) = lhs - rhs;
lhs = y(58);
rhs = y(44)+y(9);
residual(48) = lhs - rhs;
lhs = y(36);
rhs = y(28)+y(3);
residual(49) = lhs - rhs;
lhs = y(59);
rhs = y(51)+y(10);
residual(50) = lhs - rhs;
lhs = y(27);
rhs = y(37)+x(it_, 8)-y(35);
residual(51) = lhs - rhs;
lhs = y(50);
rhs = x(it_, 8)+y(60)-y(58);
residual(52) = lhs - rhs;
lhs = y(38);
rhs = y(37)-y(4);
residual(53) = lhs - rhs;
lhs = y(61);
rhs = y(60)-y(11);
residual(54) = lhs - rhs;
lhs = y(65);
rhs = params(37)*y(35)+(1-params(37))*y(58);
residual(55) = lhs - rhs;
lhs = y(42);
rhs = y(31)-y(35);
residual(56) = lhs - rhs;
lhs = y(64);
rhs = y(54)-y(58);
residual(57) = lhs - rhs;
lhs = y(77);
rhs = y(5);
residual(58) = lhs - rhs;

end
