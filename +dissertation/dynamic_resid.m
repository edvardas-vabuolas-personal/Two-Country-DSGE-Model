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
residual = zeros(49, 1);
lhs = y(21);
rhs = params(2)*y(70)+y(20)*T(5);
residual(1) = lhs - rhs;
lhs = y(20);
rhs = y(69)-(y(22)-y(70)-y(24))*1/T(2);
residual(2) = lhs - rhs;
lhs = y(23);
rhs = y(40)*T(3)+y(42)*T(4);
residual(3) = lhs - rhs;
lhs = y(24);
rhs = y(40)*(1-params(9))*T(3)*(-T(2))+y(42)*(1-params(12))*((1-params(7))*T(1)-T(2)*T(4));
residual(4) = lhs - rhs;
lhs = y(25);
rhs = y(23)*T(2)-y(42)*(1-params(7))*T(1);
residual(5) = lhs - rhs;
lhs = y(27);
rhs = y(20)*T(2);
residual(6) = lhs - rhs;
lhs = y(20);
rhs = y(26)-y(23);
residual(7) = lhs - rhs;
lhs = y(27);
rhs = y(28)-y(25);
residual(8) = lhs - rhs;
lhs = y(29);
rhs = y(21)+params(7)*(y(28)-y(3));
residual(9) = lhs - rhs;
lhs = y(26);
rhs = y(40)+(1-params(4))*y(30);
residual(10) = lhs - rhs;
lhs = y(31);
rhs = y(22)-y(70);
residual(11) = lhs - rhs;
lhs = y(40);
rhs = params(9)*y(8)+x(it_, 2);
residual(12) = lhs - rhs;
lhs = y(42);
rhs = params(12)*y(10)+x(it_, 3);
residual(13) = lhs - rhs;
lhs = y(32)-y(37);
rhs = params(1)*y(34)+params(3)*y(30);
residual(14) = lhs - rhs;
lhs = y(33);
rhs = y(28)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(42)*params(7)/params(1);
residual(15) = lhs - rhs;
lhs = y(33);
rhs = y(26)-y(34)-params(7)*y(28);
residual(16) = lhs - rhs;
lhs = y(35);
rhs = y(26)-(steady_state(7));
residual(17) = lhs - rhs;
lhs = y(36);
rhs = y(21)+y(6);
residual(18) = lhs - rhs;
lhs = y(37);
rhs = y(29)+y(7);
residual(19) = lhs - rhs;
lhs = y(28);
rhs = y(38)+x(it_, 7)-y(36);
residual(20) = lhs - rhs;
lhs = y(43);
rhs = y(35)+y(59);
residual(21) = lhs - rhs;
lhs = y(49);
rhs = params(16)*y(72)+y(48)*T(10);
residual(22) = lhs - rhs;
lhs = y(48);
rhs = y(71)-(y(22)-y(72)-y(51))*1/T(7);
residual(23) = lhs - rhs;
lhs = y(50);
rhs = y(62)*T(8)+y(63)*T(9);
residual(24) = lhs - rhs;
lhs = y(51);
rhs = y(62)*(1-params(23))*T(8)*(-T(7))+y(63)*(1-params(25))*((1-params(21))*T(6)-T(7)*T(9));
residual(25) = lhs - rhs;
lhs = y(48);
rhs = y(52)-y(50);
residual(26) = lhs - rhs;
lhs = y(53);
rhs = y(49)+params(21)*(y(28)-y(3));
residual(27) = lhs - rhs;
lhs = y(52);
rhs = y(62)+(1-params(18))*y(54);
residual(28) = lhs - rhs;
lhs = y(55);
rhs = y(22)-y(72);
residual(29) = lhs - rhs;
lhs = y(62);
rhs = params(23)*y(17)+x(it_, 4);
residual(30) = lhs - rhs;
lhs = y(63);
rhs = params(25)*y(18)+x(it_, 5);
residual(31) = lhs - rhs;
lhs = y(56)-y(61);
rhs = params(15)*y(58)+params(17)*y(54);
residual(32) = lhs - rhs;
lhs = y(57);
rhs = y(28)*params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)-y(63)*params(21)/params(15);
residual(33) = lhs - rhs;
lhs = y(57);
rhs = y(52)-y(58)-params(21)*y(28);
residual(34) = lhs - rhs;
lhs = y(59);
rhs = y(52)-(steady_state(33));
residual(35) = lhs - rhs;
lhs = y(60);
rhs = y(49)+y(15);
residual(36) = lhs - rhs;
lhs = y(61);
rhs = y(53)+y(16);
residual(37) = lhs - rhs;
lhs = y(64);
rhs = y(35)+y(59);
residual(38) = lhs - rhs;
lhs = y(22);
rhs = params(27)*y(1)+(1-params(27))*(params(13)*(y(29)*params(26)+y(53)*(1-params(26)))+params(14)*(params(26)*(y(43)-y(11))+(1-params(26))*(y(64)-y(19))))+y(41);
residual(39) = lhs - rhs;
lhs = y(41);
rhs = params(10)*y(9)+x(it_, 1);
residual(40) = lhs - rhs;
residual(41) = y(39);
lhs = y(44);
rhs = y(26)-y(2);
residual(42) = lhs - rhs;
lhs = y(45);
rhs = y(34)-y(5);
residual(43) = lhs - rhs;
lhs = y(46);
rhs = y(32)-y(4);
residual(44) = lhs - rhs;
lhs = y(47);
rhs = y(29);
residual(45) = lhs - rhs;
lhs = y(65);
rhs = y(52)-y(12);
residual(46) = lhs - rhs;
lhs = y(66);
rhs = y(58)-y(14);
residual(47) = lhs - rhs;
lhs = y(67);
rhs = y(56)-y(13);
residual(48) = lhs - rhs;
lhs = y(68);
rhs = y(53);
residual(49) = lhs - rhs;

end
