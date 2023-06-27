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
g1 = zeros(56, 56);
g1(1,1)=(-T(6));
g1(1,2)=1-params(2)*params(42);
g1(1,25)=(-(params(2)*(1-params(42))));
g1(2,1)=1-params(43);
g1(2,2)=T(13)*(-params(42));
g1(2,4)=(-T(13));
g1(2,24)=(-(1-params(43)));
g1(2,25)=T(13)*(-(1-params(42)));
g1(2,55)=T(13);
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
g1(11,55)=(-1);
g1(12,21)=1-params(9);
g1(13,22)=1-params(12);
g1(14,15)=1;
g1(15,2)=(-1);
g1(16,9)=(-1);
g1(17,8)=1;
g1(17,16)=1;
g1(17,18)=(-1);
g1(18,19)=1;
g1(19,12)=(-1);
g1(19,17)=1;
g1(19,23)=1;
g1(20,2)=(-(1-params(44)));
g1(20,24)=(-T(12));
g1(20,25)=1-params(14)*params(44);
g1(21,1)=(-(1-params(45)));
g1(21,2)=T(14)*(-(1-params(44)));
g1(21,24)=1-params(45);
g1(21,25)=T(14)*(-params(44));
g1(21,27)=(-T(14));
g1(21,55)=T(14);
g1(22,20)=(-T(10));
g1(22,26)=1;
g1(22,43)=(-T(9));
g1(22,44)=(-T(11));
g1(23,27)=1;
g1(23,43)=(-((1-params(21))*T(9)*(-T(8))));
g1(23,44)=(-(((1-params(19))*T(7)-T(8)*T(11))*(1-params(23))));
g1(24,20)=T(8);
g1(24,26)=(-T(8));
g1(24,28)=1;
g1(24,44)=T(1)*(1-params(19));
g1(25,24)=(-T(8));
g1(25,30)=1;
g1(26,24)=1;
g1(26,26)=1;
g1(26,29)=(-1);
g1(27,28)=1;
g1(27,30)=1;
g1(27,31)=(-1);
g1(28,25)=(-1);
g1(28,32)=1;
g1(29,29)=1;
g1(29,33)=(-(1-params(16)));
g1(29,43)=(-1);
g1(30,25)=1;
g1(30,34)=1;
g1(30,55)=(-1);
g1(31,43)=1-params(21);
g1(32,44)=1-params(23);
g1(33,38)=1;
g1(34,25)=(-1);
g1(35,32)=(-1);
g1(36,31)=1;
g1(36,39)=1;
g1(36,41)=(-1);
g1(37,42)=1;
g1(38,35)=(-1);
g1(38,40)=1;
g1(38,45)=1;
g1(39,2)=(-((1-params(41))*params(39)*params(38)));
g1(39,15)=(-((1-params(41))*params(38)*params(40)));
g1(39,25)=(-((1-params(41))*params(39)*(1-params(38))));
g1(39,38)=(-((1-params(41))*(1-params(38))*params(40)));
g1(39,54)=(-1);
g1(39,55)=1-params(41);
g1(40,54)=1-params(10);
g1(42,10)=params(3);
g1(42,14)=params(1);
g1(42,23)=(-1);
g1(42,52)=1/(1-params(36));
g1(43,33)=params(3);
g1(43,37)=params(1);
g1(43,45)=(-1);
g1(43,53)=1/(1-params(37));
g1(44,8)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(44,13)=1;
g1(44,22)=params(7)/params(1);
g1(45,31)=(-(params(19)*((params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))/params(13)-1)));
g1(45,36)=1;
g1(45,44)=params(19)/params(13);
g1(46,6)=(-1);
g1(46,8)=params(7);
g1(46,13)=1;
g1(46,14)=1;
g1(46,46)=1;
g1(47,29)=(-1);
g1(47,31)=params(19);
g1(47,36)=1;
g1(47,37)=1;
g1(47,48)=1;
g1(48,10)=(-(params(36)*params(26)));
g1(48,23)=(-(params(36)*params(26)));
g1(48,47)=1;
g1(48,52)=(-(params(36)*params(26)));
g1(49,33)=(-(params(37)*params(27)));
g1(49,45)=(-(params(37)*params(27)));
g1(49,49)=1;
g1(49,53)=(-(params(37)*params(27)));
g1(50,40)=(-(params(36)*params(30)));
g1(50,46)=params(36)*params(30);
g1(50,47)=params(33);
g1(50,50)=(-(params(32)*params(28)));
g1(51,40)=(-(params(37)*params(31)));
g1(51,48)=params(37)*params(31);
g1(51,49)=params(35);
g1(51,51)=(-(params(34)*params(29)));
g1(52,17)=(-(params(36)*(1-params(30))));
g1(52,46)=(-(params(36)*(1-params(30))));
g1(52,50)=params(2)*params(32)-params(32)*(1-params(28));
g1(52,55)=(-(params(2)*params(32)));
g1(53,40)=(-(params(37)*(1-params(31))));
g1(53,48)=(-(params(37)*(1-params(31))));
g1(53,51)=params(14)*params(34)-params(34)*(1-params(29));
g1(53,55)=(-(params(14)*params(34)));
g1(54,46)=1-params(24);
g1(55,48)=1-params(25);
g1(56,20)=(-1);
g1(56,56)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
