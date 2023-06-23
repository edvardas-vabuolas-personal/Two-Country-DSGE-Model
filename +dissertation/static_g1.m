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
g1 = zeros(62, 62);
g1(1,1)=(-T(6));
g1(1,2)=1-params(2)*params(32);
g1(1,24)=(-(params(2)*(1-params(32))));
g1(2,1)=1-params(33);
g1(2,2)=T(13)*(-params(32));
g1(2,4)=(-T(13));
g1(2,23)=(-(1-params(33)));
g1(2,24)=T(13)*(-(1-params(32)));
g1(2,51)=T(13);
g1(3,3)=1;
g1(3,20)=(-T(4));
g1(3,21)=(-T(3));
g1(3,22)=(-T(5));
g1(4,4)=1;
g1(4,21)=(-((1-params(9))*T(3)*(-T(2))));
g1(4,22)=(-(((1-params(7))*T(1)-T(2)*T(5))*(1-params(12))));
g1(5,3)=(-T(2));
g1(5,5)=1;
g1(5,20)=T(2);
g1(5,22)=(1-params(7))*T(1);
g1(6,1)=(-T(2));
g1(6,7)=1;
g1(7,1)=1;
g1(7,3)=1;
g1(7,6)=(-1);
g1(8,5)=1;
g1(8,7)=1;
g1(8,8)=(-1);
g1(9,2)=(-1);
g1(9,9)=1;
g1(10,6)=1;
g1(10,10)=(-(1-params(4)));
g1(10,21)=(-1);
g1(11,2)=1;
g1(11,11)=1;
g1(11,51)=(-1);
g1(12,21)=1-params(9);
g1(13,22)=1-params(12);
g1(14,15)=1;
g1(15,2)=(-1);
g1(16,9)=(-1);
g1(17,8)=1;
g1(17,16)=1;
g1(17,18)=(-1);
g1(18,19)=1;
g1(19,2)=(-(1-params(34)));
g1(19,23)=(-T(12));
g1(19,24)=1-params(14)*params(34);
g1(20,1)=(-(1-params(35)));
g1(20,2)=T(14)*(-(1-params(34)));
g1(20,23)=1-params(35);
g1(20,24)=T(14)*(-params(34));
g1(20,26)=(-T(14));
g1(20,51)=T(14);
g1(21,20)=(-T(10));
g1(21,25)=1;
g1(21,42)=(-T(9));
g1(21,43)=(-T(11));
g1(22,26)=1;
g1(22,42)=(-((1-params(21))*T(9)*(-T(8))));
g1(22,43)=(-(((1-params(19))*T(7)-T(8)*T(11))*(1-params(23))));
g1(23,20)=T(8);
g1(23,25)=(-T(8));
g1(23,27)=1;
g1(23,43)=T(1)*(1-params(19));
g1(24,23)=(-T(8));
g1(24,29)=1;
g1(25,23)=1;
g1(25,25)=1;
g1(25,28)=(-1);
g1(26,27)=1;
g1(26,29)=1;
g1(26,30)=(-1);
g1(27,24)=(-1);
g1(27,31)=1;
g1(28,28)=1;
g1(28,32)=(-(1-params(16)));
g1(28,42)=(-1);
g1(29,24)=1;
g1(29,33)=1;
g1(29,51)=(-1);
g1(30,42)=1-params(21);
g1(31,43)=1-params(23);
g1(32,37)=1;
g1(33,24)=(-1);
g1(34,31)=(-1);
g1(35,30)=1;
g1(35,38)=1;
g1(35,40)=(-1);
g1(36,41)=1;
g1(37,2)=(-((1-params(31))*params(29)*params(28)));
g1(37,15)=(-((1-params(31))*params(28)*params(30)));
g1(37,24)=(-((1-params(31))*params(29)*(1-params(28))));
g1(37,37)=(-((1-params(31))*(1-params(28))*params(30)));
g1(37,50)=(-1);
g1(37,51)=1-params(31);
g1(38,50)=1-params(10);
g1(40,10)=(-params(3));
g1(40,12)=1;
g1(40,14)=(-params(1));
g1(40,17)=(-1);
g1(40,48)=(-(1/(1-params(26))));
g1(41,32)=(-params(15));
g1(41,34)=1;
g1(41,36)=(-params(13));
g1(41,39)=(-1);
g1(41,49)=(-(1/(1-params(27))));
g1(42,8)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(42,13)=1;
g1(42,22)=params(7)/params(1);
g1(43,30)=(-(params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)));
g1(43,35)=1;
g1(43,43)=params(19)/params(13);
g1(44,6)=(-1);
g1(44,8)=params(7);
g1(44,13)=1;
g1(44,14)=1;
g1(44,44)=1;
g1(45,28)=(-1);
g1(45,30)=params(19);
g1(45,35)=1;
g1(45,36)=1;
g1(45,46)=1;
g1(46,10)=(-1);
g1(46,12)=(-1);
g1(46,45)=1;
g1(46,48)=(-1);
g1(47,32)=(-1);
g1(47,34)=(-1);
g1(47,47)=1;
g1(47,49)=(-1);
g1(48,16)=(-1);
g1(48,44)=(-1);
g1(48,45)=1;
g1(49,38)=(-1);
g1(49,46)=(-1);
g1(49,47)=1;
g1(50,44)=1-params(24);
g1(51,46)=1-params(25);
g1(52,52)=1;
g1(53,53)=1;
g1(54,54)=1;
g1(55,9)=(-1);
g1(55,55)=1;
g1(56,56)=1;
g1(57,57)=1;
g1(58,58)=1;
g1(59,31)=(-1);
g1(59,59)=1;
g1(60,60)=1;
g1(61,20)=(-1);
g1(61,61)=1;
g1(62,62)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
