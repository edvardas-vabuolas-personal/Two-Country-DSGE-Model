% monetary_union: 0 - Standard NK Phillips Curves and Dynamic IS curves, 2 interest rates; 1 - Price passthrough and unified monetary authority
@#define monetary_union = 1

@#define scenario = 3

% no_of_govs: 1 - One government budget constraint; 2 - Two government budget constraints
% tax_mode: 0 - Lump-Sum; 1 - Distortionary taxes (labour tax)

@#if scenario == 1
    @#define no_of_govs = 2
    @#define tax_mode = 0
@#else
    @#if scenario == 2
        @#define no_of_govs = 1
        @#define tax_mode = 0
    @#else
        @#if scenario == 3
            @#define no_of_govs = 2
            @#define tax_mode = 1
        @#else
            @#if scenario == 4
                @#define no_of_govs = 1
                @#define tax_mode = 1
            @#endif
        @#endif
    @#endif
@#endif


% mcmc: 0 - do not estimate (use pre-defined parameters); 1 - estimate (use calibrated parameters)
@#define mcmc = 0
% shock_type: 1 - monetary; 2 - fiscal
@#define shock_type = 2

@#define enable_forloop = 0

var 

% Home country
y_gap       ${\tilde{y}_t}$   (long_name='Output gap')
pi_h        ${\pi_{H,t}}$       (long_name='domestic inflation')
y_nat       ${y^{n}}$       (long_name='natural output')
r_nat       ${r^{n}}$       (long_name='natural interest rate')
s_nat       ${s^{n}}$       (long_name='natural terms of trade')
y           ${y}$           (long_name='output')
s_gap       ${\tilde{s}}$   (long_name='terms of trade gap')
s           ${s}$           (long_name='terms of trade')
pi          ${\pi}$         (long_name='CPI inflation')
n           ${n}$           (long_name='employment')
r_real      ${r^r}$         (long_name='real interest rate')   
w           ${w}$           (long_name='nominal wage')   
nx          ${nx}$          (long_name='net exports in terms of domestic outout')   
c           ${c}$           (long_name='consumption')   
yhat        ${\hat y}$      (long_name='output deviation from steady state')
p_h         ${p_H}$         (long_name='domestic price level')
p           ${p}$           (long_name='CPI')
er          ${e}$           (long_name='Nominal exchange rate')
d_er        ${\Delta e}$    (long_name='Nominal exchange rate growth')
y_star      ${y^*}$         (long_name='world output')
a           ${a}$           (long_name='AR(1) technology shock process')
z           ${z}$           (long_name='AR(1) preference shock process')
wp          ${wp}$           (long_name='Real Wage')

% Foreign Country
y_gap_f       ${\tilde{y^f}}$   (long_name='output gap')
pi_h_f        ${\pi^f_H}$       (long_name='domestic inflation')
y_nat_f       ${{y^f}^{n}}$       (long_name='natural output')
r_nat_f       ${{r^f}^{n}}$       (long_name='natural interest rate')
s_nat_f       ${{s^f}^{n}}$       (long_name='natural terms of trade')
y_f           ${y^f}$           (long_name='output')
s_gap_f       ${\tilde{s^f}}$   (long_name='terms of trade gap')
s_f           ${s^f}$           (long_name='terms of trade')
pi_f          ${\pi^f}$         (long_name='CPI inflation')
n_f           ${n^f}$           (long_name='employment')
r_real_f      ${r^r}$         (long_name='real interest rate')   
w_f           ${w^f}$           (long_name='nominal wage')   
nx_f          ${nx^f}$          (long_name='net exports in terms of domestic outout')   
c_f           ${c^f}$           (long_name='consumption')   
yhat_f        ${\hat y^f}$      (long_name='output deviation from steady state')
p_h_f         ${p^f_H}$         (long_name='domestic price level')
p_f           ${p^f}$           (long_name='CPI')
er_f          ${e^f}$           (long_name='Nominal exchange rate')
d_er_f        ${\Delta e^f}$    (long_name='Nominal exchange rate growth')
a_f           ${a^f}$           (long_name='AR(1) technology shock process')
z_f           ${z^f}$           (long_name='AR(1) preference shock process')
wp_f          ${wp^f}$           (long_name='Real Wage')


% Fiscal Policy
@#if no_of_govs == 2
    g           ${g}$           (long_name='Government Spending')
    tr           ${TR}$           (long_name='Tax Revenue')    
    g_f           ${g^f}$           (long_name='Government Spending')
    tr_f           ${TR^f}$           (long_name='Tax Revenue')  
    b
    b_f
    debt
    debt_f
    @#if tax_mode == 1
        tau           ${\tau_l}$           (long_name='Labour Tax (Scotland)')
        tau_f           ${\tau^f_l}$           (long_name='Labour Tax (rUK)')
    @#endif    
@#else
    g_uk           ${g}$           (long_name='Government Spending (UK)')
    tr_uk           ${TR}$           (long_name='Tax Revenue (UK)')
    b_uk
    debt_uk
    @#if tax_mode == 1
        tau_uk           ${\tau^{uk}}$           (long_name='Labour Tax (UK)')
    @#endif
@#endif

