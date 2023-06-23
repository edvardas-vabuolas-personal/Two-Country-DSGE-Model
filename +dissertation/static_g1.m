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
g1(1,2)=1-params(2)*params(29);
g1(1,32)=(-(params(2)*(1-params(29))));
g1(2,1)=1-params(30);
g1(2,2)=T(13)*(-params(29));
g1(2,4)=(-T(13));
g1(2,31)=(-(1-params(30)));
g1(2,32)=T(13)*(-(1-params(29)));
g1(2,52)=T(13);
g1(3,3)=1;
g1(3,20)=(-T(4));
g1(3,21)=(-T(3));
g1(3,23)=(-T(5));
g1(4,4)=1;
g1(4,21)=(-((1-params(9))*T(3)*(-T(2))));
g1(4,23)=(-(((1-params(7))*T(1)-T(2)*T(5))*(1-params(12))));
g1(5,3)=(-T(2));
g1(5,5)=1;
g1(5,20)=T(2);
g1(5,23)=(1-params(7))*T(1);
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
g1(11,52)=(-1);
g1(12,21)=1-params(9);
g1(13,23)=1-params(12);
g1(14,10)=(-params(3));
g1(14,12)=1;
g1(14,14)=(-params(1));
g1(14,17)=(-1);
g1(14,25)=(-(1-params(33)));
g1(15,8)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(15,13)=1;
g1(15,23)=params(7)/params(1);
g1(16,6)=(-1);
g1(16,8)=params(7);
g1(16,13)=1;
g1(16,14)=1;
g1(16,24)=1;
g1(17,10)=(-1);
g1(17,12)=(-1);
g1(17,25)=(-1);
g1(17,26)=1;
g1(18,16)=(-1);
g1(18,24)=(-1);
g1(18,26)=1;
g1(19,24)=1-params(28);
g1(20,15)=1;
g1(21,2)=(-1);
g1(22,9)=(-1);
g1(23,8)=1;
g1(23,16)=1;
g1(23,18)=(-1);
g1(24,19)=1;
g1(25,2)=(-(1-params(31)));
g1(25,31)=(-T(12));
g1(25,32)=1-params(16)*params(31);
g1(26,1)=(-(1-params(32)));
g1(26,2)=T(14)*(-(1-params(31)));
g1(26,31)=1-params(32);
g1(26,32)=T(14)*(-params(31));
g1(26,34)=(-T(14));
g1(26,52)=T(14);
g1(27,20)=(-T(10));
g1(27,33)=1;
g1(27,50)=(-T(9));
g1(27,51)=(-T(11));
g1(28,34)=1;
g1(28,50)=(-((1-params(23))*T(9)*(-T(8))));
g1(28,51)=(-(((1-params(21))*T(7)-T(8)*T(11))*(1-params(25))));
g1(29,20)=T(8);
g1(29,33)=(-T(8));
g1(29,35)=1;
g1(29,51)=T(1)*(1-params(21));
g1(30,31)=(-T(8));
g1(30,37)=1;
g1(31,31)=1;
g1(31,33)=1;
g1(31,36)=(-1);
g1(32,35)=1;
g1(32,37)=1;
g1(32,38)=(-1);
g1(33,32)=(-1);
g1(33,39)=1;
g1(34,36)=1;
g1(34,40)=(-(1-params(18)));
g1(34,50)=(-1);
g1(35,32)=1;
g1(35,41)=1;
g1(35,52)=(-1);
g1(36,50)=1-params(23);
g1(37,51)=1-params(25);
g1(38,40)=(-params(17));
g1(38,42)=1;
g1(38,44)=(-params(15));
g1(38,47)=(-1);
g1(39,38)=(-(params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)));
g1(39,43)=1;
g1(39,51)=params(21)/params(15);
g1(40,36)=(-1);
g1(40,38)=params(21);
g1(40,43)=1;
g1(40,44)=1;
g1(41,45)=1;
g1(42,32)=(-1);
g1(43,39)=(-1);
g1(44,38)=1;
g1(44,46)=1;
g1(44,48)=(-1);
g1(45,49)=1;
g1(46,2)=(-((1-params(27))*params(13)*params(26)));
g1(46,15)=(-((1-params(27))*params(26)*params(14)));
g1(46,22)=(-1);
g1(46,32)=(-((1-params(27))*params(13)*(1-params(26))));
g1(46,45)=(-((1-params(27))*(1-params(26))*params(14)));
g1(46,52)=1-params(27);
g1(47,22)=1-params(10);
g1(49,27)=1;
g1(50,28)=1;
g1(51,29)=1;
g1(52,9)=(-1);
g1(52,30)=1;
g1(53,53)=1;
g1(54,54)=1;
g1(55,55)=1;
g1(56,39)=(-1);
g1(56,56)=1;
g1(57,57)=1;
g1(58,20)=(-1);
g1(58,58)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
