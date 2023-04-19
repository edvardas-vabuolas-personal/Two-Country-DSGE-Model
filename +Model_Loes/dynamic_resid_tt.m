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

assert(length(T) >= 13);

T(1) = params(80)/params(78)*params(39)*params(4)*params(5);
T(2) = params(5)*params(39)*params(81)/params(78)*params(6);
T(3) = params(90)/params(78)*(1-params(39))*params(23)*(1-params(24));
T(4) = (1-params(24))*(1-params(39))*params(91)/params(78)*params(25);
T(5) = params(24)*params(23)*(1-params(39))*params(90)/params(88);
T(6) = params(24)*params(25)*(1-params(39))*params(91)/params(88);
T(7) = (1-params(5))*params(4)*params(39)*params(80)/params(88);
T(8) = (1-params(5))*params(6)*params(39)*params(81)/params(88);
T(9) = (1-params(16))/params(1);
T(10) = (1-params(35))/params(20);
T(11) = params(20)/(1-params(35));
T(12) = (1-params(13))*(1-params(3)*params(13))/((1+params(3)*params(12))*params(13));
T(13) = (1-params(15))*(1-params(3)*params(15))/((1+params(3)*params(14))*params(15));

end
