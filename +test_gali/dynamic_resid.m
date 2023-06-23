function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = test_gali.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(29, 1);
lhs = y(9);
rhs = params(1)*y(38)+y(8)*T(5);
residual(1) = lhs - rhs;
lhs = y(8);
rhs = y(37)-(y(10)-y(38)-y(12))*1/T(2);
residual(2) = lhs - rhs;
lhs = y(11);
rhs = y(29)*T(3)+y(31)*T(4);
residual(3) = lhs - rhs;
lhs = y(12);
rhs = y(29)*(1-params(9))*T(3)*(-T(2))+y(31)*(1-params(12))*((1-params(7))*T(1)-T(2)*T(4));
residual(4) = lhs - rhs;
lhs = y(13);
rhs = y(11)*T(2)-y(31)*(1-params(7))*T(1);
residual(5) = lhs - rhs;
lhs = y(15);
rhs = y(8)*T(2);
residual(6) = lhs - rhs;
lhs = y(8);
rhs = y(14)-y(11);
residual(7) = lhs - rhs;
lhs = y(15);
rhs = y(16)-y(13);
residual(8) = lhs - rhs;
lhs = y(17);
rhs = y(9)+params(7)*(y(16)-y(1));
residual(9) = lhs - rhs;
lhs = y(14);
rhs = y(29)+(1-params(4))*y(18);
residual(10) = lhs - rhs;
lhs = y(19);
rhs = y(10)-y(38);
residual(11) = lhs - rhs;
lhs = y(30);
rhs = params(10)*y(6)+x(it_, 1);
residual(12) = lhs - rhs;
lhs = y(29);
rhs = params(9)*y(5)+x(it_, 2);
residual(13) = lhs - rhs;
lhs = y(31);
rhs = params(12)*y(7)+x(it_, 3);
residual(14) = lhs - rhs;
lhs = y(20)-y(25);
rhs = params(2)*y(22)+params(3)*y(18);
residual(15) = lhs - rhs;
lhs = y(21);
rhs = y(16)*params(7)*((params(2)*params(8)+(1-params(7))*(params(2)*params(8)-1))/params(2)-1)-y(31)*params(7)/params(2);
residual(16) = lhs - rhs;
lhs = y(21);
rhs = y(14)-y(22)-params(7)*y(16);
residual(17) = lhs - rhs;
residual(18) = y(28);
lhs = y(33);
rhs = y(10)*4;
residual(19) = lhs - rhs;
lhs = y(32);
rhs = y(19)*4;
residual(20) = lhs - rhs;
lhs = y(34);
rhs = y(12)*4;
residual(21) = lhs - rhs;
lhs = y(35);
rhs = y(17)*4;
residual(22) = lhs - rhs;
lhs = y(36);
rhs = y(9)*4;
residual(23) = lhs - rhs;
lhs = y(23);
rhs = y(14)-(steady_state(7));
residual(24) = lhs - rhs;
lhs = y(24);
rhs = y(9)+y(2);
residual(25) = lhs - rhs;
lhs = y(25);
rhs = y(17)+y(3);
residual(26) = lhs - rhs;
lhs = y(16);
rhs = y(26)+x(it_, 4)-y(24);
residual(27) = lhs - rhs;
lhs = y(27);
rhs = y(26)-y(4);
residual(28) = lhs - rhs;
lhs = y(10);
rhs = y(30)+y(9)*params(13)+y(23)*params(14);
residual(29) = lhs - rhs;

end