% Monetary Policy
@#if monetary_union == 1
    nu_uk          ${\nu}$         (long_name='AR(1) monetary policy shock process')
    interest_uk    ${i^f}$           (long_name='Interest Rate (UK)')
@#else
    nu          ${\nu}$         (long_name='AR(1) monetary policy shock process')    
    nu_f          ${\nu}$         (long_name='AR(1) monetary policy shock process')    
    interest    ${i}$           (long_name='Interest Rate (Scotland)')
    interest_f    ${i^f}$           (long_name='Interest Rate (rUK)')
@#endif

% Estimation
@#if mcmc == 1
    y_obs           ${y^{OBS}}$           (long_name='Observed Output')
    c_obs           ${c^{OBS}}$           (long_name='Observed Consumption')
    w_obs           ${w^{OBS}}$           (long_name='Observed Wage')
    pi_obs           ${\pi^{OBS}}$           (long_name='Observed Inflation')
    y_obs_ruk           ${y^{OBS, ruk}}$           (long_name='Observed Output (RUK)')
    c_obs_ruk           ${c^{OBS, ruk}}$           (long_name='Observed Consumption (RUK)')
    w_obs_ruk          ${w^{OBS, ruk}}$           (long_name='Observed Wage (RUK)')
    pi_obs_ruk         ${\pi^{OBS, ruk}}$           (long_name='Observed Inflation (RUK)')

    /* i_obs          ${i^{OBS, uk}}$           (long_name='Observed Interest Rate (UK)') */
@#endif

;

predetermined_variables b b_f debt;

varexo 

eps_a        ${\varepsilon^a}$       (long_name='Technology shock')
eps_z        ${\varepsilon^z}$       (long_name='Preference shock')
eps_a_f        ${\varepsilon^{f,a}}$       (long_name='technology shock')
eps_z_f        ${\varepsilon^{f,z}}$       (long_name='preference shock')

% Monetary Policy
@#if monetary_union == 1
    eps_nu_uk       ${\varepsilon^\nu}$     (long_name='Monetary policy shock')
@#else
    eps_nu       ${\varepsilon^\nu}$     (long_name='Monetary policy shock')
    eps_nu_f       ${\varepsilon^{\nu, f}}$     (long_name='Monetary policy shock')
@#endif

% Fiscal Policy

@#if no_of_govs == 2
    eps_g        ${\varepsilon^{\tau}}$       (long_name='Government Spending shock (Scotland)')
    eps_g_f        ${\varepsilon^{\tau,f}}$       (long_name='Government Spending shock (rUK)')
@#else
    eps_g_uk        ${\varepsilon^{\tau}}$       (long_name='Government Spending shock (UK)')
@#endif

% World
eps_y_star   ${\varepsilon^y}$       (long_name='world output growth shock')
p_star       ${p^*}$                 (long_name='world price level')

% Measurement Errors
@#if mcmc == 1
    y_obs_me       ${\varepsilon_y^{ME}}$     (long_name='Observed Output ME')
    c_obs_me       ${\varepsilon_c^{ME}}$     (long_name='Observed Consumption ME')
    w_obs_me       ${\varepsilon_w^{ME}}$     (long_name='Observed Wage ME')
    pi_obs_me       ${\varepsilon_{\pi}^{ME}}$     (long_name='Observed Inflation ME')
    y_obs_ruk_me       ${\varepsilon_y^{ME, RUK}}$     (long_name='Observed Output ME (RUK)')
    c_obs_ruk_me       ${\varepsilon_c^{ME, RUK}}$     (long_name='Observed Consumption ME (RUK)')
    w_obs_ruk_me       ${\varepsilon_w^{ME, RUK}}$     (long_name='Observed Wage ME (RUK)')
    pi_obs_ruk_me       ${\varepsilon_{\pi}^{ME}}$     (long_name='Observed Inflation ME (RUK)')
    
    /* i_obs_me       ${\varepsilon_i^{ME}}$     (long_name='Observed Interest Rate ME (UK)') */
@#endif

;

parameters 
% Home country
siggma          ${\sigma}$      (long_name='inverse EIS')
betta           ${\beta}$       (long_name='discount factor')
varphi          ${\varphi}$     (long_name='inverse Frisch elasticity')
alppha          ${\alpha}$      (long_name='capital share')
epsilon         ${\epsilon}$    (long_name='demand elasticity')
theta           ${\theta}$      (long_name='Calvo parameter')
upsilon         ${\upsilon}$    (long_name='openness parameter')
eta             ${\eta}$        (long_name='substitutability foreign/domestic goods')    
rho_a           ${\rho_a}$      (long_name='autocorrelation technology shock')
rho_nu          ${\rho_{\nu}}$  (long_name='autocorrelation monetary policy shock')
rho_y_star      ${\rho_{y^*}}$  (long_name='autocorrelation world output growth shock')
rho_z           ${\rho_{z}}$    (long_name='autocorrelation preference shock')

