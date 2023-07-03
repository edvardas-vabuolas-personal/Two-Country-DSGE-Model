function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = dissertation.static_g1_tt(T, y, x, params);
end
g1 = zeros(58, 58);
g1(1,1)=(-T(6));
g1(1,2)=1-params(2);
g1(2,24)=(-T(12));
g1(2,25)=1-params(14);
g1(3,2)=(-(1/T(2)));
g1(3,4)=(-(1/T(2)));
g1(3,57)=1/T(2);
g1(4,25)=(-(1/T(8)));
g1(4,27)=(-(1/T(8)));
g1(4,57)=1/T(8);
g1(5,2)=1;
g1(5,11)=1;
g1(5,57)=(-1);
g1(6,25)=1;
g1(6,34)=1;
g1(6,57)=(-1);
g1(7,3)=1;
g1(7,20)=(-T(4));
g1(7,21)=(-T(3));
g1(7,22)=(-T(5));
g1(7,46)=(-(T(4)*params(37)));
g1(7,54)=(-((1-params(4))*(1-params(37))/(params(4)+params(3)+(1-params(4))*T(2))));
g1(8,20)=(-T(10));
g1(8,26)=1;
g1(8,43)=(-T(9));
g1(8,44)=(-T(11));
g1(8,48)=(-(T(10)*params(38)));
g1(8,55)=(-((1-params(16))*(1-params(38))/(params(16)+params(15)+(1-params(16))*T(8))));
g1(9,4)=1;
g1(9,21)=(-((1-params(9))*T(3)*(-T(2))));
g1(9,22)=(-(((1-params(7))*T(1)-T(2)*T(5))*(1-params(12))));
g1(9,46)=T(13);
g1(10,27)=1;
g1(10,43)=(-((1-params(21))*T(9)*(-T(8))));
g1(10,44)=(-(((1-params(19))*T(7)-T(8)*T(11))*(1-params(24))));
g1(10,48)=T(14);
g1(11,3)=(-T(2));
g1(11,5)=1;
g1(11,20)=T(2);
g1(11,22)=(1-params(7))*T(1);
g1(11,46)=(-(T(2)*params(37)));
g1(12,20)=T(8);
g1(12,26)=(-T(8));
g1(12,28)=1;
g1(12,44)=T(1)*(1-params(19));
g1(12,48)=(-(T(8)*params(38)));
g1(13,2)=(-((1-params(42))*params(40)*params(39)));
g1(13,15)=(-((1-params(42))*params(39)*params(41)));
g1(13,25)=(-((1-params(42))*params(40)*(1-params(39))));
g1(13,38)=(-((1-params(42))*(1-params(39))*params(41)));
g1(13,56)=(-1);
g1(13,57)=1-params(42);
g1(14,56)=1-params(10);
g1(16,10)=params(3);
g1(16,14)=params(1);
g1(16,23)=(-1);
g1(16,54)=params(37)/(1-params(37));
g1(17,33)=params(15);
g1(17,37)=params(13);
g1(17,45)=(-1);
g1(17,55)=params(38)/(1-params(38));
g1(18,6)=(-1);
g1(18,8)=params(7);
g1(18,13)=1;
g1(18,14)=1;
g1(18,46)=1;
g1(19,29)=(-1);
g1(19,31)=params(19);
g1(19,36)=1;
g1(19,37)=1;
g1(19,48)=1;
g1(20,10)=(-1);
g1(20,23)=(-1);
g1(20,47)=1;
g1(20,54)=(-1);
g1(21,33)=(-1);
g1(21,45)=(-1);
g1(21,49)=1;
g1(21,55)=(-1);
g1(22,17)=params(29)-1;
g1(22,46)=(-(params(37)*params(31)));
g1(22,47)=1;
g1(22,50)=(-params(29));
g1(23,40)=params(30)-1;
g1(23,48)=(-(params(38)*params(32)));
g1(23,49)=1;
g1(23,51)=(-params(30));
g1(24,17)=1-params(29)-params(2);
g1(24,46)=(-(params(37)*(1-params(31))));
g1(24,50)=params(2)-(1-params(29));
g1(24,57)=(-params(2));
g1(25,40)=1-params(30)-params(14);
g1(25,48)=(-(params(38)*(1-params(32))));
g1(25,51)=params(14)-(1-params(30));
g1(25,57)=(-params(14));
g1(26,46)=1-params(25);
g1(27,48)=1-params(26);
g1(28,46)=1;
g1(28,47)=(-1);
g1(28,52)=(-1);
g1(29,48)=1;
g1(29,49)=(-1);
g1(29,53)=(-1);
g1(30,1)=(-T(2));
g1(30,7)=1;
g1(31,24)=(-T(8));
g1(31,30)=1;
g1(32,1)=1;
g1(32,3)=1;
g1(32,6)=(-1);
g1(33,24)=1;
g1(33,26)=1;
g1(33,29)=(-1);
g1(34,5)=1;
g1(34,7)=1;
g1(34,8)=(-1);
g1(35,28)=1;
g1(35,30)=1;
g1(35,31)=(-1);
g1(36,8)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(36,13)=1;
g1(36,22)=params(7)/params(1);
g1(37,31)=(-(params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)));
g1(37,36)=1;
g1(37,44)=params(19)/params(13);
g1(38,2)=(-1);
g1(38,9)=1;
g1(39,25)=(-1);
g1(39,32)=1;
g1(40,6)=1;
g1(40,10)=(-(1-params(4)));
g1(40,21)=(-1);
g1(41,29)=1;
g1(41,33)=(-(1-params(16)));
g1(41,43)=(-1);
g1(42,21)=1-params(9);
g1(43,43)=1-params(21);
g1(44,22)=1-params(12);
g1(45,44)=1-params(24);
g1(46,15)=1;
g1(47,38)=1;
g1(48,2)=(-1);
g1(49,25)=(-1);
g1(50,9)=(-1);
g1(51,32)=(-1);
g1(52,8)=1;
g1(52,16)=1;
g1(52,18)=(-1);
g1(53,31)=1;
g1(53,39)=1;
g1(53,41)=(-1);
g1(54,19)=1;
g1(55,42)=1;
g1(56,12)=(-1);
g1(56,17)=1;
g1(56,23)=1;
g1(57,35)=(-1);
g1(57,40)=1;
g1(57,45)=1;
g1(58,20)=(-1);
g1(58,58)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
