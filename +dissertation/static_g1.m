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
g1 = zeros(49, 49);
g1(1,1)=(-T(5));
g1(1,2)=1-params(2);
g1(2,2)=(-(1/T(2)));
g1(2,3)=1/T(2);
g1(2,5)=(-(1/T(2)));
g1(3,4)=1;
g1(3,21)=(-T(3));
g1(3,23)=(-T(4));
g1(4,5)=1;
g1(4,21)=(-((1-params(9))*T(3)*(-T(2))));
g1(4,23)=(-(((1-params(7))*T(1)-T(2)*T(4))*(1-params(12))));
g1(5,4)=(-T(2));
g1(5,6)=1;
g1(5,23)=(1-params(7))*T(1);
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
g1(10,21)=(-1);
g1(11,2)=1;
g1(11,3)=(-1);
g1(11,12)=1;
g1(12,21)=1-params(9);
g1(13,23)=1-params(12);
g1(14,11)=(-params(3));
g1(14,13)=1;
g1(14,15)=(-params(1));
g1(14,18)=(-1);
g1(15,9)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(15,14)=1;
g1(15,23)=params(7)/params(1);
g1(16,7)=(-1);
g1(16,9)=params(7);
g1(16,14)=1;
g1(16,15)=1;
g1(17,16)=1;
g1(18,2)=(-1);
g1(19,10)=(-1);
g1(20,9)=1;
g1(20,17)=1;
g1(20,19)=(-1);
g1(21,16)=(-1);
g1(21,24)=1;
g1(21,40)=(-1);
g1(22,29)=(-T(10));
g1(22,30)=1-params(16);
g1(23,3)=1/T(7);
g1(23,30)=(-(1/T(7)));
g1(23,32)=(-(1/T(7)));
g1(24,31)=1;
g1(24,43)=(-T(8));
g1(24,44)=(-T(9));
g1(25,32)=1;
g1(25,43)=(-((1-params(23))*T(8)*(-T(7))));
g1(25,44)=(-(((1-params(21))*T(6)-T(7)*T(9))*(1-params(25))));
g1(26,29)=1;
g1(26,31)=1;
g1(26,33)=(-1);
g1(27,30)=(-1);
g1(27,34)=1;
g1(28,33)=1;
g1(28,35)=(-(1-params(18)));
g1(28,43)=(-1);
g1(29,3)=(-1);
g1(29,30)=1;
g1(29,36)=1;
g1(30,43)=1-params(23);
g1(31,44)=1-params(25);
g1(32,35)=(-params(17));
g1(32,37)=1;
g1(32,39)=(-params(15));
g1(32,42)=(-1);
g1(33,9)=(-(params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)));
g1(33,38)=1;
g1(33,44)=params(21)/params(15);
g1(34,9)=params(21);
g1(34,33)=(-1);
g1(34,38)=1;
g1(34,39)=1;
g1(35,40)=1;
g1(36,30)=(-1);
g1(37,34)=(-1);
g1(38,16)=(-1);
g1(38,40)=(-1);
g1(38,45)=1;
g1(39,3)=1-params(27);
g1(39,10)=(-((1-params(27))*params(13)*params(26)));
g1(39,22)=(-1);
g1(39,34)=(-((1-params(27))*params(13)*(1-params(26))));
g1(40,22)=1-params(10);
g1(41,20)=1;
g1(42,25)=1;
g1(43,26)=1;
g1(44,27)=1;
g1(45,10)=(-1);
g1(45,28)=1;
g1(46,46)=1;
g1(47,47)=1;
g1(48,48)=1;
g1(49,34)=(-1);
g1(49,49)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