% Foreign country
siggma_f          ${\sigma}$      (long_name='inverse EIS')
betta_f           ${\beta}$       (long_name='discount factor')
varphi_f          ${\varphi}$     (long_name='inverse Frisch elasticity')
alppha_f          ${\alpha}$      (long_name='capital share')
epsilon_f         ${\epsilon}$    (long_name='demand elasticity')
theta_f           ${\theta}$      (long_name='Calvo parameter')
upsilon_f         ${\upsilon}$    (long_name='openness parameter')
eta_f             ${\eta}$        (long_name='substitutability foreign/domestic goods')    
rho_a_f           ${\rho_a}$      (long_name='autocorrelation technology shock')
rho_nu_f
rho_y_star_f      ${\rho_{y^*}}$  (long_name='autocorrelation world output growth shock')
rho_z_f           ${\rho_{z}}$    (long_name='autocorrelation preference shock')

% Fiscal Policy
@#if no_of_govs == 2
    rho_g           ${\rho_g}$    (long_name='AR(1) coefficient for Government spending (Scotland)')
    rho_g_f           ${\rho_g}$    (long_name='AR(1) coefficient for Government spending (rUK)')
    WN_T_SS          ${\frac{WN}{T}}$    (long_name='Pre-tax income/tax revenue ratio')
    WN_T_SS_f          ${\frac{W^fN^f}{T^f}}$    (long_name='Pre-tax income/tax revenue ratio')
    phi_b
    phi_b_f
    phi_g
    phi_g_f
    B_Y_SS
    TR_Y_SS
    B_Y_SS_f
    TR_Y_SS_f
    tau_ss           ${\tilde{\tau}}$    (long_name='Average labour tax rate (Scotland)')
    tau_ss_f           ${\tilde{\tau}}^f$    (long_name='Average labour tax rate (rUK)')
    @#if tax_mode == 1
        tau_ss           ${\tilde{\tau}}$    (long_name='Average labour tax rate (Scotland)')
        tau_ss_f           ${\tilde{\tau}}^f$    (long_name='Average labour tax rate (rUK)')
    @#endif
@#else
    rho_g_uk           ${\rho_g}$    (long_name='AR(1) coefficient for Government spending (UK)')
    WN_T_SS          ${\frac{WN}{T}}$    (long_name='Pre-tax income/tax revenue ratio')
    WN_T_SS_f          ${\frac{W^fN^f}{T^f}}$    (long_name='Pre-tax income/tax revenue ratio')
    phi_b_uk
    phi_g_uk
    B_Y_SS_UK
    TR_Y_SS_UK
    @#if tax_mode == 1
        tau_ss_uk           ${\tilde{\tau}}$    (long_name='Average labour tax rate (UK)')
    @#endif
@#endif

% Shared parameters
pop           ${pop}$    (long_name='Scottish population share in the UK')
phi_pi          ${\phi_{\pi}}$  (long_name='inflation feedback Taylor Rule')
phi_y           ${\phi_{y}}$    (long_name='output feedback Taylor Rule')
rho_i           ${\rho_i}$    (long_name='AR(1) coefficient for Taylor Rule')
phi_pi_f          ${\phi_{\pi}}$  (long_name='inflation feedback Taylor Rule')
phi_y_f           ${\phi_{y}}$    (long_name='output feedback Taylor Rule')
rho_i_f           ${\rho_i}$    (long_name='AR(1) coefficient for Taylor Rule')

% Monetary Policy (unified monetary authority)
@#if monetary_union == 1
    % Non-policy block parameters
    chi_pi           ${\chi_{\pi}}$    (long_name='rUK inflation impact on Scotland inflation parameter')
    chi_y           ${\rho_i}$    (long_name='rUK ouput gap impact on Scotland output gap parameter')
    chi_pi_ruk           ${\rho_i}$    (long_name='Scotland inflation impact on rUK inflation parameter')
    chi_y_ruk           ${\rho_i}$    (long_name='Scotland output gap impact on rUK output gap parameter')
@#endif
;

%----------------------------------------------------------------
% Parametrization
%----------------------------------------------------------------

% Home country

betta   = 0.99;
siggma  = 1;
varphi  = 6;
alppha  = 1/4;
epsilon = 6;
theta   = 3/4;
upsilon = 0;
rho_a   = 0.9;
rho_y_star  = 0;
eta     = 1;
rho_z   = 0.5;

% Foreign country
betta_f   = betta;
siggma_f  = siggma;
varphi_f  = varphi;
alppha_f  = alppha;
epsilon_f = epsilon;
theta_f   = theta;
upsilon_f = upsilon;
rho_a_f   = rho_a;
rho_y_star_f  = rho_y_star;
eta_f     = eta;
rho_z_f   = rho_z;

pop = 0.08629;

% Monetary Policy
rho_nu  = 0.3;
rho_i = 0.9;
phi_pi  = 1.5;
phi_y   = 0.5/4;

rho_nu_f  = rho_nu;
rho_i_f = rho_i;
phi_pi_f  = phi_pi;
phi_y_f   = phi_y;

@#if monetary_union == 1
    % Non-policy block parameters
    chi_pi = pop;
    chi_y = pop;
    chi_pi_ruk = (1-pop);
    chi_y_ruk = (1-pop);
@#endif

% Fiscal Policy
WN_T_SS = 0.2;
WN_T_SS_f = WN_T_SS;

@#if no_of_govs == 2
    rho_g = 0.966;
    rho_g_f = rho_g;

    phi_b = 0.25;
    phi_g = 0.09;
    phi_b_f = phi_b;
    phi_g_f = phi_g;

    B_Y_SS = 3.4;
    B_Y_SS_f = B_Y_SS;

    TR_Y_SS = 0.4;
    TR_Y_SS_f = TR_Y_SS;

    tau_ss = 0.25;
    tau_ss_f = tau_ss + 0.05;
