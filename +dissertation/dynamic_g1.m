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
g1 = zeros(60, 93);
g1(1,23)=(-T(10));
g1(1,24)=1;
g1(1,84)=(-params(2));
g1(2,23)=1;
g1(2,83)=(-1);
g1(2,84)=(-(1/T(7)));
g1(2,25)=1/T(7);
g1(2,27)=(-(1/T(7)));
g1(3,26)=1;
g1(3,44)=(-T(8));
g1(3,46)=(-T(9));
g1(4,27)=1;
g1(4,44)=(-((1-params(9))*T(8)*(-T(7))));
g1(4,46)=(-((1-params(12))*((1-params(7))*T(6)-T(7)*T(9))));
g1(5,26)=(-T(7));
g1(5,28)=1;
g1(5,46)=(1-params(7))*T(6);
g1(6,23)=(-T(7));
g1(6,30)=1;
g1(7,23)=1;
g1(7,26)=1;
g1(7,29)=(-1);
g1(8,28)=1;
g1(8,30)=1;
g1(8,31)=(-1);
g1(9,24)=(-1);
g1(9,2)=params(7);
g1(9,31)=(-params(7));
g1(9,32)=1;
g1(10,29)=1;
g1(10,33)=(-(1-params(4)));
g1(10,44)=(-1);
g1(11,84)=1;
g1(11,25)=(-1);
g1(11,34)=1;
g1(12,8)=(-params(10));
g1(12,45)=1;
g1(12,87)=(-1);
g1(13,7)=(-params(9));
g1(13,44)=1;
g1(13,88)=(-1);
g1(14,9)=(-params(12));
g1(14,46)=1;
g1(14,89)=(-1);
g1(15,33)=(-params(3));
g1(15,35)=1;
g1(15,37)=(-params(1));
g1(15,40)=(-1);
g1(16,31)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(16,36)=1;
g1(16,46)=params(7)/params(1);
g1(17,29)=(-1);
g1(17,31)=params(7);
g1(17,36)=1;
g1(17,37)=1;
g1(18,43)=1;
g1(19,25)=(-4);
g1(19,48)=1;
g1(20,34)=(-4);
g1(20,47)=1;
g1(21,27)=(-4);
g1(21,49)=1;
g1(22,32)=(-4);
g1(22,50)=1;
g1(23,24)=(-4);
g1(23,51)=1;
g1(24,29)=(-1);
g1(24,38)=1;
g1(25,24)=(-1);
g1(25,4)=(-1);
g1(25,39)=1;
g1(26,32)=(-1);
g1(26,5)=(-1);
g1(26,40)=1;
g1(27,31)=1;
g1(27,39)=1;
g1(27,41)=(-1);
g1(27,90)=(-1);
g1(28,6)=1;
g1(28,41)=(-1);
g1(28,42)=1;
g1(29,1)=(-(params(13)+0.5));
g1(29,25)=1;
g1(29,3)=(-(params(14)+0.5));
g1(29,45)=(-0.5);
g1(29,10)=(-(params(13)+0.5));
g1(29,12)=(-(params(14)+0.5));
g1(29,72)=(-0.5);
g1(29,19)=0.5;
g1(29,20)=0.5;
g1(29,21)=0.5;
g1(29,22)=0.5;
g1(30,52)=(-T(5));
g1(30,53)=1;
g1(30,86)=(-params(16));
g1(31,25)=1/T(2);
g1(31,52)=1;
g1(31,85)=(-1);
g1(31,86)=(-(1/T(2)));
g1(31,55)=(-(1/T(2)));
g1(32,54)=1;
g1(32,71)=(-T(3));
g1(32,73)=(-T(4));
g1(33,55)=1;
g1(33,71)=(-((1-params(23))*T(3)*(-T(2))));
g1(33,73)=(-((1-params(26))*((1-params(21))*T(1)-T(2)*T(4))));
g1(34,54)=(-T(2));
g1(34,56)=1;
g1(34,73)=(1-params(21))*T(6);
g1(35,52)=(-T(2));
g1(35,58)=1;
g1(36,52)=1;
g1(36,54)=1;
g1(36,57)=(-1);
g1(37,56)=1;
g1(37,58)=1;
g1(37,59)=(-1);
g1(38,53)=(-1);
g1(38,11)=params(21);
g1(38,59)=(-params(21));
g1(38,60)=1;
g1(39,57)=1;
g1(39,61)=(-(1-params(18)));
g1(39,71)=(-1);
g1(40,25)=(-1);
g1(40,86)=1;
g1(40,62)=1;
g1(41,17)=(-params(24));
g1(41,72)=1;
g1(41,91)=(-1);
g1(42,16)=(-params(23));
g1(42,71)=1;
g1(42,92)=(-1);
g1(43,18)=(-params(26));
g1(43,73)=1;
g1(43,93)=(-1);
g1(44,61)=(-params(17));
g1(44,63)=1;
g1(44,65)=(-params(15));
g1(44,68)=(-1);
g1(45,59)=(-(params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)));
g1(45,64)=1;
g1(45,73)=params(21)/params(15);
g1(46,57)=(-1);
g1(46,59)=params(21);
g1(46,64)=1;
g1(46,65)=1;
g1(47,25)=(-4);
g1(47,75)=1;
g1(48,62)=(-4);
g1(48,74)=1;
g1(49,55)=(-4);
g1(49,76)=1;
g1(50,60)=(-4);
g1(50,77)=1;
g1(51,53)=(-4);
g1(51,78)=1;
g1(52,57)=(-1);
g1(52,66)=1;
g1(53,53)=(-1);
g1(53,13)=(-1);
g1(53,67)=1;
g1(54,60)=(-1);
g1(54,14)=(-1);
g1(54,68)=1;
g1(55,59)=1;
g1(55,67)=1;
g1(55,69)=(-1);
g1(55,90)=(-1);
g1(56,15)=1;
g1(56,69)=(-1);
g1(56,70)=1;
g1(57,1)=(-1);
g1(57,79)=1;
g1(58,10)=(-1);
g1(58,80)=1;
g1(59,3)=(-1);
g1(59,81)=1;
g1(60,12)=(-1);
g1(60,82)=1;

end
