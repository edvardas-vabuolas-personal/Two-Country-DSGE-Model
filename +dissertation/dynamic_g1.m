function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = dissertation.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(59, 96);
g1(1,23)=(-((1-params(42))*params(40)));
g1(1,36)=(-((1-params(42))*params(41)));
g1(1,18)=(-params(42));
g1(1,76)=1;
g1(1,79)=(-1);
g1(2,46)=(-((1-params(42))*params(40)));
g1(2,59)=(-((1-params(42))*params(41)));
g1(2,19)=(-params(42));
g1(2,77)=1;
g1(2,79)=(-1);
g1(3,20)=(-params(10));
g1(3,79)=1;
g1(3,92)=(-1);
g1(4,76)=(-params(39));
g1(4,77)=(-(1-params(39)));
g1(4,78)=1;
g1(5,22)=(-T(6));
g1(5,23)=1;
g1(5,82)=(-params(2));
g1(6,45)=(-T(12));
g1(6,46)=1;
g1(6,85)=(-params(14));
g1(7,22)=1;
g1(7,81)=(-1);
g1(7,82)=(-(1/T(2)));
g1(7,25)=(-(1/T(2)));
g1(7,76)=1/T(2);
g1(8,45)=1;
g1(8,84)=(-1);
g1(8,85)=(-(1/T(8)));
g1(8,48)=(-(1/T(8)));
g1(8,77)=1/T(8);
g1(9,82)=1;
g1(9,32)=1;
g1(9,76)=(-1);
g1(10,85)=1;
g1(10,55)=1;
g1(10,77)=(-1);
g1(11,24)=1;
g1(11,41)=(-T(4));
g1(11,42)=(-T(3));
g1(11,43)=(-T(5));
g1(11,68)=(-(params(31)*T(4)));
g1(12,41)=(-T(10));
g1(12,47)=1;
g1(12,64)=(-T(9));
g1(12,65)=(-T(11));
g1(12,70)=(-(params(32)*T(10)));
g1(13,25)=1;
g1(13,41)=T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+T(4));
g1(13,83)=(-(T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+T(4))));
g1(13,42)=(-((1-params(9))*T(3)*(-T(2))));
g1(13,43)=(-((1-params(12))*((1-params(7))*T(1)-T(2)*T(5))));
g1(13,68)=T(13);
g1(14,41)=T(8)*(params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1)+T(10));
g1(14,83)=(-(T(8)*(params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1)+T(10))));
g1(14,48)=1;
g1(14,64)=(-((1-params(21))*T(9)*(-T(8))));
g1(14,65)=(-((1-params(24))*((1-params(19))*T(7)-T(8)*T(11))));
g1(14,70)=T(14);
g1(15,24)=(-T(2));
g1(15,26)=1;
g1(15,41)=T(2);
g1(15,43)=(1-params(7))*T(1);
g1(15,68)=params(31)*T(2);
g1(16,41)=T(8);
g1(16,47)=(-T(8));
g1(16,49)=1;
g1(16,65)=(1-params(19))*T(1);
g1(16,70)=params(32)*T(8);
g1(17,5)=(-1)-params(11);
g1(17,41)=1;
g1(17,95)=(-1);
g1(17,21)=params(11);
g1(18,31)=(-params(3));
g1(18,35)=(-params(1));
g1(18,44)=1;
g1(19,54)=(-params(15));
g1(19,58)=(-params(13));
g1(19,66)=1;
g1(20,27)=(-1);
g1(20,29)=params(7);
g1(20,34)=1;
g1(20,35)=1;
g1(20,68)=1;
g1(21,50)=(-1);
g1(21,52)=params(19);
g1(21,57)=1;
g1(21,58)=1;
g1(21,70)=1;
g1(22,37)=params(35)-1;
g1(22,68)=(-(params(31)*params(37)));
g1(22,69)=1;
g1(22,16)=(-params(35));
g1(23,60)=params(36)-1;
g1(23,70)=(-(params(32)*params(38)));
g1(23,71)=1;
g1(23,17)=(-params(36));
g1(24,37)=1-params(35)-params(2);
g1(24,68)=(-(params(31)*(1-params(37))));
g1(24,16)=(-(1-params(35)));
g1(24,72)=params(2);
g1(24,86)=(-params(2));
g1(25,60)=1-params(36)-params(14);
g1(25,70)=(-(params(32)*(1-params(38))));
g1(25,17)=(-(1-params(36)));
g1(25,73)=params(14);
g1(25,87)=(-params(14));
g1(26,14)=(-params(33));
g1(26,68)=1;
g1(26,93)=(-1);
g1(27,15)=(-params(34));
g1(27,70)=1;
g1(27,94)=(-1);
g1(28,68)=1;
g1(28,69)=(-1);
g1(28,74)=(-1);
g1(29,70)=1;
g1(29,71)=(-1);
g1(29,75)=(-1);
g1(30,22)=(-T(2));
g1(30,28)=1;
g1(31,45)=(-T(8));
g1(31,51)=1;
g1(32,22)=1;
g1(32,24)=1;
g1(32,27)=(-1);
g1(33,45)=1;
g1(33,47)=1;
g1(33,50)=(-1);
g1(34,26)=1;
g1(34,28)=1;
g1(34,29)=(-1);
g1(35,49)=1;
g1(35,51)=1;
g1(35,52)=(-1);
g1(36,29)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(36,34)=1;
g1(36,43)=params(7)/params(1);
g1(37,52)=(-(params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)));
g1(37,57)=1;
g1(37,65)=params(19)/params(13);
g1(38,23)=(-1);
g1(38,1)=params(7);
g1(38,29)=(-params(7));
g1(38,30)=1;
g1(39,46)=(-1);
g1(39,8)=params(19);
g1(39,52)=(-params(19));
g1(39,53)=1;
g1(40,27)=1;
g1(40,31)=(-(1-params(4)));
g1(40,42)=(-1);
g1(41,50)=1;
g1(41,54)=(-(1-params(16)));
g1(41,64)=(-1);
g1(42,6)=(-params(9));
g1(42,42)=1;
g1(42,88)=(-1);
g1(43,12)=(-params(21));
g1(43,64)=1;
g1(43,90)=(-1);
g1(44,7)=(-params(12));
g1(44,43)=1;
g1(44,89)=(-1);
g1(45,13)=(-params(24));
g1(45,65)=1;
g1(45,91)=(-1);
g1(46,27)=(-1);
g1(46,36)=1;
g1(47,50)=(-1);
g1(47,59)=1;
g1(48,23)=(-1);
g1(48,2)=(-1);
g1(48,37)=1;
g1(49,46)=(-1);
g1(49,9)=(-1);
g1(49,60)=1;
g1(50,30)=(-1);
g1(50,3)=(-1);
g1(50,38)=1;
g1(51,53)=(-1);
g1(51,10)=(-1);
g1(51,61)=1;
g1(52,29)=1;
g1(52,37)=1;
g1(52,39)=(-1);
g1(52,96)=(-1);
g1(53,52)=1;
g1(53,60)=1;
g1(53,62)=(-1);
g1(53,96)=(-1);
g1(54,4)=1;
g1(54,39)=(-1);
g1(54,40)=1;
g1(55,11)=1;
g1(55,62)=(-1);
g1(55,63)=1;
g1(56,37)=(-params(39));
g1(56,60)=(-(1-params(39)));
g1(56,67)=1;
g1(57,33)=(-1);
g1(57,37)=1;
g1(57,44)=1;
g1(58,56)=(-1);
g1(58,60)=1;
g1(58,66)=1;
g1(59,5)=(-1);
g1(59,80)=1;

end