@#else
    rho_g_uk = 0.966;
    phi_b_uk = 0.25;
    phi_g_uk = 0.09;
    B_Y_SS_UK = 3.4;
    TR_Y_SS_UK = 0.4;
    @#if tax_mode == 1
        tau_ss_uk = 0.25;
    @#endif
@#endif

model(linear); 

% Home Country
#Omega = (1 - alppha) / (1 - alppha + alppha * epsilon);
#lambda = (1 - theta) * (1 - betta * theta) / (theta * Omega);
#omega = siggma * eta + (1 - upsilon) * (siggma * eta - 1);
#Phi = 1 / (1 + upsilon * (omega - 1));
#siggma_upsilon = siggma * Phi;
#Gamma_a = (1 + varphi) / (siggma_upsilon * (1 - alppha) + varphi + alppha);
#Gamma_star = - upsilon * (omega - 1) * siggma_upsilon * (1 - alppha) / (siggma_upsilon * (1 - alppha) + varphi + alppha);
#Gamma_z = - upsilon * omega * Phi * (1 - alppha) / (siggma_upsilon * (1 - alppha) + varphi + alppha);
#Gamma_g = - upsilon * (omega - 1) * siggma_upsilon * (1 - alppha) / (siggma_upsilon * (1 - alppha) + varphi + alppha);
#kappa_upsilon = lambda * (siggma_upsilon + (varphi + alppha) / (1 - alppha));
#Phi_star = siggma_upsilon * (upsilon * (omega - 1) + Gamma_star);
#Phi_z = (1 - upsilon) * Phi - siggma_upsilon * Gamma_z;
#Phi_g = siggma_upsilon * (Gamma_g + (upsilon * omega - 1) / (1 - upsilon));

% Foreign Country
#Omega_f = (1 - alppha_f) / (1 - alppha_f + alppha_f * epsilon_f);
#lambda_f = (1 - theta_f) * (1 - betta_f * theta_f) / (theta_f * Omega_f);
#omega_f = siggma_f * eta_f + (1 - upsilon_f) * (siggma_f * eta_f - 1);
#Phi_f = 1 / (1 + upsilon_f * (omega_f - 1));
#siggma_upsilon_f = siggma_f * Phi_f;
#Gamma_a_f = (1 + varphi_f) / (siggma_upsilon_f * (1 - alppha_f) + varphi_f + alppha_f);
#Gamma_star_f = - upsilon_f * (omega_f - 1) * siggma_upsilon_f * (1 - alppha_f) / (siggma_upsilon_f * (1 - alppha_f) + varphi_f + alppha_f);
#Gamma_z_f = - upsilon_f * omega_f * Phi_f * (1 - alppha_f) / (siggma_upsilon_f * (1 - alppha_f) + varphi_f + alppha_f);
#Gamma_g_f = - upsilon_f * (omega_f - 1) * siggma_upsilon_f * (1 - alppha_f) / (siggma_upsilon_f * (1 - alppha_f) + varphi_f + alppha_f);
#kappa_upsilon_f = lambda_f * (siggma_upsilon_f + (varphi_f + alppha_f) / (1 - alppha_f));
#Phi_star_f = siggma_upsilon_f * (upsilon_f * (omega_f - 1) + Gamma_star_f);
#Phi_z_f = (1 - upsilon_f) * Phi_f - siggma_upsilon_f * Gamma_z_f;
#Phi_g_f = siggma_upsilon_f * (Gamma_g_f + (upsilon_f * omega_f - 1) / (1 - upsilon_f));   

@#if no_of_govs == 2
    #Gamma_tau = (1 - tau_ss) * (1 - alppha) / (siggma_upsilon * (1 - alppha) + varphi + alppha);
    #Gamma_tau_f = (1 - tau_ss_f) * (1 - alppha_f) / (siggma_upsilon_f * (1 - alppha_f) + varphi_f + alppha_f);
@#else
    #Gamma_tau = (1 - tau_ss_uk) * (1 - alppha) / (siggma_upsilon * (1 - alppha) + varphi + alppha);
    #Gamma_tau_f = (1 - tau_ss_uk) * (1 - alppha_f) / (siggma_upsilon_f * (1 - alppha_f) + varphi_f + alppha_f);
@#endif


% HOME COUNTRY
[name='New Keynesian Phillips Curve (eq. 37)']
@#if monetary_union == 1
    pi_h = betta * pi_h(+1) + kappa_upsilon * y_gap;
    pi_h_f = betta_f * pi_h_f(+1) + kappa_upsilon_f * y_gap_f;
    /* pi_h = chi_pi * betta * pi_h(+1) + (1 - chi_pi) * betta * pi_h_f(+1) + kappa_upsilon * y_gap; */
    /* pi_h_f = chi_pi_ruk * betta_f * pi_h_f(+1) + (1 - chi_pi_ruk) * pi_h(+1) + kappa_upsilon_f * y_gap_f; */
@#else
    pi_h = betta * pi_h(+1) + kappa_upsilon * y_gap;
    pi_h_f = betta_f * pi_h_f(+1) + kappa_upsilon_f * y_gap_f;
