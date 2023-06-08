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
g1 = zeros(57, 82);
g1(1,15)=(-T(10));
g1(1,16)=1;
g1(1,73)=(-params(2));
g1(2,15)=1;
g1(2,72)=(-1);
g1(2,73)=(-(1/T(7)));
g1(2,17)=1/T(7);
g1(2,19)=(-(1/T(7)));
g1(3,18)=1;
g1(3,36)=(-T(8));
g1(3,38)=(-T(9));
g1(4,19)=1;
g1(4,36)=(-((1-params(9))*T(8)*(-T(7))));
g1(4,38)=(-((1-params(12))*((1-params(7))*T(6)-T(7)*T(9))));
g1(5,18)=(-T(7));
g1(5,20)=1;
g1(5,38)=(1-params(7))*T(6);
g1(6,15)=(-T(7));
g1(6,22)=1;
g1(7,15)=1;
g1(7,18)=1;
g1(7,21)=(-1);
g1(8,20)=1;
g1(8,22)=1;
g1(8,23)=(-1);
g1(9,16)=(-1);
g1(9,1)=params(7);
g1(9,23)=(-params(7));
g1(9,24)=1;
g1(10,21)=1;
g1(10,25)=(-(1-params(4)));
g1(10,36)=(-1);
g1(11,73)=1;
g1(11,17)=(-1);
g1(11,26)=1;
g1(12,6)=(-(params(10)*0.5));
g1(12,37)=1;
g1(12,13)=(-(params(10)*0.5));
g1(12,76)=(-1);
g1(13,5)=(-params(9));
g1(13,36)=1;
g1(13,77)=(-1);
g1(14,7)=(-params(12));
g1(14,38)=1;
g1(14,78)=(-1);
g1(15,25)=(-params(3));
g1(15,27)=1;
g1(15,29)=(-params(1));
g1(15,32)=(-1);
g1(16,23)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(16,28)=1;
g1(16,38)=params(7)/params(1);
g1(17,21)=(-1);
g1(17,23)=params(7);
g1(17,28)=1;
g1(17,29)=1;
g1(18,35)=1;
g1(19,17)=(-4);
g1(19,40)=1;
g1(20,26)=(-4);
g1(20,39)=1;
g1(21,19)=(-4);
g1(21,41)=1;
g1(22,24)=(-4);
g1(22,42)=1;
g1(23,16)=(-4);
g1(23,43)=1;
g1(24,21)=(-1);
g1(24,30)=1;
g1(25,16)=(-1);
g1(25,2)=(-1);
g1(25,31)=1;
g1(26,24)=(-1);
g1(26,3)=(-1);
g1(26,32)=1;
g1(27,23)=1;
g1(27,31)=1;
g1(27,33)=(-1);
g1(27,79)=(-1);
g1(28,4)=1;
g1(28,33)=(-1);
g1(28,34)=1;
g1(29,16)=(-params(13));
g1(29,17)=1;
g1(29,30)=(-params(14));
g1(29,37)=(-1);
g1(30,37)=(-1);
g1(30,45)=(-params(13));
g1(30,46)=1;
g1(30,59)=(-params(14));
g1(31,44)=(-T(5));
g1(31,45)=1;
g1(31,75)=(-params(16));
g1(32,44)=1;
g1(32,74)=(-1);
g1(32,75)=(-(1/T(2)));
g1(32,46)=1/T(2);
g1(32,48)=(-(1/T(2)));
g1(33,47)=1;
g1(33,64)=(-T(3));
g1(33,66)=(-T(4));
g1(34,48)=1;
g1(34,64)=(-((1-params(23))*T(3)*(-T(2))));
g1(34,66)=(-((1-params(26))*((1-params(21))*T(1)-T(2)*T(4))));
g1(35,47)=(-T(2));
g1(35,49)=1;
g1(35,66)=(1-params(21))*T(6);
g1(36,44)=(-T(2));
g1(36,51)=1;
g1(37,44)=1;
g1(37,47)=1;
g1(37,50)=(-1);
g1(38,49)=1;
g1(38,51)=1;
g1(38,52)=(-1);
g1(39,45)=(-1);
g1(39,8)=params(21);
g1(39,52)=(-params(21));
g1(39,53)=1;
g1(40,50)=1;
g1(40,54)=(-(1-params(18)));
g1(40,64)=(-1);
g1(41,75)=1;
g1(41,46)=(-1);
g1(41,55)=1;
g1(42,6)=(-(0.5*params(24)));
g1(42,13)=(-(0.5*params(24)));
g1(42,65)=1;
g1(42,80)=(-1);
g1(43,12)=(-params(23));
g1(43,64)=1;
g1(43,81)=(-1);
g1(44,14)=(-params(26));
g1(44,66)=1;
g1(44,82)=(-1);
g1(45,54)=(-params(17));
g1(45,56)=1;
g1(45,58)=(-params(15));
g1(45,61)=(-1);
g1(46,52)=(-(params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)));
g1(46,57)=1;
g1(46,66)=params(21)/params(15);
g1(47,50)=(-1);
g1(47,52)=params(21);
g1(47,57)=1;
g1(47,58)=1;
g1(48,46)=(-4);
g1(48,68)=1;
g1(49,55)=(-4);
g1(49,67)=1;
g1(50,48)=(-4);
g1(50,69)=1;
g1(51,53)=(-4);
g1(51,70)=1;
g1(52,45)=(-4);
g1(52,71)=1;
g1(53,50)=(-1);
g1(53,59)=1;
g1(54,45)=(-1);
g1(54,9)=(-1);
g1(54,60)=1;
g1(55,53)=(-1);
g1(55,10)=(-1);
g1(55,61)=1;
g1(56,52)=1;
g1(56,60)=1;
g1(56,62)=(-1);
g1(56,79)=(-1);
g1(57,11)=1;
g1(57,62)=(-1);
g1(57,63)=1;

end
