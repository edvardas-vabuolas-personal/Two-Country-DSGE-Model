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
residual = zeros(56, 1);
lhs = y(22);
rhs = params(2)*params(42)*y(78)+params(2)*(1-params(42))*y(81)+y(21)*T(6);
residual(1) = lhs - rhs;
lhs = y(21);
rhs = params(43)*y(77)+(1-params(43))*y(80)-(y(75)-(params(42)*y(78)+(1-params(42))*y(81))-y(24))*T(13);
residual(2) = lhs - rhs;
lhs = y(23);
rhs = y(41)*T(3)+y(42)*T(5)+y(40)*T(4);
residual(3) = lhs - rhs;
lhs = y(24);
rhs = y(41)*(1-params(9))*T(3)*(-T(2))+(y(79)-y(40))*T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+T(4))+y(42)*(1-params(12))*((1-params(7))*T(1)-T(2)*T(5));
residual(4) = lhs - rhs;
lhs = y(25);
rhs = (y(23)-y(40))*T(2)-y(42)*(1-params(7))*T(1);
residual(5) = lhs - rhs;
lhs = y(27);
rhs = y(21)*T(2);
residual(6) = lhs - rhs;
lhs = y(21);
rhs = y(26)-y(23);
residual(7) = lhs - rhs;
lhs = y(27);
rhs = y(28)-y(25);
residual(8) = lhs - rhs;
lhs = y(29);
rhs = y(22)+params(7)*(y(28)-y(1));
residual(9) = lhs - rhs;
lhs = y(26);
rhs = y(41)+(1-params(4))*y(30);
residual(10) = lhs - rhs;
lhs = y(31);
rhs = y(75)-y(78);
residual(11) = lhs - rhs;
lhs = y(41);
rhs = params(9)*y(6)+x(it_, 1);
residual(12) = lhs - rhs;
lhs = y(42);
rhs = params(12)*y(7)+x(it_, 2);
residual(13) = lhs - rhs;
lhs = y(35);
rhs = y(26)-(steady_state(6));
residual(14) = lhs - rhs;
lhs = y(36);
rhs = y(22)+y(2);
residual(15) = lhs - rhs;
lhs = y(37);
rhs = y(29)+y(3);
residual(16) = lhs - rhs;
lhs = y(28);
rhs = y(38)+x(it_, 9)-y(36);
residual(17) = lhs - rhs;
lhs = y(39);
rhs = y(38)-y(4);
residual(18) = lhs - rhs;
lhs = y(43);
rhs = y(32)-y(37);
residual(19) = lhs - rhs;
lhs = y(45);
rhs = y(81)*params(14)*params(44)+y(78)*(1-params(44))+y(44)*T(12);
residual(20) = lhs - rhs;
lhs = y(44);
rhs = y(80)*params(45)+y(77)*(1-params(45))-(y(75)-(y(78)*(1-params(44))+y(81)*params(44))-y(47))*T(14);
residual(21) = lhs - rhs;
lhs = y(46);
rhs = y(63)*T(9)+y(64)*T(11)+y(40)*T(10);
residual(22) = lhs - rhs;
lhs = y(47);
rhs = y(63)*(1-params(21))*T(9)*(-T(8))+(y(79)-y(40))*T(8)*(params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1)+T(10))+y(64)*(1-params(23))*((1-params(19))*T(7)-T(8)*T(11));
residual(23) = lhs - rhs;
lhs = y(48);
rhs = (y(46)-y(40))*T(8)-y(64)*(1-params(19))*T(1);
residual(24) = lhs - rhs;
lhs = y(50);
rhs = y(44)*T(8);
residual(25) = lhs - rhs;
lhs = y(44);
rhs = y(49)-y(46);
residual(26) = lhs - rhs;
lhs = y(50);
rhs = y(51)-y(48);
residual(27) = lhs - rhs;
lhs = y(52);
rhs = y(45)+params(19)*(y(51)-y(8));
residual(28) = lhs - rhs;
lhs = y(49);
rhs = y(63)+(1-params(16))*y(53);
residual(29) = lhs - rhs;
lhs = y(54);
rhs = y(75)-y(81);
residual(30) = lhs - rhs;
lhs = y(63);
rhs = params(21)*y(12)+x(it_, 3);
residual(31) = lhs - rhs;
lhs = y(64);
rhs = params(23)*y(13)+x(it_, 4);
residual(32) = lhs - rhs;
lhs = y(58);
rhs = y(49)-(steady_state(29));
residual(33) = lhs - rhs;
lhs = y(59);
rhs = y(45)+y(9);
residual(34) = lhs - rhs;
lhs = y(60);
rhs = y(52)+y(10);
residual(35) = lhs - rhs;
lhs = y(51);
rhs = x(it_, 9)+y(61)-y(59);
residual(36) = lhs - rhs;
lhs = y(62);
rhs = y(61)-y(11);
residual(37) = lhs - rhs;
lhs = y(65);
rhs = y(55)-y(60);
residual(38) = lhs - rhs;
lhs = y(75);
rhs = params(41)*y(19)+(1-params(41))*(params(39)*(y(45)*(1-params(38))+y(22)*params(38))+params(40)*(y(58)*(1-params(38))+y(35)*params(38)))+y(74);
residual(39) = lhs - rhs;
lhs = y(74);
rhs = params(10)*y(18)+x(it_, 5);
residual(40) = lhs - rhs;
lhs = y(40)-y(5);
rhs = x(it_, 8)+params(11)*(y(5)-y(20));
residual(41) = lhs - rhs;
lhs = params(1)*y(34)+params(3)*y(30);
rhs = y(43)-1/(1-params(36))*y(72);
residual(42) = lhs - rhs;
lhs = params(1)*y(57)+params(3)*y(53);
rhs = y(65)-1/(1-params(37))*y(73);
residual(43) = lhs - rhs;
lhs = y(33);
rhs = y(28)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(42)*params(7)/params(1);
residual(44) = lhs - rhs;
lhs = y(56);
rhs = y(51)*params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)-y(64)*params(19)/params(13);
residual(45) = lhs - rhs;
lhs = y(33);
rhs = y(26)-y(34)-y(66)-params(7)*y(28);
residual(46) = lhs - rhs;
lhs = y(56);
rhs = y(49)-y(57)-y(68)-params(19)*y(51);
residual(47) = lhs - rhs;
lhs = y(67);
rhs = params(36)*params(26)*(y(30)+y(43)+y(72));
residual(48) = lhs - rhs;
lhs = y(69);
rhs = params(37)*params(27)*(y(53)+y(65)+y(73));
residual(49) = lhs - rhs;
lhs = y(67)*params(33);
rhs = params(36)*params(30)*(y(60)-y(66))+params(32)*params(28)*y(70);
residual(50) = lhs - rhs;
lhs = y(69)*params(35);
rhs = params(37)*params(31)*(y(60)-y(68))+params(34)*params(29)*y(71);
residual(51) = lhs - rhs;
lhs = params(2)*params(32)*(y(70)-y(75));
rhs = params(32)*(1-params(28))*y(16)+params(36)*(1-params(30))*(y(3)+y(14));
residual(52) = lhs - rhs;
lhs = params(14)*params(34)*(y(71)-y(75));
rhs = params(34)*(1-params(29))*y(17)+params(37)*(1-params(31))*(y(10)+y(15));
residual(53) = lhs - rhs;
lhs = y(66);
rhs = y(14)*params(24)+x(it_, 6);
residual(54) = lhs - rhs;
lhs = y(68);
rhs = y(15)*params(25)+x(it_, 7);
residual(55) = lhs - rhs;
lhs = y(76);
rhs = y(5);
residual(56) = lhs - rhs;

end
