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
    T = Model_Loes.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(64, 1);
lhs = y(42);
rhs = T(1)*(y(46)+(1-params(4))*y(48)+(1-params(5))*y(80))+T(2)*((1-params(5))*y(80)+y(50)+y(48)*(1-params(6)))+T(3)*(y(47)+(1-params(23))*y(49)+y(80)*params(24))+T(4)*(y(80)*params(24)+y(51)+y(49)*(1-params(25)));
residual(1) = lhs - rhs;
lhs = y(43);
rhs = T(5)*(y(47)+(1-params(23))*y(49)-y(80)*(1-params(24)))+T(6)*(y(51)+y(49)*(1-params(25))-y(80)*(1-params(24)))+T(7)*(y(46)+(1-params(4))*y(48)-params(5)*y(80))+T(8)*(y(50)+y(48)*(1-params(6))-params(5)*y(80));
residual(2) = lhs - rhs;
lhs = y(44);
rhs = (1-params(4))*params(80)/params(79)*(y(46)-params(4)*y(48))+(1-params(6))*params(81)/params(79)*(y(50)-y(48)*params(6))+params(82)/params(79)*y(52);
residual(3) = lhs - rhs;
lhs = y(45);
rhs = (1-params(23))*params(90)/params(89)*(y(47)-params(23)*y(49))+(1-params(25))*params(91)/params(89)*(y(51)-y(49)*params(25))+params(92)/params(89)*y(53);
residual(4) = lhs - rhs;
lhs = y(40);
rhs = y(42)*params(78)+y(44)*params(79);
residual(5) = lhs - rhs;
lhs = y(41);
rhs = y(43)*params(88)+y(45)*params(89);
residual(6) = lhs - rhs;
lhs = y(46)-params(16)*y(3);
rhs = y(104)-y(46)*params(16)-T(9)*(y(81)-y(108))+T(9)*(y(98)-y(124))+T(9)*(y(90)-y(120));
residual(7) = lhs - rhs;
lhs = y(47)-params(35)*y(4);
rhs = y(105)-y(47)*params(35)-T(10)*(y(82)-y(109))+T(10)*(y(99)-y(125))+T(10)*(y(91)-y(121));
residual(8) = lhs - rhs;
lhs = y(83);
rhs = y(99)-y(98)-(y(47)-params(35)*y(4))*T(11)+(y(46)-params(16)*y(3))*params(1)/(1-params(16));
residual(9) = lhs - rhs;
lhs = y(58);
rhs = (1-params(7))*y(13)+params(7)*(y(50)+y(102));
residual(10) = lhs - rhs;
lhs = y(59);
rhs = (1-params(26))*y(14)+params(26)*(y(51)+y(103));
residual(11) = lhs - rhs;
lhs = y(60);
rhs = y(62)+y(64)-y(13);
residual(12) = lhs - rhs;
lhs = y(61);
rhs = y(63)+y(65)-y(14);
residual(13) = lhs - rhs;
lhs = y(50)-y(7);
rhs = params(3)*(y(106)-y(50))+1/params(8)*(y(102)+y(66))-y(48)*(params(6)-params(4))/params(8);
residual(14) = lhs - rhs;
lhs = y(51)-y(8);
rhs = params(22)*(y(107)-y(51))+1/params(27)*(y(103)+y(67))-y(49)*(params(25)-params(23))/params(27);
residual(15) = lhs - rhs;
lhs = y(66);
rhs = (1-params(7))*params(3)*y(114)-(y(81)-y(108))+(1-(1-params(7))*params(3))*(y(110)-y(122)+y(92));
residual(16) = lhs - rhs;
lhs = y(67);
rhs = (1-params(26))*params(22)*y(115)-(y(82)-y(109))+(1-(1-params(26))*params(22))*(y(111)-y(123)+y(93));
residual(17) = lhs - rhs;
lhs = y(64);
rhs = params(9)*(y(60)-y(62))+params(78)*(y(42)-y(94))+params(79)*(y(44)-y(96));
residual(18) = lhs - rhs;
lhs = y(65);
rhs = params(28)*(y(61)-y(63))+params(88)*(y(43)-y(95))+params(89)*(y(45)-y(97));
residual(19) = lhs - rhs;
lhs = y(62)-y(15);
rhs = (1-params(11))*(1-params(3)*params(11))/(params(11)*(1+params(17)*params(2)))*(y(68)-y(62))+params(3)*(y(112)-y(62))+params(3)*(y(108)-params(10)*y(56))-(y(56)-params(10)*y(11));
residual(20) = lhs - rhs;
lhs = y(63)-y(16);
rhs = (1-params(30))*(1-params(22)*params(30))/(params(30)*(1+params(36)*params(21)))*(y(69)-y(63))+params(22)*(y(113)-y(63))+params(22)*(y(109)-params(29)*y(57))-(y(57)-params(29)*y(12));
residual(21) = lhs - rhs;
lhs = y(68);
rhs = (y(46)-params(16)*y(3))*params(1)/(1-params(16))+y(100)+y(64)*params(2)-y(98);
residual(22) = lhs - rhs;
lhs = y(69);
rhs = (y(47)-params(35)*y(4))*T(11)+y(101)+y(65)*params(21)-y(99);
residual(23) = lhs - rhs;
lhs = y(70);
rhs = params(3)/(1+params(3)*params(12))*y(116)+params(12)/(1+params(3)*params(12))*y(17)+T(12)*y(74);
residual(24) = lhs - rhs;
lhs = y(71);
rhs = params(3)/(1+params(3)*params(12))*y(117)+params(12)/(1+params(3)*params(12))*y(18)+T(12)*y(75);
residual(25) = lhs - rhs;
lhs = y(72);
rhs = params(3)/(1+params(3)*params(14))*y(118)+params(14)/(1+params(3)*params(14))*y(19)+T(13)*y(76);
residual(26) = lhs - rhs;
lhs = y(73);
rhs = params(3)/(1+params(3)*params(14))*y(119)+params(14)/(1+params(3)*params(14))*y(20)+T(13)*y(77);
residual(27) = lhs - rhs;
lhs = y(74);
rhs = (1-params(4))*y(48)+(1-params(5))*y(80)+y(62)*(1-params(9))+y(60)*params(9)-y(94);
residual(28) = lhs - rhs;
lhs = y(75);
rhs = (1-params(23))*y(49)+y(63)*(1-params(28))+y(61)*params(28)-y(95)-y(80)*(1-params(24));
residual(29) = lhs - rhs;
lhs = y(76);
rhs = y(62)*(1-params(9))+y(60)*params(9)-y(96)-params(4)*y(48);
residual(30) = lhs - rhs;
lhs = y(77);
rhs = y(63)*(1-params(28))+y(61)*params(28)-y(97)-params(23)*y(49);
residual(31) = lhs - rhs;
lhs = y(48)-y(5);
rhs = y(72)-y(78);
residual(32) = lhs - rhs;
lhs = y(49)-y(6);
rhs = y(73)-y(79);
residual(33) = lhs - rhs;
lhs = y(78);
rhs = y(70)+(1-params(5))*(y(80)-y(21));
residual(34) = lhs - rhs;
lhs = y(79);
rhs = y(71)-(1-params(24))*(y(80)-y(21));
residual(35) = lhs - rhs;
lhs = y(56);
rhs = params(4)*y(78)+(1-params(4))*y(72);
residual(36) = lhs - rhs;
lhs = y(57);
rhs = params(23)*y(79)+(1-params(23))*y(73);
residual(37) = lhs - rhs;
lhs = y(83);
rhs = (1-params(23))*y(49)+y(80)*(params(5)+params(24)-1)-(1-params(4))*y(48);
residual(38) = lhs - rhs;
lhs = y(81);
rhs = params(40)*y(22)+(1-params(40))*(params(42)*y(1)+y(11)*params(43))+x(it_, 15);
residual(39) = lhs - rhs;
lhs = y(82);
rhs = x(it_, 15)+params(41)*y(23)+(1-params(41))*(params(42)*y(2)+y(12)*params(43));
residual(40) = lhs - rhs;
lhs = y(84);
rhs = params(39)*y(40)+(1-params(39))*y(41);
residual(41) = lhs - rhs;
lhs = y(85);
rhs = params(39)*y(56)+(1-params(39))*y(57);
residual(42) = lhs - rhs;
lhs = y(88)-y(24);
rhs = y(52)-y(54)-y(86)-(y(24)-y(22));
residual(43) = lhs - rhs;
lhs = y(89)-y(25);
rhs = y(53)-y(55)-y(87)-(y(25)-y(23));
residual(44) = lhs - rhs;
lhs = y(52);
rhs = params(49)*y(9)+x(it_, 11);
residual(45) = lhs - rhs;
lhs = y(53);
rhs = params(56)*y(10)+x(it_, 12);
residual(46) = lhs - rhs;
lhs = y(54);
rhs = params(86)*(y(46)+y(90))+params(87)*(y(58)+y(60)+y(92));
residual(47) = lhs - rhs;
lhs = y(55);
rhs = params(96)*(y(47)+y(91))+params(97)*(y(59)+y(61)+y(93));
residual(48) = lhs - rhs;
lhs = y(90);
rhs = params(18)*y(26)+y(24)*params(19)+x(it_, 13);
residual(49) = lhs - rhs;
lhs = y(91);
rhs = params(37)*y(27)+y(25)*params(38)+x(it_, 14);
residual(50) = lhs - rhs;
lhs = y(92);
rhs = x(it_, 13)+y(24)*params(19)+params(18)*y(28);
residual(51) = lhs - rhs;
lhs = y(93);
rhs = x(it_, 14)+y(25)*params(38)+params(37)*y(29);
residual(52) = lhs - rhs;
lhs = y(86);
rhs = params(45)*(y(41)-y(40));
residual(53) = lhs - rhs;
lhs = y(86);
rhs = (-y(87));
residual(54) = lhs - rhs;
lhs = y(94);
rhs = params(51)*y(30)-x(it_, 1);
residual(55) = lhs - rhs;
lhs = y(95);
rhs = params(58)*y(31)-x(it_, 2);
residual(56) = lhs - rhs;
lhs = y(96);
rhs = params(52)*y(32)-x(it_, 3);
residual(57) = lhs - rhs;
lhs = y(97);
rhs = params(59)*y(33)-x(it_, 4);
residual(58) = lhs - rhs;
lhs = y(98);
rhs = params(53)*y(34)-x(it_, 5);
residual(59) = lhs - rhs;
lhs = y(99);
rhs = params(60)*y(35)-x(it_, 6);
residual(60) = lhs - rhs;
lhs = y(100);
rhs = params(54)*y(36)+x(it_, 7);
residual(61) = lhs - rhs;
lhs = y(101);
rhs = params(61)*y(37)+x(it_, 8);
residual(62) = lhs - rhs;
lhs = y(102);
rhs = params(55)*y(38)-x(it_, 9);
residual(63) = lhs - rhs;
lhs = y(103);
rhs = params(62)*y(39)-x(it_, 10);
residual(64) = lhs - rhs;

end
