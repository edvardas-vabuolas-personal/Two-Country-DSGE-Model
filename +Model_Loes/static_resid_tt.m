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

assert(length(T) >= 12);

T(1) = params(80)/params(78)*params(39)*params(4)*params(5);
T(2) = params(5)*params(39)*params(81)/params(78)*params(6);
T(3) = params(90)/params(78)*(1-params(39))*params(23)*(1-params(24));
T(4) = (1-params(24))*(1-params(39))*params(91)/params(78)*params(25);
T(5) = params(24)*params(23)*(1-params(39))*params(90)/params(88);
T(6) = params(24)*params(25)*(1-params(39))*params(91)/params(88);
T(7) = (1-params(5))*params(4)*params(39)*params(80)/params(88);
T(8) = (1-params(5))*params(6)*params(39)*params(81)/params(88);
T(9) = (1-params(11))*(1-params(3)*params(11))/(params(11)*(1+params(17)*params(2)));
T(10) = (1-params(30))*(1-params(22)*params(30))/(params(30)*(1+params(36)*params(21)));
T(11) = (1-params(13))*(1-params(3)*params(13))/((1+params(3)*params(12))*params(13));
T(12) = (1-params(15))*(1-params(3)*params(15))/((1+params(3)*params(14))*params(15));

end
