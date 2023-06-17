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
g1 = zeros(49, 79);
g1(1,20)=(-T(5));
g1(1,21)=1;
g1(1,70)=(-params(2));
g1(2,20)=1;
g1(2,69)=(-1);
g1(2,70)=(-(1/T(2)));
g1(2,22)=1/T(2);
g1(2,24)=(-(1/T(2)));
g1(3,23)=1;
g1(3,40)=(-T(3));
g1(3,42)=(-T(4));
g1(4,24)=1;
g1(4,40)=(-((1-params(9))*T(3)*(-T(2))));
g1(4,42)=(-((1-params(12))*((1-params(7))*T(1)-T(2)*T(4))));
g1(5,23)=(-T(2));
g1(5,25)=1;
g1(5,42)=(1-params(7))*T(1);
g1(6,20)=(-T(2));
g1(6,27)=1;
g1(7,20)=1;
g1(7,23)=1;
g1(7,26)=(-1);
g1(8,25)=1;
g1(8,27)=1;
g1(8,28)=(-1);
g1(9,21)=(-1);
g1(9,3)=params(7);
g1(9,28)=(-params(7));
g1(9,29)=1;
g1(10,26)=1;
g1(10,30)=(-(1-params(4)));
g1(10,40)=(-1);
g1(11,70)=1;
g1(11,22)=(-1);
g1(11,31)=1;
g1(12,8)=(-params(9));
g1(12,40)=1;
g1(12,74)=(-1);
g1(13,10)=(-params(12));
g1(13,42)=1;
g1(13,75)=(-1);
g1(14,30)=(-params(3));
g1(14,32)=1;
g1(14,34)=(-params(1));
g1(14,37)=(-1);
g1(15,28)=(-(params(7)*((params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))/params(1)-1)));
g1(15,33)=1;
g1(15,42)=params(7)/params(1);
g1(16,26)=(-1);
g1(16,28)=params(7);
g1(16,33)=1;
g1(16,34)=1;
g1(17,26)=(-1);
g1(17,35)=1;
g1(18,21)=(-1);
g1(18,6)=(-1);
g1(18,36)=1;
g1(19,29)=(-1);
g1(19,7)=(-1);
g1(19,37)=1;
g1(20,28)=1;
g1(20,36)=1;
g1(20,38)=(-1);
g1(20,79)=(-1);
g1(21,35)=(-1);
g1(21,43)=1;
g1(21,59)=(-1);
g1(22,48)=(-T(10));
g1(22,49)=1;
g1(22,72)=(-params(16));
g1(23,22)=1/T(7);
g1(23,48)=1;
g1(23,71)=(-1);
g1(23,72)=(-(1/T(7)));
g1(23,51)=(-(1/T(7)));
g1(24,50)=1;
g1(24,62)=(-T(8));
g1(24,63)=(-T(9));
g1(25,51)=1;
g1(25,62)=(-((1-params(23))*T(8)*(-T(7))));
g1(25,63)=(-((1-params(25))*((1-params(21))*T(6)-T(7)*T(9))));
g1(26,48)=1;
g1(26,50)=1;
g1(26,52)=(-1);
g1(27,3)=params(21);
g1(27,28)=(-params(21));
g1(27,49)=(-1);
g1(27,53)=1;
g1(28,52)=1;
g1(28,54)=(-(1-params(18)));
g1(28,62)=(-1);
g1(29,22)=(-1);
g1(29,72)=1;
g1(29,55)=1;
g1(30,17)=(-params(23));
g1(30,62)=1;
g1(30,76)=(-1);
g1(31,18)=(-params(25));
g1(31,63)=1;
g1(31,77)=(-1);
g1(32,54)=(-params(17));
g1(32,56)=1;
g1(32,58)=(-params(15));
g1(32,61)=(-1);
g1(33,28)=(-(params(21)*((params(15)*params(22)+(1-params(21))*(params(15)*params(22)-1))/params(15)-1)));
g1(33,57)=1;
g1(33,63)=params(21)/params(15);
g1(34,28)=params(21);
g1(34,52)=(-1);
g1(34,57)=1;
g1(34,58)=1;
g1(35,52)=(-1);
g1(35,59)=1;
g1(36,49)=(-1);
g1(36,15)=(-1);
g1(36,60)=1;
g1(37,53)=(-1);
g1(37,16)=(-1);
g1(37,61)=1;
g1(38,35)=(-1);
g1(38,59)=(-1);
g1(38,64)=1;
g1(39,1)=(-params(27));
g1(39,22)=1;
g1(39,29)=(-((1-params(27))*params(13)*params(26)));
g1(39,41)=(-1);
g1(39,11)=(-((1-params(27))*params(14)*(-params(26))));
g1(39,43)=(-((1-params(27))*params(26)*params(14)));
g1(39,53)=(-((1-params(27))*params(13)*(1-params(26))));
g1(39,19)=(-((1-params(27))*params(14)*(-(1-params(26)))));
g1(39,64)=(-((1-params(27))*(1-params(26))*params(14)));
g1(40,9)=(-params(10));
g1(40,41)=1;
g1(40,73)=(-1);
g1(41,39)=1;
g1(42,2)=1;
g1(42,26)=(-1);
g1(42,44)=1;
g1(43,5)=1;
g1(43,34)=(-1);
g1(43,45)=1;
g1(44,4)=1;
g1(44,32)=(-1);
g1(44,46)=1;
g1(45,29)=(-1);
g1(45,47)=1;
g1(46,12)=1;
g1(46,52)=(-1);
g1(46,65)=1;
g1(47,14)=1;
g1(47,58)=(-1);
g1(47,66)=1;
g1(48,13)=1;
g1(48,56)=(-1);
g1(48,67)=1;
g1(49,53)=(-1);
g1(49,68)=1;

end
