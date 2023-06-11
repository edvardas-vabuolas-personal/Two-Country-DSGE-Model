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
g1 = zeros(59, 59);
g1(1,1)=(-T(6));
g1(1,2)=1-params(2);
g1(2,2)=(-(1/T(2)));
g1(2,3)=1/T(2);
g1(2,5)=(-(1/T(2)));
g1(3,4)=1;
g1(3,21)=(-T(4));
g1(3,22)=(-T(3));
g1(3,24)=(-T(5));
g1(4,5)=1;
g1(4,22)=(-((1-params(9))*T(3)*(-T(2))));
g1(4,24)=(-(((1-params(7))*T(1)-T(2)*T(5))*(1-params(12))));
g1(5,4)=(-T(2));
g1(5,6)=1;
g1(5,21)=T(2);
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
g1(12,22)=1-params(9);
g1(13,24)=1-params(12);
g1(14,11)=(-params(3));
g1(14,13)=1;
g1(14,15)=(-params(1));
g1(14,18)=(-1);
g1(15,9)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(15,14)=1;
g1(15,24)=params(7)/params(1);
g1(16,7)=(-1);
g1(16,9)=params(7);
g1(16,14)=1;
g1(16,15)=1;
g1(17,3)=(-4);
g1(17,26)=1;
g1(18,12)=(-4);
g1(18,25)=1;
g1(19,5)=(-4);
g1(19,27)=1;
g1(20,10)=(-4);
g1(20,28)=1;
g1(21,2)=(-4);
g1(21,29)=1;
g1(22,16)=1;
g1(23,2)=(-1);
g1(24,10)=(-1);
g1(25,9)=1;
g1(25,17)=(-1);
g1(25,19)=(-1);
g1(26,20)=1;
g1(27,30)=(-T(12));
g1(27,31)=1-params(16);
g1(28,31)=(-(1/T(8)));
g1(28,33)=(-(1/T(8)));
g1(28,56)=1/T(8);
g1(29,21)=(-T(10));
g1(29,32)=1;
g1(29,49)=(-T(9));
g1(29,50)=(-T(11));
g1(30,33)=1;
g1(30,49)=(-((1-params(23))*T(9)*(-T(8))));
g1(30,50)=(-(((1-params(21))*T(7)-T(8)*T(11))*(1-params(25))));
g1(31,21)=T(8);
g1(31,32)=(-T(8));
g1(31,34)=1;
g1(31,50)=T(1)*(1-params(21));
g1(32,30)=(-T(8));
g1(32,36)=1;
g1(33,30)=1;
g1(33,32)=1;
g1(33,35)=(-1);
g1(34,34)=1;
g1(34,36)=1;
g1(34,37)=(-1);
g1(35,31)=(-1);
g1(35,38)=1;
g1(36,35)=1;
g1(36,39)=(-(1-params(18)));
g1(36,49)=(-1);
g1(37,31)=1;
g1(37,40)=1;
g1(37,56)=(-1);
g1(38,49)=1-params(23);
g1(39,50)=1-params(25);
g1(40,39)=(-params(17));
g1(40,41)=1;
g1(40,43)=(-params(15));
g1(40,46)=(-1);
g1(41,37)=(-(params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)));
g1(41,42)=1;
g1(41,50)=params(21)/params(15);
g1(42,35)=(-1);
g1(42,37)=params(21);
g1(42,42)=1;
g1(42,43)=1;
g1(43,52)=1;
g1(43,56)=(-4);
g1(44,40)=(-4);
g1(44,51)=1;
g1(45,33)=(-4);
g1(45,53)=1;
g1(46,38)=(-4);
g1(46,54)=1;
g1(47,31)=(-4);
g1(47,55)=1;
g1(48,44)=1;
g1(49,31)=(-1);
g1(50,38)=(-1);
g1(51,37)=1;
g1(51,45)=1;
g1(51,47)=(-1);
g1(52,48)=1;
g1(53,2)=(-(0.15*params(13)));
g1(53,3)=0.15;
g1(53,16)=(-(0.15*params(14)));
g1(53,23)=(-1);
g1(54,23)=(-1);
g1(54,31)=(-(0.15*params(13)));
g1(54,44)=(-(0.15*params(13)));
g1(54,56)=0.15;
g1(55,23)=1-params(10);
g1(57,2)=(-0.91);
g1(57,31)=(-0.08999999999999997);
g1(57,57)=1;
g1(58,16)=(-0.91);
g1(58,44)=(-0.08999999999999997);
g1(58,58)=1;
g1(59,21)=(-1);
g1(59,59)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
