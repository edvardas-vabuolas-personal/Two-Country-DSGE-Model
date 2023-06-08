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
g1 = zeros(60, 60);
g1(1,1)=(-T(10));
g1(1,2)=1-params(2);
g1(2,2)=(-(1/T(7)));
g1(2,3)=1/T(7);
g1(2,5)=(-(1/T(7)));
g1(3,4)=1;
g1(3,22)=(-T(8));
g1(3,24)=(-T(9));
g1(4,5)=1;
g1(4,22)=(-((1-params(9))*T(8)*(-T(7))));
g1(4,24)=(-(((1-params(7))*T(6)-T(7)*T(9))*(1-params(12))));
g1(5,4)=(-T(7));
g1(5,6)=1;
g1(5,24)=(1-params(7))*T(6);
g1(6,1)=(-T(7));
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
g1(12,23)=1-params(10);
g1(13,22)=1-params(9);
g1(14,24)=1-params(12);
g1(15,11)=(-params(3));
g1(15,13)=1;
g1(15,15)=(-params(1));
g1(15,18)=(-1);
g1(16,9)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(16,14)=1;
g1(16,24)=params(7)/params(1);
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
g1(29,23)=(-0.5);
g1(29,31)=(-params(13));
g1(29,44)=(-params(14));
g1(29,50)=(-0.5);
g1(30,30)=(-T(5));
g1(30,31)=1-params(16);
g1(31,3)=1/T(2);
g1(31,31)=(-(1/T(2)));
g1(31,33)=(-(1/T(2)));
g1(32,32)=1;
g1(32,49)=(-T(3));
g1(32,51)=(-T(4));
g1(33,33)=1;
g1(33,49)=(-((1-params(23))*T(3)*(-T(2))));
g1(33,51)=(-(((1-params(21))*T(1)-T(2)*T(4))*(1-params(26))));
g1(34,32)=(-T(2));
g1(34,34)=1;
g1(34,51)=(1-params(21))*T(6);
g1(35,30)=(-T(2));
g1(35,36)=1;
g1(36,30)=1;
g1(36,32)=1;
g1(36,35)=(-1);
g1(37,34)=1;
g1(37,36)=1;
g1(37,37)=(-1);
g1(38,31)=(-1);
g1(38,38)=1;
g1(39,35)=1;
g1(39,39)=(-(1-params(18)));
g1(39,49)=(-1);
g1(40,3)=(-1);
g1(40,31)=1;
g1(40,40)=1;
g1(41,50)=1-params(24);
g1(42,49)=1-params(23);
g1(43,51)=1-params(26);
g1(44,39)=(-params(17));
g1(44,41)=1;
g1(44,43)=(-params(15));
g1(44,46)=(-1);
g1(45,37)=(-(params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)));
g1(45,42)=1;
g1(45,51)=params(21)/params(15);
g1(46,35)=(-1);
g1(46,37)=params(21);
g1(46,42)=1;
g1(46,43)=1;
g1(47,3)=(-4);
g1(47,53)=1;
g1(48,40)=(-4);
g1(48,52)=1;
g1(49,33)=(-4);
g1(49,54)=1;
g1(50,38)=(-4);
g1(50,55)=1;
g1(51,31)=(-4);
g1(51,56)=1;
g1(52,44)=1;
g1(53,31)=(-1);
g1(54,38)=(-1);
g1(55,37)=1;
g1(55,45)=1;
g1(55,47)=(-1);
g1(56,48)=1;
g1(57,2)=(-1);
g1(57,57)=1;
g1(58,31)=(-1);
g1(58,58)=1;
g1(59,16)=(-1);
g1(59,59)=1;
g1(60,44)=(-1);
g1(60,60)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
