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
M_.exo_names = cell(7,1);
M_.exo_names_tex = cell(7,1);
M_.exo_names_long = cell(7,1);
M_.exo_names(1) = {'eps_nu'};
M_.exo_names_tex(1) = {'{\varepsilon^\nu}'};
M_.exo_names_long(1) = {'monetary policy shock'};
M_.exo_names(2) = {'eps_a'};
M_.exo_names_tex(2) = {'{\varepsilon^a}'};
M_.exo_names_long(2) = {'technology shock'};
M_.exo_names(3) = {'eps_z'};
M_.exo_names_tex(3) = {'{\varepsilon^z}'};
M_.exo_names_long(3) = {'preference shock'};
M_.exo_names(4) = {'eps_a_f'};
M_.exo_names_tex(4) = {'{\varepsilon^{f,a}}'};
M_.exo_names_long(4) = {'technology shock'};
M_.exo_names(5) = {'eps_z_f'};
M_.exo_names_tex(5) = {'{\varepsilon^{f,z}}'};
M_.exo_names_long(5) = {'preference shock'};
M_.exo_names(6) = {'eps_y_star'};
M_.exo_names_tex(6) = {'{\varepsilon^y}'};
M_.exo_names_long(6) = {'world output growth shock'};
M_.exo_names(7) = {'p_star'};
M_.exo_names_tex(7) = {'{p^*}'};
M_.exo_names_long(7) = {'world price level'};
M_.endo_names = cell(59,1);
M_.endo_names_tex = cell(59,1);
M_.endo_names_long = cell(59,1);
M_.endo_names(1) = {'y_gap'};
M_.endo_names_tex(1) = {'{\tilde{y}}'};
M_.endo_names_long(1) = {'output gap'};
M_.endo_names(2) = {'pi_h'};
M_.endo_names_tex(2) = {'{\pi_H}'};
M_.endo_names_long(2) = {'domestic inflation'};
M_.endo_names(3) = {'i'};
M_.endo_names_tex(3) = {'{i}'};
M_.endo_names_long(3) = {'nominal interest rate'};
M_.endo_names(4) = {'y_nat'};
M_.endo_names_tex(4) = {'{y^{n}}'};
M_.endo_names_long(4) = {'natural output'};
M_.endo_names(5) = {'r_nat'};
M_.endo_names_tex(5) = {'{r^{n}}'};
M_.endo_names_long(5) = {'natural interest rate'};
M_.endo_names(6) = {'s_nat'};
M_.endo_names_tex(6) = {'{s^{n}}'};
M_.endo_names_long(6) = {'natural terms of trade'};
M_.endo_names(7) = {'y'};
M_.endo_names_tex(7) = {'{y}'};
M_.endo_names_long(7) = {'output'};
M_.endo_names(8) = {'s_gap'};
M_.endo_names_tex(8) = {'{\tilde{s}}'};
M_.endo_names_long(8) = {'terms of trade gap'};
M_.endo_names(9) = {'s'};
M_.endo_names_tex(9) = {'{s}'};
M_.endo_names_long(9) = {'terms of trade'};
M_.endo_names(10) = {'pi'};
M_.endo_names_tex(10) = {'{\pi}'};
M_.endo_names_long(10) = {'CPI inflation'};
M_.endo_names(11) = {'n'};
M_.endo_names_tex(11) = {'{n}'};
M_.endo_names_long(11) = {'employment'};
M_.endo_names(12) = {'r_real'};
M_.endo_names_tex(12) = {'{r^r}'};
M_.endo_names_long(12) = {'real interest rate'};
M_.endo_names(13) = {'w'};
M_.endo_names_tex(13) = {'{w}'};
M_.endo_names_long(13) = {'nominal wage'};
M_.endo_names(14) = {'nx'};
M_.endo_names_tex(14) = {'{nx}'};
M_.endo_names_long(14) = {'net exports in terms of domestic outout'};
M_.endo_names(15) = {'c'};
M_.endo_names_tex(15) = {'{c}'};
M_.endo_names_long(15) = {'consumption'};
M_.endo_names(16) = {'yhat'};
M_.endo_names_tex(16) = {'{\hat y}'};
M_.endo_names_long(16) = {'output deviation from steady state'};
M_.endo_names(17) = {'p_h'};
M_.endo_names_tex(17) = {'{p_H}'};
M_.endo_names_long(17) = {'domestic price level'};
M_.endo_names(18) = {'p'};
M_.endo_names_tex(18) = {'{p}'};
M_.endo_names_long(18) = {'CPI'};
M_.endo_names(19) = {'er'};
M_.endo_names_tex(19) = {'{e}'};
M_.endo_names_long(19) = {'Nominal exchange rate'};
M_.endo_names(20) = {'d_er'};
M_.endo_names_tex(20) = {'{\Delta e}'};
M_.endo_names_long(20) = {'Nominal exchange rate growth'};
M_.endo_names(21) = {'y_star'};
M_.endo_names_tex(21) = {'{y^*}'};
M_.endo_names_long(21) = {'world output'};
M_.endo_names(22) = {'a'};
M_.endo_names_tex(22) = {'{a}'};
M_.endo_names_long(22) = {'AR(1) technology shock process'};
M_.endo_names(23) = {'nu'};
M_.endo_names_tex(23) = {'{\nu}'};
M_.endo_names_long(23) = {'AR(1) monetary policy shock process'};
M_.endo_names(24) = {'z'};
M_.endo_names_tex(24) = {'{z}'};
M_.endo_names_long(24) = {'AR(1) preference shock process'};
M_.endo_names(25) = {'r_real_ann'};
M_.endo_names_tex(25) = {'{r^{r,ann}}'};
M_.endo_names_long(25) = {'annualized real interest rate'};
M_.endo_names(26) = {'i_ann'};
M_.endo_names_tex(26) = {'{i^{ann}}'};
M_.endo_names_long(26) = {'annualized nominal interest rate'};
M_.endo_names(27) = {'r_nat_ann'};
M_.endo_names_tex(27) = {'{r^{nat,ann}}'};
M_.endo_names_long(27) = {'annualized natural interest rate'};
M_.endo_names(28) = {'pi_ann'};
M_.endo_names_tex(28) = {'{\pi^{ann}}'};
M_.endo_names_long(28) = {'annualized CPI inflation rate'};
M_.endo_names(29) = {'pi_h_ann'};
M_.endo_names_tex(29) = {'{\pi_H^{ann}}'};
M_.endo_names_long(29) = {'annualized domestic inflation rate'};
M_.endo_names(30) = {'y_gap_f'};
M_.endo_names_tex(30) = {'{\tilde{y^f}}'};
M_.endo_names_long(30) = {'output gap'};
M_.endo_names(31) = {'pi_h_f'};
M_.endo_names_tex(31) = {'{\pi^f_H}'};
M_.endo_names_long(31) = {'domestic inflation'};
M_.endo_names(32) = {'y_nat_f'};
M_.endo_names_tex(32) = {'{{y^f}^{n}}'};
M_.endo_names_long(32) = {'natural output'};
M_.endo_names(33) = {'r_nat_f'};
M_.endo_names_tex(33) = {'{{r^f}^{n}}'};
M_.endo_names_long(33) = {'natural interest rate'};
M_.endo_names(34) = {'s_nat_f'};
M_.endo_names_tex(34) = {'{{s^f}^{n}}'};
M_.endo_names_long(34) = {'natural terms of trade'};
M_.endo_names(35) = {'y_f'};
M_.endo_names_tex(35) = {'{y^f}'};
M_.endo_names_long(35) = {'output'};
M_.endo_names(36) = {'s_gap_f'};
M_.endo_names_tex(36) = {'{\tilde{s^f}}'};
M_.endo_names_long(36) = {'terms of trade gap'};
M_.endo_names(37) = {'s_f'};
M_.endo_names_tex(37) = {'{s^f}'};
M_.endo_names_long(37) = {'terms of trade'};
M_.endo_names(38) = {'pi_f'};
M_.endo_names_tex(38) = {'{\pi^f}'};
M_.endo_names_long(38) = {'CPI inflation'};
M_.endo_names(39) = {'n_f'};
M_.endo_names_tex(39) = {'{n^f}'};
M_.endo_names_long(39) = {'employment'};
M_.endo_names(40) = {'r_real_f'};
M_.endo_names_tex(40) = {'{r^r}'};
M_.endo_names_long(40) = {'real interest rate'};
M_.endo_names(41) = {'w_f'};
M_.endo_names_tex(41) = {'{w^f}'};
M_.endo_names_long(41) = {'nominal wage'};
M_.endo_names(42) = {'nx_f'};
M_.endo_names_tex(42) = {'{nx^f}'};
M_.endo_names_long(42) = {'net exports in terms of domestic outout'};
M_.endo_names(43) = {'c_f'};
M_.endo_names_tex(43) = {'{c^f}'};
M_.endo_names_long(43) = {'consumption'};
M_.endo_names(44) = {'yhat_f'};
M_.endo_names_tex(44) = {'{\hat y^f}'};
M_.endo_names_long(44) = {'output deviation from steady state'};
M_.endo_names(45) = {'p_h_f'};
M_.endo_names_tex(45) = {'{p^f_H}'};
M_.endo_names_long(45) = {'domestic price level'};
M_.endo_names(46) = {'p_f'};
M_.endo_names_tex(46) = {'{p^f}'};
M_.endo_names_long(46) = {'CPI'};
M_.endo_names(47) = {'er_f'};
M_.endo_names_tex(47) = {'{e^f}'};
M_.endo_names_long(47) = {'Nominal exchange rate'};
M_.endo_names(48) = {'d_er_f'};
M_.endo_names_tex(48) = {'{\Delta e^f}'};
M_.endo_names_long(48) = {'Nominal exchange rate growth'};
M_.endo_names(49) = {'a_f'};
M_.endo_names_tex(49) = {'{a^f}'};
M_.endo_names_long(49) = {'AR(1) technology shock process'};
M_.endo_names(50) = {'z_f'};
M_.endo_names_tex(50) = {'{z^f}'};
M_.endo_names_long(50) = {'AR(1) preference shock process'};
M_.endo_names(51) = {'r_real_ann_f'};
M_.endo_names_tex(51) = {'{r^{f,r,ann}}'};
M_.endo_names_long(51) = {'annualized real interest rate'};
M_.endo_names(52) = {'i_ann_f'};
M_.endo_names_tex(52) = {'{i^{f,ann}}'};
M_.endo_names_long(52) = {'annualized nominal interest rate'};
M_.endo_names(53) = {'r_nat_ann_f'};
M_.endo_names_tex(53) = {'{r^{f,nat,ann}}'};
M_.endo_names_long(53) = {'annualized natural interest rate'};
M_.endo_names(54) = {'pi_ann_f'};
M_.endo_names_tex(54) = {'{\pi^{f,ann}}'};
M_.endo_names_long(54) = {'annualized CPI inflation rate'};
M_.endo_names(55) = {'pi_h_ann_f'};
M_.endo_names_tex(55) = {'{\pi_H^{f,ann}}'};
M_.endo_names_long(55) = {'annualized domestic inflation rate'};
M_.endo_names(56) = {'i_f'};
M_.endo_names_tex(56) = {'i\_f'};
M_.endo_names_long(56) = {'i_f'};
M_.endo_names(57) = {'p_avg'};
M_.endo_names_tex(57) = {'p^{tot}'};
M_.endo_names_long(57) = {'UK Average Domestic Inflation (Home + Foreign)'};
M_.endo_names(58) = {'yhat_avg'};
M_.endo_names_tex(58) = {'\hat{y}^{tot}'};
M_.endo_names_long(58) = {'UK Average Output Gap (Home + Foreign)'};
M_.endo_names(59) = {'AUX_ENDO_LAG_20_1'};
M_.endo_names_tex(59) = {'AUX\_ENDO\_LAG\_20\_1'};
M_.endo_names_long(59) = {'AUX_ENDO_LAG_20_1'};
M_.endo_partitions = struct();
M_.param_names = cell(25,1);
M_.param_names_tex = cell(25,1);
M_.param_names_long = cell(25,1);
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
M_.param_names(13) = {'phi_pi'};
M_.param_names_tex(13) = {'{\phi_{\pi}}'};
M_.param_names_long(13) = {'inflation feedback Taylor Rule'};
M_.param_names(14) = {'phi_y'};
M_.param_names_tex(14) = {'{\phi_{y}}'};
M_.param_names_long(14) = {'output feedback Taylor Rule'};
M_.param_names(15) = {'siggma_f'};
M_.param_names_tex(15) = {'{\sigma}'};
M_.param_names_long(15) = {'inverse EIS'};
M_.param_names(16) = {'betta_f'};
M_.param_names_tex(16) = {'{\beta}'};
M_.param_names_long(16) = {'discount factor'};
M_.param_names(17) = {'varphi_f'};
M_.param_names_tex(17) = {'{\varphi}'};
M_.param_names_long(17) = {'inverse Frisch elasticity'};
M_.param_names(18) = {'alppha_f'};
M_.param_names_tex(18) = {'{\alpha}'};
M_.param_names_long(18) = {'capital share'};
M_.param_names(19) = {'epsilon_f'};
M_.param_names_tex(19) = {'{\epsilon}'};
M_.param_names_long(19) = {'demand elasticity'};
M_.param_names(20) = {'theta_f'};
M_.param_names_tex(20) = {'{\theta}'};
M_.param_names_long(20) = {'Calvo parameter'};
M_.param_names(21) = {'upsilon_f'};
M_.param_names_tex(21) = {'{\upsilon}'};
M_.param_names_long(21) = {'openness parameter'};
M_.param_names(22) = {'eta_f'};
M_.param_names_tex(22) = {'{\eta}'};
M_.param_names_long(22) = {'substitutability foreign/domestic goods'};
M_.param_names(23) = {'rho_a_f'};
M_.param_names_tex(23) = {'{\rho_a}'};
M_.param_names_long(23) = {'autocorrelation technology shock'};
M_.param_names(24) = {'rho_y_star_f'};
M_.param_names_tex(24) = {'{\rho_{y^*}}'};
M_.param_names_long(24) = {'autocorrelation world output growth shock'};
M_.param_names(25) = {'rho_z_f'};
M_.param_names_tex(25) = {'{\rho_{z}}'};
M_.param_names_long(25) = {'autocorrelation preference shock'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 7;
M_.endo_nbr = 59;
M_.param_nbr = 25;
M_.orig_endo_nbr = 58;
M_.aux_vars(1).endo_index = 59;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 21;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'y_star(-1)';
options_.varobs = cell(1, 1);
options_.varobs(1)  = {'c'};
options_.varobs_id = [ 15  ];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(7, 7);
M_.Correlation_matrix = eye(7, 7);
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
M_.orig_eq_nbr = 58;
M_.eq_nbr = 59;
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
 0 18 77;
 0 19 78;
 1 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 2 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 0 30 0;
 0 31 0;
 0 32 0;
 0 33 0;
 3 34 0;
 4 35 0;
 5 36 0;
 0 37 0;
 6 38 79;
 7 39 0;
 8 40 0;
 9 41 0;
 0 42 0;
 0 43 0;
 0 44 0;
 0 45 0;
 0 46 0;
 0 47 80;
 0 48 81;
 0 49 0;
 0 50 0;
 0 51 0;
 0 52 0;
 0 53 0;
 10 54 0;
 0 55 0;
 0 56 0;
 0 57 0;
 0 58 0;
 0 59 0;
 0 60 0;
 0 61 0;
 11 62 0;
 12 63 0;
 13 64 0;
 0 65 0;
 14 66 0;
 15 67 0;
 0 68 0;
 0 69 0;
 0 70 0;
 0 71 0;
 0 72 0;
 16 73 0;
 0 74 0;
 0 75 0;
 17 76 0;]';
