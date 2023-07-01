%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'dissertation';
M_.dynare_version = '5.4';
oo_.dynare_version = '5.4';
options_.dynare_version = '5.4';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(10,1);
M_.exo_names_tex = cell(10,1);
M_.exo_names_long = cell(10,1);
M_.exo_names(1) = {'eps_a'};
M_.exo_names_tex(1) = {'{\varepsilon^a}'};
M_.exo_names_long(1) = {'Technology shock'};
M_.exo_names(2) = {'eps_z'};
M_.exo_names_tex(2) = {'{\varepsilon^z}'};
M_.exo_names_long(2) = {'Preference shock'};
M_.exo_names(3) = {'eps_a_f'};
M_.exo_names_tex(3) = {'{\varepsilon^{f,a}}'};
M_.exo_names_long(3) = {'technology shock'};
M_.exo_names(4) = {'eps_z_f'};
M_.exo_names_tex(4) = {'{\varepsilon^{f,z}}'};
M_.exo_names_long(4) = {'preference shock'};
M_.exo_names(5) = {'eps_nu'};
M_.exo_names_tex(5) = {'{\varepsilon^\nu}'};
M_.exo_names_long(5) = {'Monetary policy shock'};
M_.exo_names(6) = {'eps_nu_f'};
M_.exo_names_tex(6) = {'{\varepsilon^{\nu, f}}'};
M_.exo_names_long(6) = {'Monetary policy shock'};
M_.exo_names(7) = {'eps_g'};
M_.exo_names_tex(7) = {'{\varepsilon^{\tau}}'};
M_.exo_names_long(7) = {'Government Spending shock (Scotland)'};
M_.exo_names(8) = {'eps_g_f'};
M_.exo_names_tex(8) = {'{\varepsilon^{\tau,f}}'};
M_.exo_names_long(8) = {'Government Spending shock (rUK)'};
M_.exo_names(9) = {'eps_y_star'};
M_.exo_names_tex(9) = {'{\varepsilon^y}'};
M_.exo_names_long(9) = {'world output growth shock'};
M_.exo_names(10) = {'p_star'};
M_.exo_names_tex(10) = {'{p^*}'};
M_.exo_names_long(10) = {'world price level'};
M_.endo_names = cell(76,1);
M_.endo_names_tex = cell(76,1);
M_.endo_names_long = cell(76,1);
M_.endo_names(1) = {'y_gap'};
M_.endo_names_tex(1) = {'{\tilde{y}_t}'};
M_.endo_names_long(1) = {'Output gap'};
M_.endo_names(2) = {'pi_h'};
M_.endo_names_tex(2) = {'{\pi_{H,t}}'};
M_.endo_names_long(2) = {'domestic inflation'};
M_.endo_names(3) = {'y_nat'};
M_.endo_names_tex(3) = {'{y^{n}}'};
M_.endo_names_long(3) = {'natural output'};
M_.endo_names(4) = {'r_nat'};
M_.endo_names_tex(4) = {'{r^{n}}'};
M_.endo_names_long(4) = {'natural interest rate'};
M_.endo_names(5) = {'s_nat'};
M_.endo_names_tex(5) = {'{s^{n}}'};
M_.endo_names_long(5) = {'natural terms of trade'};
M_.endo_names(6) = {'y'};
M_.endo_names_tex(6) = {'{y}'};
M_.endo_names_long(6) = {'output'};
M_.endo_names(7) = {'s_gap'};
M_.endo_names_tex(7) = {'{\tilde{s}}'};
M_.endo_names_long(7) = {'terms of trade gap'};
M_.endo_names(8) = {'s'};
M_.endo_names_tex(8) = {'{s}'};
M_.endo_names_long(8) = {'terms of trade'};
M_.endo_names(9) = {'pi'};
M_.endo_names_tex(9) = {'{\pi}'};
M_.endo_names_long(9) = {'CPI inflation'};
M_.endo_names(10) = {'n'};
M_.endo_names_tex(10) = {'{n}'};
M_.endo_names_long(10) = {'employment'};
M_.endo_names(11) = {'r_real'};
M_.endo_names_tex(11) = {'{r^r}'};
M_.endo_names_long(11) = {'real interest rate'};
M_.endo_names(12) = {'w'};
M_.endo_names_tex(12) = {'{w}'};
M_.endo_names_long(12) = {'nominal wage'};
M_.endo_names(13) = {'nx'};
M_.endo_names_tex(13) = {'{nx}'};
M_.endo_names_long(13) = {'net exports in terms of domestic outout'};
M_.endo_names(14) = {'c'};
M_.endo_names_tex(14) = {'{c}'};
M_.endo_names_long(14) = {'consumption'};
M_.endo_names(15) = {'yhat'};
M_.endo_names_tex(15) = {'{\hat y}'};
M_.endo_names_long(15) = {'output deviation from steady state'};
M_.endo_names(16) = {'p_h'};
M_.endo_names_tex(16) = {'{p_H}'};
M_.endo_names_long(16) = {'domestic price level'};
M_.endo_names(17) = {'p'};
M_.endo_names_tex(17) = {'{p}'};
M_.endo_names_long(17) = {'CPI'};
M_.endo_names(18) = {'er'};
M_.endo_names_tex(18) = {'{e}'};
M_.endo_names_long(18) = {'Nominal exchange rate'};
M_.endo_names(19) = {'d_er'};
M_.endo_names_tex(19) = {'{\Delta e}'};
M_.endo_names_long(19) = {'Nominal exchange rate growth'};
M_.endo_names(20) = {'y_star'};
M_.endo_names_tex(20) = {'{y^*}'};
M_.endo_names_long(20) = {'world output'};
M_.endo_names(21) = {'a'};
M_.endo_names_tex(21) = {'{a}'};
M_.endo_names_long(21) = {'AR(1) technology shock process'};
M_.endo_names(22) = {'z'};
M_.endo_names_tex(22) = {'{z}'};
M_.endo_names_long(22) = {'AR(1) preference shock process'};
M_.endo_names(23) = {'wp'};
M_.endo_names_tex(23) = {'{wp}'};
M_.endo_names_long(23) = {'Real Wage'};
M_.endo_names(24) = {'y_gap_f'};
M_.endo_names_tex(24) = {'{\tilde{y^f}}'};
M_.endo_names_long(24) = {'output gap'};
M_.endo_names(25) = {'pi_h_f'};
M_.endo_names_tex(25) = {'{\pi^f_H}'};
M_.endo_names_long(25) = {'domestic inflation'};
M_.endo_names(26) = {'y_nat_f'};
M_.endo_names_tex(26) = {'{{y^f}^{n}}'};
M_.endo_names_long(26) = {'natural output'};
M_.endo_names(27) = {'r_nat_f'};
M_.endo_names_tex(27) = {'{{r^f}^{n}}'};
M_.endo_names_long(27) = {'natural interest rate'};
M_.endo_names(28) = {'s_nat_f'};
M_.endo_names_tex(28) = {'{{s^f}^{n}}'};
M_.endo_names_long(28) = {'natural terms of trade'};
M_.endo_names(29) = {'y_f'};
M_.endo_names_tex(29) = {'{y^f}'};
M_.endo_names_long(29) = {'output'};
M_.endo_names(30) = {'s_gap_f'};
M_.endo_names_tex(30) = {'{\tilde{s^f}}'};
M_.endo_names_long(30) = {'terms of trade gap'};
M_.endo_names(31) = {'s_f'};
M_.endo_names_tex(31) = {'{s^f}'};
M_.endo_names_long(31) = {'terms of trade'};
M_.endo_names(32) = {'pi_f'};
M_.endo_names_tex(32) = {'{\pi^f}'};
M_.endo_names_long(32) = {'CPI inflation'};
M_.endo_names(33) = {'n_f'};
M_.endo_names_tex(33) = {'{n^f}'};
M_.endo_names_long(33) = {'employment'};
M_.endo_names(34) = {'r_real_f'};
M_.endo_names_tex(34) = {'{r^r}'};
M_.endo_names_long(34) = {'real interest rate'};
M_.endo_names(35) = {'w_f'};
M_.endo_names_tex(35) = {'{w^f}'};
M_.endo_names_long(35) = {'nominal wage'};
M_.endo_names(36) = {'nx_f'};
M_.endo_names_tex(36) = {'{nx^f}'};
M_.endo_names_long(36) = {'net exports in terms of domestic outout'};
M_.endo_names(37) = {'c_f'};
M_.endo_names_tex(37) = {'{c^f}'};
M_.endo_names_long(37) = {'consumption'};
M_.endo_names(38) = {'yhat_f'};
M_.endo_names_tex(38) = {'{\hat y^f}'};
M_.endo_names_long(38) = {'output deviation from steady state'};
M_.endo_names(39) = {'p_h_f'};
M_.endo_names_tex(39) = {'{p^f_H}'};
M_.endo_names_long(39) = {'domestic price level'};
M_.endo_names(40) = {'p_f'};
M_.endo_names_tex(40) = {'{p^f}'};
M_.endo_names_long(40) = {'CPI'};
M_.endo_names(41) = {'er_f'};
M_.endo_names_tex(41) = {'{e^f}'};
M_.endo_names_long(41) = {'Nominal exchange rate'};
M_.endo_names(42) = {'d_er_f'};
M_.endo_names_tex(42) = {'{\Delta e^f}'};
M_.endo_names_long(42) = {'Nominal exchange rate growth'};
M_.endo_names(43) = {'a_f'};
M_.endo_names_tex(43) = {'{a^f}'};
M_.endo_names_long(43) = {'AR(1) technology shock process'};
M_.endo_names(44) = {'z_f'};
M_.endo_names_tex(44) = {'{z^f}'};
M_.endo_names_long(44) = {'AR(1) preference shock process'};
M_.endo_names(45) = {'wp_f'};
M_.endo_names_tex(45) = {'{wp^f}'};
M_.endo_names_long(45) = {'Real Wage'};
M_.endo_names(46) = {'g'};
M_.endo_names_tex(46) = {'{g}'};
M_.endo_names_long(46) = {'Government Spending'};
M_.endo_names(47) = {'tr'};
M_.endo_names_tex(47) = {'{TR}'};
M_.endo_names_long(47) = {'Tax Revenue'};
M_.endo_names(48) = {'g_f'};
M_.endo_names_tex(48) = {'{g^f}'};
M_.endo_names_long(48) = {'Government Spending'};
M_.endo_names(49) = {'tr_f'};
M_.endo_names_tex(49) = {'{TR^f}'};
M_.endo_names_long(49) = {'Tax Revenue'};
M_.endo_names(50) = {'b'};
M_.endo_names_tex(50) = {'b'};
M_.endo_names_long(50) = {'b'};
M_.endo_names(51) = {'b_f'};
M_.endo_names_tex(51) = {'b\_f'};
M_.endo_names_long(51) = {'b_f'};
M_.endo_names(52) = {'tau'};
M_.endo_names_tex(52) = {'{\tau_l}'};
M_.endo_names_long(52) = {'Labour Tax (Scotland)'};
M_.endo_names(53) = {'tau_f'};
M_.endo_names_tex(53) = {'{\tau^f_l}'};
M_.endo_names_long(53) = {'Labour Tax (rUK)'};
M_.endo_names(54) = {'nu'};
M_.endo_names_tex(54) = {'{\nu}'};
M_.endo_names_long(54) = {'AR(1) monetary policy shock process'};
M_.endo_names(55) = {'nu_f'};
M_.endo_names_tex(55) = {'{\nu}'};
M_.endo_names_long(55) = {'AR(1) monetary policy shock process'};
M_.endo_names(56) = {'interest'};
M_.endo_names_tex(56) = {'{i}'};
M_.endo_names_long(56) = {'Interest Rate (Scotland)'};
M_.endo_names(57) = {'interest_f'};
M_.endo_names_tex(57) = {'{i^f}'};
M_.endo_names_long(57) = {'Interest Rate (rUK)'};
M_.endo_names(58) = {'y_gap_d'};
M_.endo_names_tex(58) = {'y\_gap\_d'};
M_.endo_names_long(58) = {'y_gap_d'};
M_.endo_names(59) = {'pi_h_d'};
M_.endo_names_tex(59) = {'pi\_h\_d'};
M_.endo_names_long(59) = {'pi_h_d'};
M_.endo_names(60) = {'y_nat_d'};
M_.endo_names_tex(60) = {'y\_nat\_d'};
M_.endo_names_long(60) = {'y_nat_d'};
M_.endo_names(61) = {'r_nat_d'};
M_.endo_names_tex(61) = {'r\_nat\_d'};
M_.endo_names_long(61) = {'r_nat_d'};
M_.endo_names(62) = {'s_nat_d'};
M_.endo_names_tex(62) = {'s\_nat\_d'};
M_.endo_names_long(62) = {'s_nat_d'};
M_.endo_names(63) = {'y_d'};
M_.endo_names_tex(63) = {'y\_d'};
M_.endo_names_long(63) = {'y_d'};
M_.endo_names(64) = {'s_gap_d'};
M_.endo_names_tex(64) = {'s\_gap\_d'};
M_.endo_names_long(64) = {'s_gap_d'};
M_.endo_names(65) = {'s_d'};
M_.endo_names_tex(65) = {'s\_d'};
M_.endo_names_long(65) = {'s_d'};
M_.endo_names(66) = {'pi_d'};
M_.endo_names_tex(66) = {'pi\_d'};
M_.endo_names_long(66) = {'pi_d'};
M_.endo_names(67) = {'n_d'};
M_.endo_names_tex(67) = {'n\_d'};
M_.endo_names_long(67) = {'n_d'};
M_.endo_names(68) = {'r_real_d'};
M_.endo_names_tex(68) = {'r\_real\_d'};
M_.endo_names_long(68) = {'r_real_d'};
M_.endo_names(69) = {'w_d'};
M_.endo_names_tex(69) = {'w\_d'};
M_.endo_names_long(69) = {'w_d'};
M_.endo_names(70) = {'nx_d'};
M_.endo_names_tex(70) = {'nx\_d'};
M_.endo_names_long(70) = {'nx_d'};
M_.endo_names(71) = {'c_d'};
M_.endo_names_tex(71) = {'c\_d'};
M_.endo_names_long(71) = {'c_d'};
M_.endo_names(72) = {'yhat_d'};
M_.endo_names_tex(72) = {'yhat\_d'};
M_.endo_names_long(72) = {'yhat_d'};
M_.endo_names(73) = {'p_h_d'};
M_.endo_names_tex(73) = {'p\_h\_d'};
M_.endo_names_long(73) = {'p_h_d'};
M_.endo_names(74) = {'p_d'};
M_.endo_names_tex(74) = {'p\_d'};
M_.endo_names_long(74) = {'p_d'};
M_.endo_names(75) = {'wp_d'};
M_.endo_names_tex(75) = {'wp\_d'};
M_.endo_names_long(75) = {'wp_d'};
M_.endo_names(76) = {'AUX_ENDO_LAG_19_1'};
M_.endo_names_tex(76) = {'AUX\_ENDO\_LAG\_19\_1'};
M_.endo_names_long(76) = {'AUX_ENDO_LAG_19_1'};
M_.endo_partitions = struct();
M_.param_names = cell(41,1);
M_.param_names_tex = cell(41,1);
M_.param_names_long = cell(41,1);
M_.param_names(1) = {'siggma'};
M_.param_names_tex(1) = {'{\sigma}'};
M_.param_names_long(1) = {'inverse EIS'};
M_.param_names(2) = {'betta'};
M_.param_names_tex(2) = {'{\beta}'};
M_.param_names_long(2) = {'discount factor'};
M_.param_names(3) = {'varphi'};
M_.param_names_tex(3) = {'{\varphi}'};
M_.param_names_long(3) = {'inverse Frisch elasticity'};
M_.param_names(4) = {'alppha'};
M_.param_names_tex(4) = {'{\alpha}'};
M_.param_names_long(4) = {'capital share'};
M_.param_names(5) = {'epsilon'};
M_.param_names_tex(5) = {'{\epsilon}'};
M_.param_names_long(5) = {'demand elasticity'};
M_.param_names(6) = {'theta'};
M_.param_names_tex(6) = {'{\theta}'};
M_.param_names_long(6) = {'Calvo parameter'};
M_.param_names(7) = {'upsilon'};
M_.param_names_tex(7) = {'{\upsilon}'};
M_.param_names_long(7) = {'openness parameter'};
M_.param_names(8) = {'eta'};
M_.param_names_tex(8) = {'{\eta}'};
M_.param_names_long(8) = {'substitutability foreign/domestic goods'};
M_.param_names(9) = {'rho_a'};
M_.param_names_tex(9) = {'{\rho_a}'};
M_.param_names_long(9) = {'autocorrelation technology shock'};
M_.param_names(10) = {'rho_nu'};
M_.param_names_tex(10) = {'{\rho_{\nu}}'};
M_.param_names_long(10) = {'autocorrelation monetary policy shock'};
M_.param_names(11) = {'rho_y_star'};
M_.param_names_tex(11) = {'{\rho_{y^*}}'};
M_.param_names_long(11) = {'autocorrelation world output growth shock'};
M_.param_names(12) = {'rho_z'};
M_.param_names_tex(12) = {'{\rho_{z}}'};
M_.param_names_long(12) = {'autocorrelation preference shock'};
M_.param_names(13) = {'siggma_f'};
M_.param_names_tex(13) = {'{\sigma}'};
M_.param_names_long(13) = {'inverse EIS'};
M_.param_names(14) = {'betta_f'};
M_.param_names_tex(14) = {'{\beta}'};
M_.param_names_long(14) = {'discount factor'};
M_.param_names(15) = {'varphi_f'};
M_.param_names_tex(15) = {'{\varphi}'};
M_.param_names_long(15) = {'inverse Frisch elasticity'};
M_.param_names(16) = {'alppha_f'};
M_.param_names_tex(16) = {'{\alpha}'};
M_.param_names_long(16) = {'capital share'};
M_.param_names(17) = {'epsilon_f'};
M_.param_names_tex(17) = {'{\epsilon}'};
M_.param_names_long(17) = {'demand elasticity'};
M_.param_names(18) = {'theta_f'};
M_.param_names_tex(18) = {'{\theta}'};
M_.param_names_long(18) = {'Calvo parameter'};
M_.param_names(19) = {'upsilon_f'};
M_.param_names_tex(19) = {'{\upsilon}'};
M_.param_names_long(19) = {'openness parameter'};
M_.param_names(20) = {'eta_f'};
M_.param_names_tex(20) = {'{\eta}'};
M_.param_names_long(20) = {'substitutability foreign/domestic goods'};
M_.param_names(21) = {'rho_a_f'};
M_.param_names_tex(21) = {'{\rho_a}'};
M_.param_names_long(21) = {'autocorrelation technology shock'};
M_.param_names(22) = {'rho_y_star_f'};
M_.param_names_tex(22) = {'{\rho_{y^*}}'};
M_.param_names_long(22) = {'autocorrelation world output growth shock'};
M_.param_names(23) = {'rho_z_f'};
M_.param_names_tex(23) = {'{\rho_{z}}'};
M_.param_names_long(23) = {'autocorrelation preference shock'};
M_.param_names(24) = {'rho_g'};
M_.param_names_tex(24) = {'{\rho_g}'};
M_.param_names_long(24) = {'AR(1) coefficient for Government spending (Scotland)'};
M_.param_names(25) = {'rho_g_f'};
M_.param_names_tex(25) = {'{\rho_g}'};
M_.param_names_long(25) = {'AR(1) coefficient for Government spending (rUK)'};
M_.param_names(26) = {'WN_T_SS'};
M_.param_names_tex(26) = {'{\frac{WN}{T}}'};
M_.param_names_long(26) = {'Pre-tax income/tax revenue ratio'};
M_.param_names(27) = {'WN_T_SS_f'};
M_.param_names_tex(27) = {'{\frac{W^fN^f}{T^f}}'};
M_.param_names_long(27) = {'Pre-tax income/tax revenue ratio'};
M_.param_names(28) = {'phi_b'};
M_.param_names_tex(28) = {'phi\_b'};
M_.param_names_long(28) = {'phi_b'};
M_.param_names(29) = {'phi_b_f'};
M_.param_names_tex(29) = {'phi\_b\_f'};
M_.param_names_long(29) = {'phi_b_f'};
M_.param_names(30) = {'phi_g'};
M_.param_names_tex(30) = {'phi\_g'};
M_.param_names_long(30) = {'phi_g'};
M_.param_names(31) = {'phi_g_f'};
M_.param_names_tex(31) = {'phi\_g\_f'};
M_.param_names_long(31) = {'phi_g_f'};
M_.param_names(32) = {'B_Y_SS'};
M_.param_names_tex(32) = {'B\_Y\_SS'};
M_.param_names_long(32) = {'B_Y_SS'};
M_.param_names(33) = {'TR_Y_SS'};
M_.param_names_tex(33) = {'TR\_Y\_SS'};
M_.param_names_long(33) = {'TR_Y_SS'};
M_.param_names(34) = {'B_Y_SS_f'};
M_.param_names_tex(34) = {'B\_Y\_SS\_f'};
M_.param_names_long(34) = {'B_Y_SS_f'};
M_.param_names(35) = {'TR_Y_SS_f'};
M_.param_names_tex(35) = {'TR\_Y\_SS\_f'};
M_.param_names_long(35) = {'TR_Y_SS_f'};
M_.param_names(36) = {'tau_ss'};
M_.param_names_tex(36) = {'{\tilde{\tau}}'};
M_.param_names_long(36) = {'Average labour tax rate (Scotland)'};
M_.param_names(37) = {'tau_ss_f'};
M_.param_names_tex(37) = {'{\tilde{\tau}}^f'};
M_.param_names_long(37) = {'Average labour tax rate (rUK)'};
M_.param_names(38) = {'pop'};
M_.param_names_tex(38) = {'{pop}'};
M_.param_names_long(38) = {'Scottish population share in the UK'};
M_.param_names(39) = {'phi_pi'};
M_.param_names_tex(39) = {'{\phi_{\pi}}'};
M_.param_names_long(39) = {'inflation feedback Taylor Rule'};
M_.param_names(40) = {'phi_y'};
M_.param_names_tex(40) = {'{\phi_{y}}'};
M_.param_names_long(40) = {'output feedback Taylor Rule'};
M_.param_names(41) = {'rho_i'};
M_.param_names_tex(41) = {'{\rho_i}'};
M_.param_names_long(41) = {'AR(1) coefficient for Taylor Rule'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 10;
M_.endo_nbr = 76;
M_.param_nbr = 41;
M_.orig_endo_nbr = 75;
M_.aux_vars(1).endo_index = 76;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 20;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'y_star(-1)';
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(10, 10);
M_.Correlation_matrix = eye(10, 10);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 75;
M_.eq_nbr = 76;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 2;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 2;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 2;
M_.lead_lag_incidence = [
 0 23 99;
 0 24 100;
 0 25 0;
 0 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 1 30 0;
 0 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 2 38 0;
 3 39 0;
 4 40 0;
 0 41 0;
 5 42 101;
 6 43 0;
 7 44 0;
 0 45 0;
 0 46 102;
 0 47 103;
 0 48 0;
 0 49 0;
 0 50 0;
 0 51 0;
 0 52 0;
 8 53 0;
 0 54 0;
 0 55 0;
 0 56 0;
 0 57 0;
 0 58 0;
 0 59 0;
 0 60 0;
 9 61 0;
 10 62 0;
 11 63 0;
 0 64 0;
 12 65 0;
 13 66 0;
 0 67 0;
 14 68 0;
 0 69 0;
 15 70 0;
 0 71 0;
 16 72 0;
 17 73 0;
 0 74 104;
 0 75 105;
 18 76 0;
 19 77 0;
 20 78 0;
 21 79 0;
 0 80 0;
 0 81 0;
 0 82 0;
 0 83 0;
 0 84 0;
 0 85 0;
 0 86 0;
 0 87 0;
 0 88 0;
 0 89 0;
 0 90 0;
 0 91 0;
 0 92 0;
 0 93 0;
 0 94 0;
 0 95 0;
 0 96 0;
 0 97 0;
 22 98 0;]';
M_.nstatic = 48;
M_.nfwrd   = 6;
M_.npred   = 21;
M_.nboth   = 1;
M_.nsfwrd   = 7;
M_.nspred   = 22;
M_.ndynamic   = 28;
M_.dynamic_tmp_nbr = [16; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'New Keynesian Phillips Curve (eq. 37)' ;
  2 , 'name' , 'Dynamic IS Curve (eq. 29)' ;
  3 , 'name' , 'Natural output (eq. 35)' ;
  4 , 'name' , 'Natural rate of interest (eq. 38)' ;
  5 , 'name' , 'Natural terms of trade (below eq. (35))' ;
  6 , 'name' , 'Terms of trade gap (middle p. 238)' ;
  7 , 'name' , 'Output' ;
  8 , 'name' , ' Terms of trade, p. 238' ;
  9 , 'name' , 'CPI inflation (13)' ;
  10 , 'name' , 'Production function (eq. 32)' ;
  11 , 'name' , 'Definition real interest rate' ;
  12 , 'name' , 'TFP shock, top of p. 233' ;
  13 , 'name' , 'Preference shock, top of p. 227' ;
  14 , 'name' , 'Output deviation from steady state' ;
  15 , 'name' , 'Domestic price level, p. 229' ;
  16 , 'name' , 'CPI definition' ;
  17 , 'name' , 'Nominal exchange rate' ;
  18 , 'name' , 'Definiion exchange rate growth' ;
  19 , 'name' , 'Real Wage' ;
  20 , 'name' , 'FOREIGN New Keynesian Phillips Curve (eq. 37)' ;
  21 , 'name' , 'FOREIGN Dynamic IS Curve (eq. 29)' ;
  22 , 'name' , 'FOREIGN Natural output (eq. 35)' ;
  23 , 'name' , 'FOREIGN Natural rate of interest (eq. 38)' ;
  24 , 'name' , 'FOREIGN Natural terms of trade (below eq. (35))' ;
  25 , 'name' , 'FOREIGN Terms of trade gap (middle p. 238)' ;
  26 , 'name' , 'FOREIGN Output' ;
  27 , 'name' , 'FOREIGN  Terms of trade, p. 238' ;
  28 , 'name' , 'FOREIGN CPI inflation (13)' ;
  29 , 'name' , 'FOREIGN Production function (eq. 32)' ;
  30 , 'name' , 'FOREIGN Definition real interest rate' ;
  31 , 'name' , 'FOREIGN TFP shock, top of p. 233' ;
  32 , 'name' , 'FOREIGN Preference shock, top of p. 227' ;
  33 , 'name' , 'FOREIGN Output deviation from steady state' ;
  34 , 'name' , 'FOREIGN Domestic price level, p. 229' ;
  35 , 'name' , 'FOREIGN CPI definition' ;
  36 , 'name' , 'FOREIGN Nominal exchange rate' ;
  37 , 'name' , 'FOREIGN Definition exchange rate growth' ;
  38 , 'name' , 'FOREIGN Real Wage' ;
  39 , 'name' , 'Taylor Rule' ;
  40 , 'name' , 'interest_f' ;
  41 , 'name' , 'Monetary policy shock, below eq. (39)' ;
  42 , 'name' , 'nu_f' ;
  43 , 'name' , 'World output growth shock' ;
  44 , 'name' , 'FOC wage, eq. (11)' ;
  45 , 'name' , '45' ;
  46 , 'name' , 'Net exports, eq. (31)' ;
  47 , 'name' , 'nx_f' ;
  48 , 'name' , 'Consumption determined by resource constraint, p. 236' ;
  49 , 'name' , '49' ;
  50 , 'name' , 'Tax Revenue' ;
  51 , 'name' , 'tr_f' ;
  52 , 'name' , '52' ;
  53 , 'name' , '53' ;
  54 , 'name' , '54' ;
  55 , 'name' , '55' ;
  56 , 'name' , 'Government spending' ;
  57 , 'name' , 'g_f' ;
  58 , 'name' , 'y_gap_d' ;
  59 , 'name' , 'pi_h_d' ;
  60 , 'name' , 'y_nat_d' ;
  61 , 'name' , 'r_nat_d' ;
  62 , 'name' , 's_nat_d' ;
  63 , 'name' , 'y_d' ;
  64 , 'name' , 's_gap_d' ;
  65 , 'name' , 's_d' ;
  66 , 'name' , 'pi_d' ;
  67 , 'name' , 'n_d' ;
  68 , 'name' , 'r_real_d' ;
  69 , 'name' , 'w_d' ;
  70 , 'name' , 'nx_d' ;
  71 , 'name' , 'c_d' ;
  72 , 'name' , 'yhat_d' ;
  73 , 'name' , 'p_h_d' ;
  74 , 'name' , 'p_d' ;
  75 , 'name' , 'wp_d' ;
};
M_.mapping.y_gap.eqidx = [1 2 6 7 58 ];
M_.mapping.pi_h.eqidx = [1 2 9 11 15 39 59 ];
M_.mapping.y_nat.eqidx = [3 5 7 60 ];
M_.mapping.r_nat.eqidx = [2 4 61 ];
M_.mapping.s_nat.eqidx = [5 8 62 ];
M_.mapping.y.eqidx = [7 10 14 48 63 ];
M_.mapping.s_gap.eqidx = [6 8 64 ];
M_.mapping.s.eqidx = [8 9 17 46 48 65 ];
M_.mapping.pi.eqidx = [9 16 66 ];
M_.mapping.n.eqidx = [10 44 50 67 ];
M_.mapping.r_real.eqidx = [11 68 ];
M_.mapping.w.eqidx = [19 69 ];
M_.mapping.nx.eqidx = [46 48 70 ];
M_.mapping.c.eqidx = [44 48 71 ];
M_.mapping.yhat.eqidx = [14 39 72 ];
M_.mapping.p_h.eqidx = [15 17 73 ];
M_.mapping.p.eqidx = [16 19 54 74 ];
M_.mapping.er.eqidx = [17 18 ];
M_.mapping.d_er.eqidx = [18 ];
M_.mapping.y_star.eqidx = [3 4 5 22 23 24 43 ];
M_.mapping.a.eqidx = [3 4 10 12 ];
M_.mapping.z.eqidx = [3 4 5 13 46 ];
M_.mapping.wp.eqidx = [19 44 50 75 ];
M_.mapping.y_gap_f.eqidx = [20 21 25 26 58 ];
M_.mapping.pi_h_f.eqidx = [20 21 28 30 34 40 59 ];
M_.mapping.y_nat_f.eqidx = [22 24 26 60 ];
M_.mapping.r_nat_f.eqidx = [21 23 61 ];
M_.mapping.s_nat_f.eqidx = [24 27 62 ];
M_.mapping.y_f.eqidx = [26 29 33 49 63 ];
M_.mapping.s_gap_f.eqidx = [25 27 64 ];
M_.mapping.s_f.eqidx = [27 28 36 47 49 65 ];
M_.mapping.pi_f.eqidx = [28 35 66 ];
M_.mapping.n_f.eqidx = [29 45 51 67 ];
M_.mapping.r_real_f.eqidx = [30 68 ];
M_.mapping.w_f.eqidx = [38 69 ];
M_.mapping.nx_f.eqidx = [47 49 70 ];
M_.mapping.c_f.eqidx = [45 49 71 ];
M_.mapping.yhat_f.eqidx = [33 40 72 ];
M_.mapping.p_h_f.eqidx = [34 36 73 ];
M_.mapping.p_f.eqidx = [35 38 52 53 55 74 ];
M_.mapping.er_f.eqidx = [36 37 ];
M_.mapping.d_er_f.eqidx = [37 ];
M_.mapping.a_f.eqidx = [22 23 29 31 ];
M_.mapping.z_f.eqidx = [22 23 24 32 47 ];
M_.mapping.wp_f.eqidx = [38 45 51 75 ];
M_.mapping.g.eqidx = [3 4 5 48 52 54 56 ];
M_.mapping.tr.eqidx = [50 52 ];
M_.mapping.g_f.eqidx = [22 23 24 49 53 55 57 ];
M_.mapping.tr_f.eqidx = [51 53 ];
M_.mapping.b.eqidx = [52 54 ];
M_.mapping.b_f.eqidx = [53 55 ];
M_.mapping.tau.eqidx = [3 4 44 50 ];
M_.mapping.tau_f.eqidx = [22 23 45 51 ];
M_.mapping.nu.eqidx = [39 41 ];
M_.mapping.nu_f.eqidx = [40 42 ];
M_.mapping.interest.eqidx = [2 11 39 54 ];
M_.mapping.interest_f.eqidx = [21 30 40 55 ];
M_.mapping.y_gap_d.eqidx = [58 ];
M_.mapping.pi_h_d.eqidx = [59 ];
M_.mapping.y_nat_d.eqidx = [60 ];
M_.mapping.r_nat_d.eqidx = [61 ];
M_.mapping.s_nat_d.eqidx = [62 ];
M_.mapping.y_d.eqidx = [63 ];
M_.mapping.s_gap_d.eqidx = [64 ];
M_.mapping.s_d.eqidx = [65 ];
M_.mapping.pi_d.eqidx = [66 ];
M_.mapping.n_d.eqidx = [67 ];
M_.mapping.r_real_d.eqidx = [68 ];
M_.mapping.w_d.eqidx = [69 ];
M_.mapping.nx_d.eqidx = [70 ];
M_.mapping.c_d.eqidx = [71 ];
M_.mapping.yhat_d.eqidx = [72 ];
M_.mapping.p_h_d.eqidx = [73 ];
M_.mapping.p_d.eqidx = [74 ];
M_.mapping.wp_d.eqidx = [75 ];
M_.mapping.eps_a.eqidx = [12 ];
M_.mapping.eps_z.eqidx = [13 ];
M_.mapping.eps_a_f.eqidx = [31 ];
M_.mapping.eps_z_f.eqidx = [32 ];
M_.mapping.eps_nu.eqidx = [41 ];
M_.mapping.eps_nu_f.eqidx = [42 ];
M_.mapping.eps_g.eqidx = [56 ];
M_.mapping.eps_g_f.eqidx = [57 ];
M_.mapping.eps_y_star.eqidx = [43 ];
M_.mapping.p_star.eqidx = [17 36 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [8 16 17 18 20 21 22 31 39 40 41 43 44 46 48 50 51 54 55 56 57 76 ];
M_.exo_names_orig_ord = [1:10];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(76, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(10, 1);
M_.params = NaN(41, 1);
M_.endo_trends = struct('deflator', cell(76, 1), 'log_deflator', cell(76, 1), 'growth_factor', cell(76, 1), 'log_growth_factor', cell(76, 1));
M_.NNZDerivatives = [270; 0; -1; ];
M_.static_tmp_nbr = [14; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(2) = 0.99;
betta = M_.params(2);
M_.params(1) = 1;
siggma = M_.params(1);
M_.params(3) = 6;
varphi = M_.params(3);
M_.params(4) = 0.25;
alppha = M_.params(4);
M_.params(5) = 6;
epsilon = M_.params(5);
M_.params(6) = 0.75;
theta = M_.params(6);
M_.params(7) = 0.6;
upsilon = M_.params(7);
M_.params(9) = 0.9;
rho_a = M_.params(9);
M_.params(11) = 0;
rho_y_star = M_.params(11);
M_.params(8) = 1;
eta = M_.params(8);
M_.params(12) = 0.5;
rho_z = M_.params(12);
M_.params(14) = M_.params(2);
betta_f = M_.params(14);
M_.params(13) = 0.5+M_.params(1);
siggma_f = M_.params(13);
M_.params(15) = 4+M_.params(3);
varphi_f = M_.params(15);
M_.params(16) = M_.params(4);
alppha_f = M_.params(16);
M_.params(17) = M_.params(5);
epsilon_f = M_.params(17);
M_.params(18) = M_.params(6);
theta_f = M_.params(18);
M_.params(19) = M_.params(7);
upsilon_f = M_.params(19);
M_.params(21) = M_.params(9);
rho_a_f = M_.params(21);
M_.params(22) = M_.params(11);
rho_y_star_f = M_.params(22);
M_.params(20) = M_.params(8);
eta_f = M_.params(20);
M_.params(23) = M_.params(12);
rho_z_f = M_.params(23);
M_.params(38) = 0.08629;
pop = M_.params(38);
M_.params(10) = 0.5;
rho_nu = M_.params(10);
M_.params(41) = 0.5;
rho_i = M_.params(41);
M_.params(39) = 1.5;
phi_pi = M_.params(39);
M_.params(40) = 0.125;
phi_y = M_.params(40);
M_.params(24) = 0.5;
rho_g = M_.params(24);
M_.params(25) = M_.params(24);
rho_g_f = M_.params(25);
M_.params(26) = 0.18;
WN_T_SS = M_.params(26);
M_.params(27) = M_.params(26)+0.02;
WN_T_SS_f = M_.params(27);
M_.params(28) = 0.2;
phi_b = M_.params(28);
M_.params(30) = 0.7;
phi_g = M_.params(30);
M_.params(29) = M_.params(28);
phi_b_f = M_.params(29);
M_.params(31) = M_.params(30);
phi_g_f = M_.params(31);
M_.params(32) = 0.4;
B_Y_SS = M_.params(32);
M_.params(34) = M_.params(32);
B_Y_SS_f = M_.params(34);
M_.params(33) = 0.4;
TR_Y_SS = M_.params(33);
M_.params(35) = M_.params(33);
TR_Y_SS_f = M_.params(35);
M_.params(36) = 0.4;
tau_ss = M_.params(36);
M_.params(37) = M_.params(36);
tau_ss_f = M_.params(37);
M_.params(36) = 0.15;
tau_ss = M_.params(36);
M_.params(37) = M_.params(36)+0.05;
tau_ss_f = M_.params(37);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(7, 7) = 0.000244140625;
M_.Sigma_e(8, 8) = 0.000244140625;
resid(1);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.nocorr = true;
options_.nofunctions = true;
options_.nomoments = true;
options_.order = 2;
var_list_ = {'b';'b_f';'r_real';'r_real_f';'g';'g_f';'tr';'tr_f';'tau';'tau_f';'c';'c_f';'y';'y_f';'wp';'wp_f';'n';'n_f'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'dissertation_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dissertation_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dissertation_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dissertation_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dissertation_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dissertation_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dissertation_results.mat'], 'oo_recursive_', '-append');
end
disp('Note: 2 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