@#endif

[name='Dynamic IS Curve (eq. 29)']
@#if monetary_union == 1
    y_gap = y_gap(+1) - 1 / siggma_upsilon * (interest_uk - pi_h(+1) - r_nat);
    y_gap_f = y_gap_f(+1) - 1 / siggma_upsilon_f * (interest_uk - pi_h_f(+1) - r_nat_f);
    /* y_gap = chi_y * y_gap(+1) + (1 - chi_y) * y_gap_f(+1) - 1/siggma_upsilon * (interest_uk - (chi_pi * pi_h(+1) + (1 - chi_pi) * pi_h_f(+1)) - r_nat); */
    /* y_gap_f = chi_y_ruk * y_gap_f(+1) + (1 - chi_y_ruk) * y_gap(+1) - 1/siggma_upsilon_f * (interest_uk - (chi_pi_ruk * pi_h_f(+1) + (1 - chi_pi_ruk) * pi_h(+1)) - r_nat_f); */
@#else
    y_gap = y_gap(+1) - 1/siggma_upsilon * (interest - pi_h(+1) - r_nat);
    y_gap_f = y_gap_f(+1) - 1/siggma_upsilon_f * (interest_f - pi_h_f(+1) - r_nat_f);
@#endif

[name='Definition real interest rate']
@#if monetary_union == 1
    r_real = interest_uk - pi_h(+1);
    r_real_f = interest_uk - pi_h_f(+1);
@#else
    r_real = interest - pi_h(+1);
    r_real_f = interest_f - pi_h_f(+1);
@#endif

[name='Natural output']
@#if no_of_govs == 2
    y_nat = Gamma_a * a + Gamma_z * z + Gamma_star * y_star + Gamma_g * tau_ss * g + Gamma_tau * tau;
    y_nat_f = Gamma_a_f * a_f + Gamma_z_f * z_f + Gamma_star_f * y_star + Gamma_g_f * tau_ss_f * g_f + Gamma_tau_f * tau_f;
@#else
    y_nat = Gamma_a * a + Gamma_z * z + Gamma_star * y_star + Gamma_g * tau_ss_uk * g_uk + Gamma_tau * tau_uk;
    y_nat_f = Gamma_a_f * a_f + Gamma_z_f * z_f + Gamma_star_f * y_star + Gamma_g_f * tau_ss_uk * g_uk + Gamma_tau_f * tau_uk;
@#endif

[name='Natural rate of interest (eq. 38)']
@#if no_of_govs == 2
    r_nat = -siggma_upsilon * Gamma_a * (1 - rho_a) * a + Phi_star * (y_star(+1) - y_star) + Phi_z * (1 - rho_z) * z - Phi_g * tau_ss * (1 - rho_g) * g + siggma_upsilon * Gamma_tau * (tau(+1) - tau);
    r_nat_f = -siggma_upsilon_f * Gamma_a_f * (1 - rho_a_f) * a_f + Phi_star_f * (y_star(+1) - y_star) + Phi_z_f * (1 - rho_z_f) * z_f - Phi_g_f * tau_ss_f * (1 - rho_g_f) * g_f + siggma_upsilon_f * Gamma_tau_f * (tau_f(+1) - tau_f);
@#else
    r_nat = -siggma_upsilon * Gamma_a * (1 - rho_a) * a + Phi_star * (y_star(+1) - y_star) + Phi_z * (1 - rho_z) * z - Phi_g * tau_ss_uk * (1 - rho_g_uk) * g_uk + siggma_upsilon * Gamma_tau * (tau_uk(+1) - tau_uk);
    r_nat_f = -siggma_upsilon_f * Gamma_a_f * (1 - rho_a_f) * a_f + Phi_star_f * (y_star(+1) - y_star) + Phi_z_f * (1 - rho_z_f) * z_f - Phi_g_f * tau_ss_uk * (1 - rho_g_uk) * g_uk + siggma_upsilon_f * Gamma_tau_f * (tau_uk(+1) - tau_uk);
@#endif

[name='Natural terms of trade (below eq. (35))']
@#if no_of_govs == 2
    /* Check if it's '+ tau_ss' or a '- tau_ss' */
    /* s_nat = siggma_upsilon * (y_nat - y_star) - (1 - upsilon) * Phi * z + tau_ss * siggma_upsilon * g; */
    s_nat = siggma_upsilon * (y_nat - y_star) - (1 - upsilon) * Phi * z + tau_ss * siggma_upsilon * g;
    s_nat_f = siggma_upsilon_f * (y_nat_f - y_star) - (1 - upsilon_f) * Phi * z_f + tau_ss_f * siggma_upsilon_f * g_f;
@#else
    s_nat = siggma_upsilon * (y_nat - y_star) - (1 - upsilon) * Phi * z - tau_ss_uk * siggma_upsilon * g_uk;
    s_nat_f = siggma_upsilon_f * (y_nat_f - y_star) - (1 - upsilon_f) * Phi * z_f - tau_ss_uk * siggma_upsilon_f * g_uk;
@#endif