M_.nstatic = 38;
M_.nfwrd   = 4;
M_.npred   = 16;
M_.nboth   = 1;
M_.nsfwrd   = 5;
M_.nspred   = 17;
M_.ndynamic   = 21;
M_.dynamic_tmp_nbr = [12; 0; 0; 0; ];
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
  14 , 'name' , 'FOC wage, eq. (11)' ;
  15 , 'name' , 'net exports, eq. (31)' ;
  16 , 'name' , 'consumption determined by resource constraint, p. 236' ;
  17 , 'name' , 'Annualized nominal interest rate' ;
  18 , 'name' , 'Annualized real interest rate' ;
  19 , 'name' , ' Annualized natural interest rate' ;
  20 , 'name' , 'Annualized CPI inflation' ;
  21 , 'name' , 'Annualized domestic inflation' ;
  22 , 'name' , 'Output deviation from steady state' ;
  23 , 'name' , 'Domestic price level, p. 229' ;
  24 , 'name' , 'CPI definition' ;
  25 , 'name' , 'Nominal exchange rate' ;
  26 , 'name' , 'Definiion exchange rate growth' ;
  27 , 'name' , 'FOREIGN New Keynesian Phillips Curve (eq. 37)' ;
  28 , 'name' , 'FOREIGN Dynamic IS Curve (eq. 29)' ;
  29 , 'name' , 'FOREIGN Natural output (eq. 35)' ;
  30 , 'name' , 'FOREIGN Natural rate of interest (eq. 38)' ;
  31 , 'name' , 'FOREIGN Natural terms of trade (below eq. (35))' ;
  32 , 'name' , 'FOREIGN Terms of trade gap (middle p. 238)' ;
  33 , 'name' , 'FOREIGN Output' ;
  34 , 'name' , 'FOREIGN  Terms of trade, p. 238' ;
  35 , 'name' , 'FOREIGN CPI inflation (13)' ;
  36 , 'name' , 'FOREIGN Production function (eq. 32)' ;
  37 , 'name' , 'FOREIGN Definition real interest rate' ;
  38 , 'name' , 'FOREIGN TFP shock, top of p. 233' ;
  39 , 'name' , 'FOREIGN Preference shock, top of p. 227' ;
  40 , 'name' , 'FOREIGN FOC wage, eq. (11)' ;
  41 , 'name' , 'FOREIGN net exports, eq. (31)' ;
  42 , 'name' , 'FOREIGN consumption determined by resource constraint, p. 236' ;
  43 , 'name' , 'FOREIGN Annualized nominal interest rate' ;
  44 , 'name' , 'FOREIGN Annualized real interest rate' ;
  45 , 'name' , 'FOREIGN  Annualized natural interest rate' ;
  46 , 'name' , 'FOREIGN Annualized CPI inflation' ;
  47 , 'name' , 'FOREIGN Annualized domestic inflation' ;
  48 , 'name' , 'FOREIGN Output deviation from steady state' ;
  49 , 'name' , 'FOREIGN Domestic price level, p. 229' ;
  50 , 'name' , 'FOREIGN CPI definition' ;
  51 , 'name' , 'FOREIGN Nominal exchange rate' ;
  52 , 'name' , 'FOREIGN Definiion exchange rate growth' ;
  53 , 'name' , 'i' ;
  54 , 'name' , 'i_f' ;
  55 , 'name' , 'Monetary policy shock, below eq. (39)' ;
  56 , 'name' , '56' ;
  57 , 'name' , 'UK Average Domestic Inflation' ;
  58 , 'name' , 'UK Average Output Gap' ;
};
M_.mapping.y_gap.eqidx = [1 2 6 7 ];
M_.mapping.pi_h.eqidx = [1 2 9 11 21 23 53 57 ];
M_.mapping.i.eqidx = [2 11 17 53 ];
M_.mapping.y_nat.eqidx = [3 5 7 ];
M_.mapping.r_nat.eqidx = [2 4 19 ];
M_.mapping.s_nat.eqidx = [5 8 ];
M_.mapping.y.eqidx = [7 10 16 22 ];
M_.mapping.s_gap.eqidx = [6 8 ];
M_.mapping.s.eqidx = [8 9 15 16 25 ];
M_.mapping.pi.eqidx = [9 20 24 ];
M_.mapping.n.eqidx = [10 14 ];
M_.mapping.r_real.eqidx = [11 18 ];
M_.mapping.w.eqidx = [14 ];
M_.mapping.nx.eqidx = [15 16 ];
M_.mapping.c.eqidx = [14 16 ];
M_.mapping.yhat.eqidx = [22 53 58 ];
M_.mapping.p_h.eqidx = [23 25 ];
M_.mapping.p.eqidx = [14 24 ];
M_.mapping.er.eqidx = [25 26 ];
M_.mapping.d_er.eqidx = [26 ];
M_.mapping.y_star.eqidx = [3 4 5 29 30 31 56 ];
M_.mapping.a.eqidx = [3 4 10 12 ];
M_.mapping.nu.eqidx = [53 54 55 ];
M_.mapping.z.eqidx = [3 4 5 13 15 ];
M_.mapping.r_real_ann.eqidx = [18 ];
M_.mapping.i_ann.eqidx = [17 ];
M_.mapping.r_nat_ann.eqidx = [19 ];
M_.mapping.pi_ann.eqidx = [20 ];
M_.mapping.pi_h_ann.eqidx = [21 ];
M_.mapping.y_gap_f.eqidx = [27 28 32 33 ];
M_.mapping.pi_h_f.eqidx = [27 28 35 37 47 49 54 57 ];
M_.mapping.y_nat_f.eqidx = [29 31 33 ];
M_.mapping.r_nat_f.eqidx = [28 30 45 ];
M_.mapping.s_nat_f.eqidx = [31 34 ];
M_.mapping.y_f.eqidx = [33 36 42 48 ];
M_.mapping.s_gap_f.eqidx = [32 34 ];
M_.mapping.s_f.eqidx = [34 35 41 42 51 ];
M_.mapping.pi_f.eqidx = [35 46 50 ];
M_.mapping.n_f.eqidx = [36 40 ];
M_.mapping.r_real_f.eqidx = [37 44 ];
M_.mapping.w_f.eqidx = [40 ];
M_.mapping.nx_f.eqidx = [41 42 ];
M_.mapping.c_f.eqidx = [40 42 ];
M_.mapping.yhat_f.eqidx = [48 54 58 ];
M_.mapping.p_h_f.eqidx = [49 51 ];
M_.mapping.p_f.eqidx = [40 50 ];
M_.mapping.er_f.eqidx = [51 52 ];
M_.mapping.d_er_f.eqidx = [52 ];
M_.mapping.a_f.eqidx = [29 30 36 38 ];
M_.mapping.z_f.eqidx = [29 30 31 39 41 ];
M_.mapping.r_real_ann_f.eqidx = [44 ];
M_.mapping.i_ann_f.eqidx = [43 ];
M_.mapping.r_nat_ann_f.eqidx = [45 ];
M_.mapping.pi_ann_f.eqidx = [46 ];
M_.mapping.pi_h_ann_f.eqidx = [47 ];
M_.mapping.i_f.eqidx = [28 37 43 54 ];
M_.mapping.p_avg.eqidx = [57 ];
M_.mapping.yhat_avg.eqidx = [58 ];
M_.mapping.eps_nu.eqidx = [55 ];
M_.mapping.eps_a.eqidx = [12 ];
M_.mapping.eps_z.eqidx = [13 ];
M_.mapping.eps_a_f.eqidx = [38 ];
M_.mapping.eps_z_f.eqidx = [39 ];
M_.mapping.eps_y_star.eqidx = [56 ];
M_.mapping.p_star.eqidx = [51 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [3 9 17 18 19 21 22 23 24 37 45 46 47 49 50 56 59 ];
M_.exo_names_orig_ord = [1:7];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(59, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(7, 1);
M_.params = NaN(25, 1);
M_.endo_trends = struct('deflator', cell(59, 1), 'log_deflator', cell(59, 1), 'growth_factor', cell(59, 1), 'log_growth_factor', cell(59, 1));
M_.NNZDerivatives = [186; 0; -1; ];
M_.static_tmp_nbr = [12; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(2) = 0.99;
betta = M_.params(2);
M_.params(1) = 1;
siggma = M_.params(1);
M_.params(3) = 5;
varphi = M_.params(3);
M_.params(4) = 0.25;
alppha = M_.params(4);
M_.params(5) = 6;
epsilon = M_.params(5);
M_.params(6) = 0.75;
theta = M_.params(6);
M_.params(7) = 0.6;
upsilon = M_.params(7);
M_.params(10) = 0.9;
rho_nu = M_.params(10);
M_.params(9) = 0.9;
rho_a = M_.params(9);
M_.params(11) = 0.9;
rho_y_star = M_.params(11);
M_.params(13) = 1.5;
phi_pi = M_.params(13);
M_.params(14) = 0.125;
phi_y = M_.params(14);
M_.params(8) = 1;
eta = M_.params(8);
M_.params(16) = 0.99;
betta_f = M_.params(16);
M_.params(15) = 1;
siggma_f = M_.params(15);
M_.params(17) = 4;
varphi_f = M_.params(17);
M_.params(18) = 0.3333333333333333;
alppha_f = M_.params(18);
M_.params(19) = 11;
epsilon_f = M_.params(19);
M_.params(20) = 0.5;
theta_f = M_.params(20);
M_.params(21) = 0.6;
upsilon_f = M_.params(21);
M_.params(23) = 0.9;
rho_a_f = M_.params(23);
M_.params(24) = 0;
rho_y_star_f = M_.params(24);
M_.params(22) = 1;
eta_f = M_.params(22);
M_.params(25) = 0.5;
rho_z_f = M_.params(25);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.0625;
estim_params_.var_exo = zeros(0, 10);
estim_params_.var_endo = zeros(0, 10);
estim_params_.corrx = zeros(0, 11);
estim_params_.corrn = zeros(0, 11);
estim_params_.param_vals = zeros(0, 10);
estim_params_.param_vals = [estim_params_.param_vals; 12, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
options_.diffuse_filter = true;
options_.mh_nblck = 1;
options_.mh_replic = 20000;
options_.smoother = true;
options_.datafile = 'scot_consumption';
options_.order = 1;
options_.steadystate.nocheck = true;
var_list_ = {};
oo_recursive_=dynare_estimation(var_list_);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 20;
options_.order = 1;
var_list_ = {'c';'r_real';'r_real_f';'yhat';'yhat_f';'pi_h';'pi_h_f';'s';'s_f'};
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
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
