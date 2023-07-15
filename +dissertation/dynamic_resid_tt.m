function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 16);

T(1) = 1/(1+params(7)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1));
T(2) = params(1)*T(1);
T(3) = (1-params(4))/(1-params(4)+params(4)*params(5))*(1-params(6))*(1-params(6)*params(2))/params(6)*((params(4)+params(3))/(1-params(4))+params(1)*(1-params(29))+params(29)*T(2));
T(4) = 1/(1+params(19)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1));
T(5) = params(13)*T(4);
T(6) = (1-params(16))/(1-params(16)+params(16)*params(17))*(1-params(18))*(1-params(18)*params(14))/params(18)*((params(16)+params(15))/(1-params(16))+params(13)*(1-params(30))+params(30)*T(5));
T(7) = (1-params(4))*T(2)*(-params(7))*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1)-1)/(params(4)+params(3)+(1-params(4))*params(29)*T(2));
T(8) = (1-params(4))*T(1)*(params(1)*params(8)+(1-params(7))*(params(1)*params(8)-1))*(-params(7))/(params(4)+params(3)+(1-params(4))*params(29)*T(2));
T(9) = (1+params(3))/(params(4)+params(3)+(1-params(4))*params(29)*T(2));
T(10) = (1-params(4))*params(31)*T(2)/(params(4)+params(3)+(1-params(4))*params(29)*T(2));
T(11) = (1-params(16))*T(5)*(-params(19))*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1)-1)/(params(16)+params(15)+(1-params(16))*params(30)*T(5));
T(12) = (1-params(16))*T(4)*(params(13)*params(20)+(1-params(19))*(params(13)*params(20)-1))*(-params(19))/(params(16)+params(15)+(1-params(16))*params(30)*T(5));
T(13) = (1+params(15))/(params(16)+params(15)+(1-params(16))*params(30)*T(5));
T(14) = (1-params(16))*params(32)*T(5)/(params(16)+params(15)+(1-params(16))*params(30)*T(5));
T(15) = (1-params(4))*(-params(36))/((1-params(36))*(params(4)+params(3)+(1-params(4))*params(29)*T(2)));
T(16) = (1-params(16))*(-params(36))/((1-params(36))*(params(16)+params(15)+(1-params(16))*params(30)*T(5)));

end