% Monetary Policy
@#if monetary_union == 0
    [name='Taylor Rule']
    interest = rho_i * interest(-1) + (1 - rho_i) * (phi_pi * pi_h + phi_y * yhat) + nu;
    interest_f = rho_i_f * interest_f(-1) + (1 - rho_i_f) * (phi_pi_f * pi_h_f + phi_y_f * yhat_f) + nu_f;

    [name='Monetary policy shock, below eq. (39)']
    nu = rho_nu * nu(-1) + eps_nu;
    nu_f = rho_nu_f * nu_f(-1) + eps_nu_f;

@#else
    [name='Taylor Rule']
    interest_uk = rho_i * interest_uk(-1) + (1 - rho_i) * (phi_pi * ((1 - pop) * pi_h_f + pop * pi_h) + phi_y * ((1 - pop) * yhat_f + pop * yhat)) + nu_uk;
    /* interest_uk = rho_i * interest_uk(-1) + (1 - rho_i) * (phi_pi * ((1 - pop) * pi_h_f + pop * pi_h) + phi_y * ((1 - pop) * yhat_f + pop * yhat)) + nu_uk; */

    [name='Monetary policy shock, below eq. (39)']
    nu_uk = rho_nu * nu_uk(-1) + eps_nu_uk;
@#endif

[name='World output growth shock']
y_star - y_star(-1) = rho_y_star * (y_star(-1) - y_star(-2)) + eps_y_star;
/* y_star = 0; */

% Fiscal Policy
@#if no_of_govs == 2

    [name='FOC wage']
    @#if tax_mode == 1
        siggma * c + varphi * n = wp - (tau_ss / (1 - tau_ss)) * tau;
        siggma_f * c_f + varphi_f * n_f = wp_f - (tau_ss_f / (1 - tau_ss_f)) * tau_f;
    @#else
        wp = siggma * c + varphi * n;
        wp_f = siggma_f * c_f + varphi_f * n_f;
    @#endif

    [name='Consumption determined by resource constraint, p. 236']
    nx = y - c - g - upsilon * s;
    nx_f = y_f - c_f - g_f - upsilon_f * s_f;

    [name='Tax Revenue']
    @#if tax_mode == 1
        tr = tau + wp + n;
        tr_f = tau_f + wp_f + n_f;
    @#endif

    [name='Debt Stabilising']
    tr - p = phi_g * tau_ss * g + phi_b * (b - p);
    tr_f - p_f = phi_g_f * tau_ss_f * g_f +  phi_b_f * (b_f - p_f);

    [name='Bonds determined by budget constraint']
    @#if monetary_union == 1
        betta * (b(+1) - p - interest_uk(+1))  = (1 - phi_b) * (b - p) + tau_ss*(1 - phi_g) * g;
        betta_f * (b_f(+1) - p_f - interest_uk(+1)) =  (1 - phi_b_f) * (b_f - p_f) + tau_ss_f * (1 - phi_g_f) * g_f;
    @#else
        betta * (b(+1) - p_h - interest(+1))  = (1 - phi_b) * (b - p_h) + tau_ss*(1 - phi_g) * g;
        betta_f * (b_f(+1) - p_h_f - interest_f(+1)) =  (1 - phi_b_f) * (b_f - p_h_f) + tau_ss_f * (1 - phi_g_f) * g_f;
        /* betta * (b - p - interest)  = (1 - phi_b) * (b(-1) - p(-1)) + tau_ss*(1 - phi_g) * g(-1);
        betta_f * (b_f - p_f - interest_f) =  (1 - phi_b_f) * (b_f(-1) - p_f(-1)) + tau_ss_f * (1 - phi_g_f) * g_f(-1); */
    @#endif

    [name='Government spending']
    g = rho_g * g(-1) + eps_g;
    g_f = rho_g_f * g_f(-1) + eps_g_f;

    [name='Debt']
    g - tr = debt;
    g_f - tr_f = debt_f;

@#else

    [name='FOC wage']
    @#if tax_mode == 1
        siggma * c + varphi * n = wp - (tau_ss_uk / (1 - tau_ss_uk)) * tau_uk;
        siggma_f * c_f + varphi_f * n_f = wp_f - (tau_ss_uk / (1 - tau_ss_uk)) * tau_uk;
    @#else
        wp = siggma * c + varphi * n;
        wp_f = siggma_f * c_f + varphi_f * n_f;
    @#endif

    [name='Consumption determined by resource constraint']
    nx = y - c - pop * g_uk - upsilon * s;
    nx_f = y_f - c_f - (1 - pop) * g_uk - upsilon_f * s_f;
    /* y = c + pop*g_uk; */
    /* y_f = c_f + (1-pop)*g_uk; */

    @#if tax_mode == 1
        [name='Tax Revenue']
        tr_uk = tau_ss_uk * WN_T_SS * (tau_uk + wp + n) + tau_ss_uk * WN_T_SS_f * (tau_uk + wp_f + n_f);
        /* tr_uk = pop * (tau_uk + wp + n) + (1 - pop) * (tau_uk + wp_f + n_f); */
    @#endif

    [name='Debt Stabilising']
    tr_uk - (pop * p + (1 - pop) * p_f) = phi_g_uk * tau_ss_uk * g_uk + phi_b_uk * (b_uk - (pop * p + (1 - pop) * p_f));

    [name='Bonds determined by budget constraint']
    @#if monetary_union == 1
        betta_f * (b_uk - (pop * p + (1 - pop) * p_f) - interest_uk) = (1 - phi_b_uk) * (b_uk(-1) - (pop * p(-1) + (1 - pop) * p_f(-1))) + tau_ss_uk * (1 - phi_g_uk) * g_uk(-1);
        /* betta_f * (b_uk(+1) - (pop * p + (1 - pop) * p_f) - interest_uk) = (1 - phi_b_uk) * (b_uk - (pop * p + (1 - pop) * p_f)) + tau_ss_uk * (1 - phi_g_uk) * g_uk; */
    @#else
        betta_f * (b_uk(+1) - (pop * p + (1 - pop) * p_f) - (pop * interest + (1 - pop) * interest_f)) = (1 - phi_b_uk) * (b_uk(-1) - (pop * p + (1 - pop) * p_f)) + tau_ss_uk * (1 - phi_g_uk) * g_uk(-1);
    @#endif

    [name='Government spending']
    g_uk = rho_g_uk * g_uk(-1) + eps_g_uk;

    [name='Debt']
    g_uk - tr_uk = debt_uk;

