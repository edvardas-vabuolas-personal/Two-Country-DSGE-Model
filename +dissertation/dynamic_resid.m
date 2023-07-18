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
lhs = y(71);
rhs = params(38)*y(19)+params(39)*y(32)+y(74);
residual(1) = lhs - rhs;
lhs = y(72);
rhs = y(74)+params(38)*y(42)+params(39)*y(55);
residual(2) = lhs - rhs;
lhs = y(74);
rhs = params(10)*y(16)+x(it_, 5);
residual(3) = lhs - rhs;
lhs = y(73);
rhs = y(71)*params(37)+y(72)*(1-params(37));
residual(4) = lhs - rhs;
lhs = y(19);
rhs = params(2)*y(77)+y(18)*T(3);
residual(5) = lhs - rhs;
lhs = y(42);
rhs = params(14)*y(80)+y(41)*T(6);
residual(6) = lhs - rhs;
lhs = y(18);
rhs = y(76)-(y(71)-y(77)-y(21))*params(27)*1/T(2);
residual(7) = lhs - rhs;
lhs = y(41);
rhs = y(79)-(y(72)-y(80)-y(44))*params(28)*1/T(5);
residual(8) = lhs - rhs;
lhs = y(28);
rhs = y(71)-y(77);
residual(9) = lhs - rhs;
lhs = y(51);
rhs = y(72)-y(80);
residual(10) = lhs - rhs;
lhs = y(20);
rhs = y(38)*T(9)+y(39)*T(8)+y(37)*T(7)+y(66)*T(10)+y(70)*T(15);
residual(11) = lhs - rhs;
lhs = y(43);
rhs = y(60)*T(13)+y(61)*T(12)+y(37)*T(11)+y(66)*T(14)+y(70)*T(16);
residual(12) = lhs - rhs;
lhs = y(21);
rhs = y(38)*(1-params(9))*T(9)*params(29)*(-T(2))+(y(78)-y(37))*T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+params(29)*T(7))+y(39)*(1-params(12))*((1-params(7))*T(1)-params(29)*T(2)*T(8))-y(66)*(1-params(33))*T(2)*(params(29)*T(10)-params(31))+(y(81)-y(70))*params(29)*T(2)*T(15);
residual(13) = lhs - rhs;
lhs = y(44);
rhs = y(60)*(1-params(21))*T(13)*params(30)*(-T(5))+(y(78)-y(37))*T(5)*(params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1)+params(30)*T(11))+y(61)*(1-params(24))*((1-params(19))*T(4)-params(30)*T(5)*T(12))-y(66)*(1-params(33))*T(5)*(params(30)*T(14)-params(32))+(y(81)-y(70))*params(30)*T(5)*T(16);
residual(14) = lhs - rhs;
lhs = y(22);
rhs = (params(29)*y(20)-y(37)-params(31)*y(66))*T(2)-y(39)*(1-params(7))*T(1);
residual(15) = lhs - rhs;
lhs = y(45);
rhs = (params(30)*y(43)-y(37)-params(32)*y(66))*T(5)-y(61)*(1-params(19))*T(4);
residual(16) = lhs - rhs;
lhs = y(37)-y(5);
rhs = x(it_, 7)+params(11)*(y(5)-y(17));
residual(17) = lhs - rhs;
lhs = params(1)*y(31)+params(3)*y(27);
rhs = y(40)-y(70)*params(36)/(1-params(36));
residual(18) = lhs - rhs;
lhs = params(13)*y(54)+params(15)*y(50);
rhs = y(62)-y(70)*params(36)/(1-params(36));
residual(19) = lhs - rhs;
lhs = 1/params(37)*y(30);
rhs = y(23)-y(31)-y(66)-params(7)*y(25);
residual(20) = lhs - rhs;
lhs = 1/(1-params(37))*y(53);
rhs = y(46)-y(54)-y(66)-params(19)*y(48);
residual(21) = lhs - rhs;
lhs = y(30);
rhs = y(25)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(39)*params(7)/params(1);
residual(22) = lhs - rhs;
lhs = y(53);
rhs = y(48)*params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)-y(61)*params(19)/params(13);
residual(23) = lhs - rhs;
lhs = y(64);
rhs = y(27)+y(70)+y(40);
residual(24) = lhs - rhs;
lhs = y(65);
rhs = y(50)+y(70)+y(62);
residual(25) = lhs - rhs;
lhs = y(67);
rhs = params(37)*y(64)+(1-params(37))*y(65);
residual(26) = lhs - rhs;
lhs = y(67);
rhs = y(66)*params(35)+params(34)*y(15);
residual(27) = lhs - rhs;
lhs = y(68);
rhs = 1/params(2)*(y(66)*(1-params(35))+(1-params(34))*y(15));
residual(28) = lhs - rhs;
lhs = y(66);
rhs = params(33)*y(14)+x(it_, 6);
residual(29) = lhs - rhs;
lhs = y(66)-y(67);
rhs = y(69);
residual(30) = lhs - rhs;
lhs = y(24);
rhs = y(18)*params(29)*T(2);
residual(31) = lhs - rhs;
lhs = y(47);
rhs = y(41)*params(30)*T(5);
residual(32) = lhs - rhs;
lhs = y(18);
rhs = y(23)-y(20);
residual(33) = lhs - rhs;
lhs = y(41);
rhs = y(46)-y(43);
residual(34) = lhs - rhs;
lhs = y(24);
rhs = y(25)-y(22);
residual(35) = lhs - rhs;
lhs = y(47);
rhs = y(48)-y(45);
residual(36) = lhs - rhs;
lhs = y(26);
rhs = y(19)+params(7)*(y(25)-y(1));
residual(37) = lhs - rhs;
lhs = y(49);
rhs = y(42)+params(19)*(y(48)-y(8));
residual(38) = lhs - rhs;
lhs = y(23);
rhs = y(38)+(1-params(4))*y(27);
residual(39) = lhs - rhs;
lhs = y(46);
rhs = y(60)+(1-params(16))*y(50);
residual(40) = lhs - rhs;
lhs = y(38);
rhs = params(9)*y(6)+x(it_, 1);
residual(41) = lhs - rhs;
lhs = y(60);
rhs = params(21)*y(12)+x(it_, 3);
residual(42) = lhs - rhs;
lhs = y(39);
rhs = params(12)*y(7)+x(it_, 2);
residual(43) = lhs - rhs;
lhs = y(61);
rhs = params(24)*y(13)+x(it_, 4);
residual(44) = lhs - rhs;
lhs = y(32);
rhs = y(23)-(steady_state(6));
residual(45) = lhs - rhs;
lhs = y(55);
rhs = y(46)-(steady_state(29));
residual(46) = lhs - rhs;
lhs = y(33);
rhs = y(19)+y(2);
residual(47) = lhs - rhs;
lhs = y(56);
rhs = y(42)+y(9);
residual(48) = lhs - rhs;
lhs = y(34);
rhs = y(26)+y(3);
residual(49) = lhs - rhs;
lhs = y(57);
rhs = y(49)+y(10);
residual(50) = lhs - rhs;
lhs = y(25);
rhs = y(35)+x(it_, 8)-y(33);
residual(51) = lhs - rhs;
lhs = y(48);
rhs = x(it_, 8)+y(58)-y(56);
residual(52) = lhs - rhs;
lhs = y(36);
rhs = y(35)-y(4);
residual(53) = lhs - rhs;
lhs = y(59);
rhs = y(58)-y(11);
residual(54) = lhs - rhs;
lhs = y(63);
rhs = params(37)*y(34)+(1-params(37))*y(57);
residual(55) = lhs - rhs;
lhs = y(40);
rhs = y(29)-y(34);
residual(56) = lhs - rhs;
lhs = y(62);
rhs = y(52)-y(57);
residual(57) = lhs - rhs;
lhs = y(75);
rhs = y(5);
residual(58) = lhs - rhs;

end
