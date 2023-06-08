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
g1 = zeros(57, 57);
g1(1,1)=(-T(5));
g1(1,2)=1-params(2);
g1(2,2)=(-T(6));
g1(2,3)=T(6);
g1(2,5)=(-T(6));
g1(3,4)=1;
g1(3,22)=(-T(3));
g1(3,24)=(-T(4));
g1(4,5)=1;
g1(4,22)=(-((1-params(9))*T(3)*(-T(2))));
g1(4,24)=(-(((1-params(7))*T(1)-T(2)*T(4))*(1-params(12))));
g1(5,4)=(-T(2));
g1(5,6)=1;
g1(5,24)=(1-params(7))*T(1);
g1(6,1)=(-T(2));
g1(6,8)=1;
g1(7,1)=1;
g1(7,4)=1;
g1(7,7)=(-1);
g1(8,6)=1;
g1(8,8)=1;
g1(8,9)=(-1);
g1(9,2)=(-1);
g1(9,10)=1;
g1(10,7)=1;
g1(10,11)=(-(1-params(4)));
g1(10,22)=(-1);
g1(11,2)=1;
g1(11,3)=(-1);
g1(11,12)=1;
g1(12,23)=1-params(10)*0.5;
g1(12,51)=(-(params(10)*0.5));
g1(13,22)=1-params(9);
g1(14,24)=1-params(12);
g1(15,11)=(-params(3));
g1(15,13)=1;
g1(15,15)=(-params(1));
g1(15,18)=(-1);
g1(16,9)=(-T(7));
g1(16,14)=1;
g1(16,24)=T(8);
g1(17,7)=(-1);
g1(17,9)=params(7);
g1(17,14)=1;
g1(17,15)=1;
g1(18,21)=1;
g1(19,3)=(-4);
g1(19,26)=1;
g1(20,12)=(-4);
g1(20,25)=1;
g1(21,5)=(-4);
g1(21,27)=1;
g1(22,10)=(-4);
g1(22,28)=1;
g1(23,2)=(-4);
g1(23,29)=1;
g1(24,16)=1;
g1(25,2)=(-1);
g1(26,10)=(-1);
g1(27,9)=1;
g1(27,17)=1;
g1(27,19)=(-1);
g1(28,20)=1;
g1(29,2)=(-params(13));
g1(29,3)=1;
g1(29,16)=(-params(14));
g1(29,23)=(-1);
g1(30,23)=(-1);
g1(30,31)=(-params(13));
g1(30,32)=1;
g1(30,45)=(-params(14));
g1(31,30)=(-T(5));
g1(31,31)=1-params(2);
g1(32,31)=(-T(6));
g1(32,32)=T(6);
g1(32,34)=(-T(6));
g1(33,33)=1;
g1(33,50)=(-T(3));
g1(33,52)=(-T(4));
g1(34,34)=1;
g1(34,50)=(-((1-params(9))*T(3)*(-T(2))));
g1(34,52)=(-(((1-params(7))*T(1)-T(2)*T(4))*(1-params(12))));
g1(35,33)=(-T(2));
g1(35,35)=1;
g1(35,52)=(1-params(7))*T(1);
g1(36,30)=(-T(2));
g1(36,37)=1;
g1(37,30)=1;
g1(37,33)=1;
g1(37,36)=(-1);
g1(38,35)=1;
g1(38,37)=1;
g1(38,38)=(-1);
g1(39,31)=(-1);
g1(39,39)=1;
g1(40,36)=1;
g1(40,40)=(-(1-params(4)));
g1(40,50)=(-1);
g1(41,31)=1;
g1(41,32)=(-1);
g1(41,41)=1;
g1(42,23)=(-(params(10)*0.5));
g1(42,51)=1-params(10)*0.5;
g1(43,50)=1-params(9);
g1(44,52)=1-params(12);
g1(45,40)=(-params(3));
g1(45,42)=1;
g1(45,44)=(-params(1));
g1(45,47)=(-1);
g1(46,38)=(-T(7));
g1(46,43)=1;
g1(46,52)=T(8);
g1(47,36)=(-1);
g1(47,38)=params(7);
g1(47,43)=1;
g1(47,44)=1;
g1(48,32)=(-4);
g1(48,54)=1;
g1(49,41)=(-4);
g1(49,53)=1;
g1(50,34)=(-4);
g1(50,55)=1;
g1(51,39)=(-4);
g1(51,56)=1;
g1(52,31)=(-4);
g1(52,57)=1;
g1(53,45)=1;
g1(54,31)=(-1);
g1(55,39)=(-1);
g1(56,38)=1;
g1(56,46)=1;
g1(56,48)=(-1);
g1(57,49)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