@#endif

% Definitions
[name='Terms of trade gap']
s_gap = siggma_upsilon * y_gap;
s_gap_f = siggma_upsilon_f * y_gap_f;

[name='Output']
y_gap = y - y_nat;
y_gap_f = y_f - y_nat_f;

[name='Terms of trade, p. 238']
s_gap = s - s_nat;
s_gap_f = s_f - s_nat_f;

[name='Net exports, eq. (31)']
nx = upsilon * (omega / siggma - 1) * s - upsilon / siggma * z;
nx_f = upsilon_f * (omega_f / siggma_f - 1) * s_f - upsilon_f / siggma_f * z_f;

[name='CPI Inflation']
pi = pi_h + upsilon * (s - s(-1));
pi_f = pi_h_f + upsilon_f * (s_f - s_f(-1));

[name='Production function (eq. 32)']
y = a + (1 - alppha) * n;
y_f = a_f + (1 - alppha_f) * n_f;

[name='TFP shock, top of p. 233']
a = rho_a * a(-1) + eps_a;
a_f = rho_a_f * a_f(-1) + eps_a_f;

[name='Preference shock, top of p. 227']
z = rho_z * z(-1) + eps_z;
z_f = rho_z_f * z_f(-1) + eps_z_f;

[name='Output deviation from steady state']
yhat = y - steady_state(y);
yhat_f = y_f - steady_state(y_f);

[name='Domestic price level, p. 229']
p_h = p_h(-1) + pi_h;
p_h_f = p_h_f(-1) + pi_h_f;

[name='CPI definition']
p = p(-1) + pi;
p_f = p_f(-1) + pi_f;

[name='Nominal exchange rate']
s = er + p_star - p_h;
s_f = er_f + p_star - p_h_f;

[name='Definition exchange rate growth']
d_er = er - er(-1);
d_er_f = er_f - er_f(-1);

[name='Definition Real Wage']
wp = w - p;
wp_f = w_f - p_f;

% Estimation
@#if mcmc == 1
    y_obs = y - y(-1) + y_obs_me;
    c_obs = c - c(-1) + c_obs_me;
    w_obs = w - w(-1) + w_obs_me;
    pi_obs = pi + pi_obs_me;
    y_obs_ruk = y_f - y_f(-1) + y_obs_ruk_me;
    c_obs_ruk = c_f - c_f(-1) + c_obs_ruk_me;
    w_obs_ruk = w_f - w_f(-1) + w_obs_ruk_me;
    pi_obs_ruk = pi_f + pi_obs_ruk_me;
    /* i_obs = interest_uk - interest_uk(-1) + i_obs_me; */
@#endif

end;

%----------------------------------------------------------------
%  define shock variances
%---------------------------------------------------------------
shocks;
/* var eps_a = 0.25^2;
var eps_a_f = 0.25^2;

var eps_z = 0.25^2;
var eps_z_f = 0.25^2;

var eps_y_star = 0.25^2;
var p_star = 0.25^2; */
@#if shock_type == 2
    @#if no_of_govs == 2
        var eps_g = 1;
        var eps_g_f = 1;
    @#else
        var eps_g_uk = 0.25^2;
    @#endif
@#else
    @#if monetary_union == 1
        var eps_nu_uk = 0.25^2;
    @#else
        var eps_nu = 0.25^2;
        var eps_nu_f = 0.25^2;
    @#endif
@#endif

end;

