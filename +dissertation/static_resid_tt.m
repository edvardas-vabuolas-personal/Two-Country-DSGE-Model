function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 14);

T(1) = 1/(1+params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1));
T(2) = params(1)*T(1);
T(3) = (1+params(3))/(params(4)+params(3)+(1-params(4))*T(2));
T(4) = (1-params(4))*T(2)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)*(-params(7))/(params(4)+params(3)+(1-params(4))*T(2));
T(5) = (1-params(4))*T(1)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))*(-params(7))/(params(4)+params(3)+(1-params(4))*T(2));
T(6) = (1-params(6))*(1-params(6)*params(2))/((1-params(4))/(1-params(4)+params(4)*params(5))*params(6))*(T(2)+(params(4)+params(3))/(1-params(4)));
T(7) = 1/(1+params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1));
T(8) = params(13)*T(7);
T(9) = (1+params(15))/(params(16)+params(15)+(1-params(16))*T(8));
T(10) = (1-params(16))*T(8)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1)*(-params(19))/(params(16)+params(15)+(1-params(16))*T(8));
T(11) = (1-params(16))*T(7)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))*(-params(19))/(params(16)+params(15)+(1-params(16))*T(8));
T(12) = (1-params(18))*(1-params(18)*params(14))/((1-params(16))/(1-params(16)+params(16)*params(17))*params(18))*(T(8)+(params(16)+params(15))/(1-params(16)));
T(13) = (1-params(25))*T(2)*(T(4)+(params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))-1)/(1-params(7)))*params(37);
T(14) = (1-params(26))*T(8)*(T(10)+(params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))-1)/(1-params(19)))*params(38);

end
