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
g1(1,2)=(-((1-params(40))*params(38)));
g1(1,15)=(-((1-params(40))*params(39)));
g1(1,54)=1-params(40);
g1(1,57)=(-1);
g1(2,25)=(-((1-params(40))*params(38)));
g1(2,38)=(-((1-params(40))*params(39)));
g1(2,55)=1-params(40);
g1(2,57)=(-1);
g1(3,57)=1-params(10);
g1(4,54)=(-params(37));
g1(4,55)=(-(1-params(37)));
g1(4,56)=1;
g1(5,1)=(-T(6));
g1(5,2)=1-params(2);
g1(6,24)=(-T(12));
g1(6,25)=1-params(14);
g1(7,2)=(-(1/T(2)));
g1(7,4)=(-(1/T(2)));
g1(7,54)=1/T(2);
g1(8,25)=(-(1/T(8)));
g1(8,27)=(-(1/T(8)));
g1(8,55)=1/T(8);
g1(9,2)=1;
g1(9,11)=1;
g1(9,54)=(-1);
g1(10,25)=1;
g1(10,34)=1;
g1(10,55)=(-1);
g1(11,3)=1;
g1(11,20)=(-T(4));
g1(11,21)=(-T(3));
g1(11,22)=(-T(5));
g1(11,47)=(-(T(4)*params(31)));
g1(11,53)=(-((1-params(4))*(1-params(36))/(params(4)+params(3)+(1-params(4))*T(2))));
g1(12,20)=(-T(10));
g1(12,26)=1;
g1(12,43)=(-T(9));
g1(12,44)=(-T(11));
g1(12,47)=(-(T(10)*params(32)));
g1(12,53)=(-((1-params(16))*(1-params(36))/(params(16)+params(15)+(1-params(16))*T(8))));
g1(13,4)=1;
g1(13,21)=(-((1-params(9))*T(3)*(-T(2))));
g1(13,22)=(-(((1-params(7))*T(1)-T(2)*T(5))*(1-params(12))));
g1(13,47)=T(13);
g1(14,27)=1;
g1(14,43)=(-((1-params(21))*T(9)*(-T(8))));
g1(14,44)=(-(((1-params(19))*T(7)-T(8)*T(11))*(1-params(24))));
g1(14,47)=T(14);
g1(15,3)=(-T(2));
g1(15,5)=1;
g1(15,20)=T(2);
g1(15,22)=(1-params(7))*T(1);
g1(15,47)=T(2)*params(31);
g1(16,20)=T(8);
g1(16,26)=(-T(8));
g1(16,28)=1;
g1(16,44)=T(1)*(1-params(19));
g1(16,47)=T(8)*params(32);
g1(18,10)=params(3);
g1(18,14)=params(1);
g1(18,23)=(-1);
g1(18,53)=params(36)/(1-params(36));
g1(19,33)=params(15);
g1(19,37)=params(13);
g1(19,45)=(-1);
g1(19,53)=params(36)/(1-params(36));
g1(20,6)=(-1);
g1(20,8)=params(7);
g1(20,13)=1/params(37);
g1(20,14)=1;
g1(20,47)=1;
g1(21,29)=(-1);
g1(21,31)=params(19);
g1(21,36)=1/(1-params(37));
g1(21,37)=1;
g1(21,47)=1;
g1(22,10)=(-1);
g1(22,23)=(-1);
g1(22,51)=1;
g1(22,53)=(-1);
g1(23,33)=(-1);
g1(23,45)=(-1);
g1(23,52)=1;
g1(23,53)=(-1);
g1(24,48)=1;
g1(24,51)=(-params(37));
g1(24,52)=(-(1-params(37)));
g1(25,46)=params(34)-1;
g1(25,47)=(-(params(35)*(params(37)*params(31)+(1-params(37))*params(32))));
g1(25,48)=1;
g1(25,49)=(-params(34));
g1(26,46)=1-params(34)-params(14);
g1(26,47)=(-((params(37)*params(31)+(1-params(37))*params(32))*(1-params(35))));
g1(26,49)=params(14)-(1-params(34));
g1(26,56)=(-params(14));
g1(27,47)=1-params(33);
g1(28,47)=1;
g1(28,48)=(-1);
g1(28,50)=(-1);
g1(29,1)=(-T(2));
g1(29,7)=1;
g1(30,24)=(-T(8));
g1(30,30)=1;
g1(31,1)=1;
g1(31,3)=1;
g1(31,6)=(-1);
g1(32,24)=1;
g1(32,26)=1;
g1(32,29)=(-1);
g1(33,5)=1;
g1(33,7)=1;
g1(33,8)=(-1);
g1(34,28)=1;
g1(34,30)=1;
g1(34,31)=(-1);
g1(35,8)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(35,13)=1;
g1(35,22)=params(7)/params(1);
g1(36,31)=(-(params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)));
g1(36,36)=1;
g1(36,44)=params(19)/params(13);
g1(37,2)=(-1);
g1(37,9)=1;
g1(38,25)=(-1);
g1(38,32)=1;
g1(39,6)=1;
g1(39,10)=(-(1-params(4)));
g1(39,21)=(-1);
g1(40,29)=1;
g1(40,33)=(-(1-params(16)));
g1(40,43)=(-1);
g1(41,21)=1-params(9);
g1(42,43)=1-params(21);
g1(43,22)=1-params(12);
g1(44,44)=1-params(24);
g1(45,15)=1;
g1(46,38)=1;
g1(47,2)=(-1);
g1(48,25)=(-1);
g1(49,9)=(-1);
g1(50,32)=(-1);
g1(51,8)=1;
g1(51,16)=1;
g1(51,18)=(-1);
g1(52,31)=1;
g1(52,39)=1;
g1(52,41)=(-1);
g1(53,19)=1;
g1(54,42)=1;
g1(55,16)=(-params(37));
g1(55,39)=(-(1-params(37)));
g1(55,46)=1;
g1(56,12)=(-1);
g1(56,16)=1;
g1(56,23)=1;
g1(57,35)=(-1);
g1(57,39)=1;
g1(57,45)=1;
g1(58,20)=(-1);
g1(58,58)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
