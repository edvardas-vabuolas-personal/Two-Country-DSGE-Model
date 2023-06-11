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
g1 = zeros(59, 88);
g1(1,18)=(-T(6));
g1(1,19)=1;
g1(1,78)=(-params(2));
g1(2,18)=1;
g1(2,77)=(-1);
g1(2,78)=(-(1/T(2)));
g1(2,20)=1/T(2);
g1(2,22)=(-(1/T(2)));
g1(3,21)=1;
g1(3,38)=(-T(4));
g1(3,39)=(-T(3));
g1(3,41)=(-T(5));
g1(4,22)=1;
g1(4,38)=T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+T(4));
g1(4,79)=(-(T(2)*(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)+T(4))));
g1(4,39)=(-((1-params(9))*T(3)*(-T(2))));
g1(4,41)=(-((1-params(12))*((1-params(7))*T(1)-T(2)*T(5))));
g1(5,21)=(-T(2));
g1(5,23)=1;
g1(5,38)=T(2);
g1(5,41)=(1-params(7))*T(1);
g1(6,18)=(-T(2));
g1(6,25)=1;
g1(7,18)=1;
g1(7,21)=1;
g1(7,24)=(-1);
g1(8,23)=1;
g1(8,25)=1;
g1(8,26)=(-1);
g1(9,19)=(-1);
g1(9,2)=params(7);
g1(9,26)=(-params(7));
g1(9,27)=1;
g1(10,24)=1;
g1(10,28)=(-(1-params(4)));
g1(10,39)=(-1);
g1(11,78)=1;
g1(11,20)=(-1);
g1(11,29)=1;
g1(12,7)=(-params(9));
g1(12,39)=1;
g1(12,83)=(-1);
g1(13,9)=(-params(12));
g1(13,41)=1;
g1(13,84)=(-1);
g1(14,28)=(-params(3));
g1(14,30)=1;
g1(14,32)=(-params(1));
g1(14,35)=(-1);
g1(15,26)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(15,31)=1;
g1(15,41)=params(7)/params(1);
g1(16,24)=(-1);
g1(16,26)=params(7);
g1(16,31)=1;
g1(16,32)=1;
g1(17,20)=(-4);
g1(17,43)=1;
g1(18,29)=(-4);
g1(18,42)=1;
g1(19,22)=(-4);
g1(19,44)=1;
g1(20,27)=(-4);
g1(20,45)=1;
g1(21,19)=(-4);
g1(21,46)=1;
g1(22,24)=(-1);
g1(22,33)=1;
g1(23,19)=(-1);
g1(23,3)=(-1);
g1(23,34)=1;
g1(24,27)=(-1);
g1(24,4)=(-1);
g1(24,35)=1;
g1(25,26)=1;
g1(25,34)=(-1);
g1(25,36)=(-1);
g1(26,5)=1;
g1(26,36)=(-1);
g1(26,37)=1;
g1(27,47)=(-T(12));
g1(27,48)=1;
g1(27,81)=(-params(16));
g1(28,47)=1;
g1(28,80)=(-1);
g1(28,81)=(-(1/T(8)));
g1(28,50)=(-(1/T(8)));
g1(28,73)=1/T(8);
g1(29,38)=(-T(10));
g1(29,49)=1;
g1(29,66)=(-T(9));
g1(29,67)=(-T(11));
g1(30,38)=T(8)*(params(21)*(params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1)-1)+T(10));
g1(30,79)=(-(T(8)*(params(21)*(params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1)-1)+T(10))));
g1(30,50)=1;
g1(30,66)=(-((1-params(23))*T(9)*(-T(8))));
g1(30,67)=(-((1-params(25))*((1-params(21))*T(7)-T(8)*T(11))));
g1(31,38)=T(8);
g1(31,49)=(-T(8));
g1(31,51)=1;
g1(31,67)=(1-params(21))*T(1);
g1(32,47)=(-T(8));
g1(32,53)=1;
g1(33,47)=1;
g1(33,49)=1;
g1(33,52)=(-1);
g1(34,51)=1;
g1(34,53)=1;
g1(34,54)=(-1);
g1(35,48)=(-1);
g1(35,10)=params(21);
g1(35,54)=(-params(21));
g1(35,55)=1;
g1(36,52)=1;
g1(36,56)=(-(1-params(18)));
g1(36,66)=(-1);
g1(37,81)=1;
g1(37,57)=1;
g1(37,73)=(-1);
g1(38,14)=(-params(23));
g1(38,66)=1;
g1(38,85)=(-1);
g1(39,15)=(-params(25));
g1(39,67)=1;
g1(39,86)=(-1);
g1(40,56)=(-params(17));
g1(40,58)=1;
g1(40,60)=(-params(15));
g1(40,63)=(-1);
g1(41,54)=(-(params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)));
g1(41,59)=1;
g1(41,67)=params(21)/params(15);
g1(42,52)=(-1);
g1(42,54)=params(21);
g1(42,59)=1;
g1(42,60)=1;
g1(43,69)=1;
g1(43,73)=(-4);
g1(44,57)=(-4);
g1(44,68)=1;
g1(45,50)=(-4);
g1(45,70)=1;
g1(46,55)=(-4);
g1(46,71)=1;
g1(47,48)=(-4);
g1(47,72)=1;
g1(48,52)=(-1);
g1(48,61)=1;
g1(49,48)=(-1);
g1(49,11)=(-1);
g1(49,62)=1;
g1(50,55)=(-1);
g1(50,12)=(-1);
g1(50,63)=1;
g1(51,54)=1;
g1(51,62)=1;
g1(51,64)=(-1);
g1(51,88)=(-1);
g1(52,13)=1;
g1(52,64)=(-1);
g1(52,65)=1;
g1(53,19)=(-(0.15*params(13)));
g1(53,1)=(-0.85);
g1(53,20)=1;
g1(53,33)=(-(0.15*params(14)));
g1(53,40)=(-1);
g1(54,40)=(-1);
g1(54,48)=(-(0.15*params(13)));
g1(54,61)=(-(0.15*params(13)));
g1(54,16)=(-0.85);
g1(54,73)=1;
g1(55,8)=(-params(10));
g1(55,40)=1;
g1(55,82)=(-1);
g1(56,6)=(-1)-params(11);
g1(56,38)=1;
g1(56,87)=(-1);
g1(56,17)=params(11);
g1(57,19)=(-0.91);
g1(57,48)=(-0.08999999999999997);
g1(57,74)=1;
g1(58,33)=(-0.91);
g1(58,61)=(-0.08999999999999997);
g1(58,75)=1;
g1(59,6)=(-1);
g1(59,76)=1;

end
