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
residual = zeros(59, 1);
lhs = y(76);
rhs = params(42)*y(18)+(1-params(42))*(params(40)*y(23)+params(41)*y(36))+y(79);
residual(1) = lhs - rhs;
lhs = y(77);
rhs = y(79)+params(42)*y(19)+(1-params(42))*(params(40)*y(46)+params(41)*y(59));
residual(2) = lhs - rhs;
lhs = y(79);
rhs = params(10)*y(20)+x(it_, 5);
residual(3) = lhs - rhs;
lhs = y(78);
rhs = y(76)*params(39)+y(77)*(1-params(39));
residual(4) = lhs - rhs;
lhs = y(23);
rhs = params(2)*y(82)+y(22)*T(6);
residual(5) = lhs - rhs;
lhs = y(46);
rhs = params(14)*y(85)+y(45)*T(12);
residual(6) = lhs - rhs;
lhs = y(22);
rhs = y(81)-(y(76)-y(82)-y(25))*1/T(2);
residual(7) = lhs - rhs;
lhs = y(45);
rhs = y(84)-(y(77)-y(85)-y(48))*1/T(8);
residual(8) = lhs - rhs;
lhs = y(32);
rhs = y(76)-y(82);
residual(9) = lhs - rhs;
lhs = y(55);
rhs = y(77)-y(85);
residual(10) = lhs - rhs;
lhs = y(24);
rhs = y(42)*T(3)+y(43)*T(5)+y(41)*T(4)+y(68)*params(31)*T(4);
residual(11) = lhs - rhs;
lhs = y(47);
rhs = y(64)*T(9)+y(65)*T(11)+y(41)*T(10)+y(70)*params(32)*T(10);
residual(12) = lhs - rhs;
lhs = y(25);
rhs = y(42)*(1-params(9))*T(3)*(-T(2))+(y(83)-y(41))*T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+T(4))+y(43)*(1-params(12))*((1-params(7))*T(1)-T(2)*T(5))-y(68)*T(13);
residual(13) = lhs - rhs;
lhs = y(48);
rhs = y(64)*(1-params(21))*T(9)*(-T(8))+(y(83)-y(41))*T(8)*(params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1)+T(10))+y(65)*(1-params(24))*((1-params(19))*T(7)-T(8)*T(11))-y(70)*T(14);
residual(14) = lhs - rhs;
lhs = y(26);
rhs = (y(24)-y(41))*T(2)-y(43)*(1-params(7))*T(1)-y(68)*params(31)*T(2);
residual(15) = lhs - rhs;
lhs = y(49);
rhs = (y(47)-y(41))*T(8)-y(65)*(1-params(19))*T(1)-y(70)*params(32)*T(8);
residual(16) = lhs - rhs;
lhs = y(41)-y(5);
rhs = x(it_, 8)+params(11)*(y(5)-y(21));
residual(17) = lhs - rhs;
lhs = y(44);
rhs = params(1)*y(35)+params(3)*y(31);
residual(18) = lhs - rhs;
lhs = y(66);
rhs = params(13)*y(58)+params(15)*y(54);
residual(19) = lhs - rhs;
lhs = y(34);
rhs = y(27)-y(35)-y(68)-params(7)*y(29);
residual(20) = lhs - rhs;
lhs = y(57);
rhs = y(50)-y(58)-y(70)-params(19)*y(52);
residual(21) = lhs - rhs;
lhs = y(69)-y(37);
rhs = y(68)*params(31)*params(37)+params(35)*(y(16)-y(37));
residual(22) = lhs - rhs;
lhs = y(71)-y(60);
rhs = y(70)*params(32)*params(38)+params(36)*(y(17)-y(60));
residual(23) = lhs - rhs;
lhs = params(2)*(y(72)-y(37)-y(86));
rhs = y(68)*params(31)*(1-params(37))+(1-params(35))*(y(16)-y(37));
residual(24) = lhs - rhs;
lhs = params(14)*(y(73)-y(60)-y(87));
rhs = y(70)*params(32)*(1-params(38))+(1-params(36))*(y(17)-y(60));
residual(25) = lhs - rhs;
lhs = y(68);
rhs = params(33)*y(14)+x(it_, 6);
residual(26) = lhs - rhs;
lhs = y(70);
rhs = params(34)*y(15)+x(it_, 7);
residual(27) = lhs - rhs;
lhs = y(68)-y(69);
rhs = y(74);
residual(28) = lhs - rhs;
lhs = y(70)-y(71);
rhs = y(75);
residual(29) = lhs - rhs;
lhs = y(28);
rhs = y(22)*T(2);
residual(30) = lhs - rhs;
lhs = y(51);
rhs = y(45)*T(8);
residual(31) = lhs - rhs;
lhs = y(22);
rhs = y(27)-y(24);
residual(32) = lhs - rhs;
lhs = y(45);
rhs = y(50)-y(47);
residual(33) = lhs - rhs;
lhs = y(28);
rhs = y(29)-y(26);
residual(34) = lhs - rhs;
lhs = y(51);
rhs = y(52)-y(49);
residual(35) = lhs - rhs;
lhs = y(34);
rhs = y(29)*params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)-y(43)*params(7)/params(1);
residual(36) = lhs - rhs;
lhs = y(57);
rhs = y(52)*params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)-y(65)*params(19)/params(13);
residual(37) = lhs - rhs;
lhs = y(30);
rhs = y(23)+params(7)*(y(29)-y(1));
residual(38) = lhs - rhs;
lhs = y(53);
rhs = y(46)+params(19)*(y(52)-y(8));
residual(39) = lhs - rhs;
lhs = y(27);
rhs = y(42)+(1-params(4))*y(31);
residual(40) = lhs - rhs;
lhs = y(50);
rhs = y(64)+(1-params(16))*y(54);
residual(41) = lhs - rhs;
lhs = y(42);
rhs = params(9)*y(6)+x(it_, 1);
residual(42) = lhs - rhs;
lhs = y(64);
rhs = params(21)*y(12)+x(it_, 3);
residual(43) = lhs - rhs;
lhs = y(43);
rhs = params(12)*y(7)+x(it_, 2);
residual(44) = lhs - rhs;
lhs = y(65);
rhs = params(24)*y(13)+x(it_, 4);
residual(45) = lhs - rhs;
lhs = y(36);
rhs = y(27)-(steady_state(6));
residual(46) = lhs - rhs;
lhs = y(59);
rhs = y(50)-(steady_state(29));
residual(47) = lhs - rhs;
lhs = y(37);
rhs = y(23)+y(2);
residual(48) = lhs - rhs;
lhs = y(60);
rhs = y(46)+y(9);
residual(49) = lhs - rhs;
lhs = y(38);
rhs = y(30)+y(3);
residual(50) = lhs - rhs;
lhs = y(61);
rhs = y(53)+y(10);
residual(51) = lhs - rhs;
lhs = y(29);
rhs = y(39)+x(it_, 9)-y(37);
residual(52) = lhs - rhs;
lhs = y(52);
rhs = x(it_, 9)+y(62)-y(60);
residual(53) = lhs - rhs;
lhs = y(40);
rhs = y(39)-y(4);
residual(54) = lhs - rhs;
lhs = y(63);
rhs = y(62)-y(11);
residual(55) = lhs - rhs;
lhs = y(67);
rhs = params(39)*y(37)+(1-params(39))*y(60);
residual(56) = lhs - rhs;
lhs = y(44);
rhs = y(33)-y(37);
residual(57) = lhs - rhs;
lhs = y(66);
rhs = y(56)-y(60);
residual(58) = lhs - rhs;
lhs = y(80);
rhs = y(5);
residual(59) = lhs - rhs;

end