@#if mcmc == 1
    estimated_params;
    stderr y_obs_me,inv_gamma_pdf,0.01,2;
    stderr c_obs_me,inv_gamma_pdf,0.01,2;
    stderr w_obs_me,inv_gamma_pdf,0.01,2;
    stderr pi_obs_me,inv_gamma_pdf,0.01,2;
    stderr y_obs_ruk_me,inv_gamma_pdf,0.01,2;
    stderr c_obs_ruk_me,inv_gamma_pdf,0.01,2;
    stderr w_obs_ruk_me,inv_gamma_pdf,0.01,2;
    stderr pi_obs_ruk_me,inv_gamma_pdf,0.01,2;
    /* stderr i_obs_me,inv_gamma_pdf,0.01,2; */
    % Home country
    % rho_a, beta_pdf, 0.7, 0.1;
    % rho_y_star, beta_pdf, 0.7, 0.1;
    % rho_z,beta_pdf,0.7,0.1;

    % Foreign country
    % rho_a_f, beta_pdf, 0.5, 0.2;
    % rho_y_star_f, beta_pdf, 0.7, 0.1;
    % rho_z_f,beta_pdf,0.7,0.1;
    /* chi_pi, beta_pdf, pop, 0.03*2.5; */
    /* chi_y, beta_pdf, pop, 0.03*2.5; */
    % chi_pi_ruk, normal_pdf, (1-pop), 0.1;
    % chi_y_ruk, normal_pdf, (1-pop), 0.1;
    /* chi_pi_ruk, beta_pdf, (1-pop), 0.03*2.5; */
    /* chi_y_ruk, beta_pdf, (1-pop), 0.03*2.5; */
    phi_pi, normal_pdf, 1.5, 0.1;
    phi_y, normal_pdf, 0.5/4, 0.1;
    phi_b, normal_pdf, 0.5, 0.2;
    phi_g, normal_pdf, 0.1, 0.1;
    % theta, beta_pdf, 0.6, 0.25;
    % theta_f, beta_pdf, 0.6, 0.25;
    % siggma, gamma_pdf, 1.5, 0.25;
    % siggma_f, gamma_pdf, 1.5, 0.25;

    % rho_nu, beta_pdf, 0.7, 0.2;
    % rho_i, beta_pdf, 0.7, 0.2;

    end;

    % varobs y_obs c_obs w_obs y_obs_ruk c_obs_ruk w_obs_ruk;
    varobs y_obs c_obs w_obs pi_obs y_obs_ruk c_obs_ruk w_obs_ruk pi_obs_ruk;

    estimation(datafile=DynareData, mh_replic=20000, mh_nblocks=1, smoother, diffuse_filter);
@#endif

resid(1);
steady;
check;

@#if scenario == 1
    stoch_simul(nocorr, nofunctions, nomoments) c c_f c_d y_d w w_f w_d;
    % stoch_simul(nocorr, nofunctions, nomoments) b b_f g g_f tr tr_f c c_f y y_f wp wp_f n n_f pi pi_f;
@#else
    @#if scenario == 2
        stoch_simul(nocorr, nofunctions, nomoments) g_uk tr_uk c c_f y y_f wp wp_f n n_f pi pi_f;
    @#else
        @#if scenario == 3
            stoch_simul(nocorr, nofunctions, nomoments, irf=200) debt debt_f b b_f g g_f tr tr_f tau tau_f c c_f y y_f wp wp_f n n_f pi pi_f;
            @#if enable_forloop == 1
                options_.nomoments=0;
                options_.nofunctions=1;
                options_.nograph=1;
                options_.verbosity=0;
                options_.noprint=1;
                options_.TeX=0;
                phi_b_grid = [0:0.01:1];
                phi_g_grid = [0:0.01:1];
                
                m_debt = zeros(0,0);
                m_b = zeros(0,0);
                m_r_real = zeros(0,0);
                m_g = zeros(0,0);
                m_tr = zeros(0,0);
                m_tau = zeros(0,0);
                m_c = zeros(0,0);
                m_y = zeros(0,0);
                m_wp = zeros(0,0);
                m_n = zeros(0,0);
                for ii = 1:length(phi_b_grid)
                    for jj = 1:length(phi_g_grid)
                        set_param_value('phi_b',phi_b_grid(ii))
                        set_param_value('phi_g',phi_g_grid(jj))
                        set_dynare_seed('default');
                        [info, oo_, options_] = stoch_simul(M_, options_, oo_, var_list_);
                        m_debt(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) oo_.irfs.debt_eps_g];
                        m_b(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) oo_.irfs.b_eps_g];
                        m_r_real(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) oo_.irfs.r_real_eps_g];
                        m_g(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) oo_.irfs.g_eps_g];
                        m_tr(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) oo_.irfs.tr_eps_g];
                        m_tau(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) oo_.irfs.tau_eps_g];
                        m_c(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) oo_.irfs.c_eps_g];
                        m_y(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) oo_.irfs.y_eps_g];
                        m_wp(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) oo_.irfs.wp_eps_g];
                        m_n(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) oo_.irfs.n_eps_g];
                    end
                end
                writematrix(m_debt, './sim_output/debt.csv');
                writematrix(m_b, './sim_output/b.csv');
                writematrix(m_r_real, './sim_output/r_real.csv');
                writematrix(m_g, './sim_output/g.csv');
                writematrix(m_tr, './sim_output/tr.csv');
                writematrix(m_tau, './sim_output/tau.csv');
                writematrix(m_c, './sim_output/c.csv');
                writematrix(m_y, './sim_output/y.csv');
                writematrix(m_wp, './sim_output/wp.csv');
                writematrix(m_n, './sim_output/n.csv');
            @#endif
        @#else
            stoch_simul(nocorr, nofunctions, nomoments, irf=200) s s_f interest_uk debt_uk b_uk tr_uk tau_uk c c_f y y_f wp wp_f n n_f pi pi_f;
        @#endif
    @#endif
@#endif