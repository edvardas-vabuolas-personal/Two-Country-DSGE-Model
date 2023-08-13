% monetary_union: 0 - Standard NK Phillips Curves and Dynamic IS curves, 2 interest rates; 1 - Price passthrough and unified monetary authority
@#define monetary_union = 1

@#define scenario = 4

% no_of_govs: 1 - One government budget constraint; 2 - Two government budget constraints
% labour_tax: 0 - Lump-Sum; 1 - Distortionary taxes (labour tax)

@#if scenario == 1
    @#define no_of_govs = 2
    @#define labour_tax = 0
@#else
    @#if scenario == 2
        @#define no_of_govs = 1
        @#define labour_tax = 0
    @#else
        @#if scenario == 3
            @#define no_of_govs = 2
            @#define labour_tax = 1
        @#else
            @#if scenario == 4
                @#define no_of_govs = 1
                @#define labour_tax = 1
            @#endif
        @#endif
    @#endif
@#endif

% shock_type: 1 - monetary; 2 - fiscal
@#define shock_type = 2


% mcmc: 0 - do not estimate (use pre-defined parameters); 1 - estimate (use calibrated parameters)
@#define mcmc = 0

% This generates thousands of simulations for React application (interactive sensitivity analysis on browser). NOT covered in the dissertation
@#define enable_forloop = 0

% Export IRFs to a CSV file
@#define enable_irfs_to_csv = 0

% Export IRFs for different sets of parameters (aka sensitivity analysis) to a CSV file
@#define enable_sensitivity_analysis = 1

@#if enable_irfs_to_csv == 0 && enable_forloop == 0 && enable_sensitivity_analysis == 0 && mcmc == 0
    @#define show_irf_graphs = 1
@#else
    @#define show_irf_graphs = 0
@#endif

var 

y_gap       ${\tilde{y}_t}$   (long_name='Scotland output gap')
pi_h        ${\pi_{H,t}}$     (long_name='Scotland domestic inflation')
y_nat       ${y^{nat}_t}$       (long_name='Scotland natural output')
r_nat       ${r^{nat}_t}$       (long_name='Scotland natural interest rate')
s_nat       ${s^{nat}_t}$       (long_name='Scotland natural terms of trade')
y           ${y_t}$           (long_name='Scotland output')
s_gap       ${\tilde{s}_t}$   (long_name='Scotland terms of trade gap')
s           ${s_t}$           (long_name='Scotland terms of trade')
pi          ${\pi_t}$         (long_name='Scotland CPI inflation')
n           ${n_t}$           (long_name='Scotland employment')
r_real      ${r^r_t}$         (long_name='Scotland real interest rate')   
w           ${w_t}$           (long_name='Scotland nominal wage')   
nx          ${nx_t}$          (long_name='Scotland net exports')   
c           ${c_t}$           (long_name='Scotland consumption')   
yhat        ${\hat{y}_t}$     (long_name='Scotland output deviation from steady state')
p_h         ${p_H_t}$         (long_name='Scotland domestic price level')
p           ${p_t}$           (long_name='Scotland CPI')
er          ${e_t}$           (long_name='Scotland Nominal exchange rate')
d_er        ${\Delta e_t}$    (long_name='Scotland Nominal exchange rate growth')
y_star      ${y^*_t}$         (long_name='World output')
a           ${a_t}$           (long_name='Scotland AR(1) technology shock process')
z           ${z_t}$           (long_name='Scotland AR(1) preference shock process')
wp          ${wp_t}$          (long_name='Scotland Real Wage')

y_gap_f       ${\tilde{y^*}}$   (long_name='rUK output gap')
pi_h_f        ${\pi^*_{H,t}}$       (long_name='rUK domestic inflation')
y_nat_f       ${y^{*nat}_t}$     (long_name='rUK natural output')
r_nat_f       ${r^{*nat}_t}$     (long_name='rUK natural interest rate')
s_nat_f       ${s^{*nat}_t}$     (long_name='rUK natural terms of trade')
y_f           ${y^*_t}$           (long_name='rUK output')
s_gap_f       ${\tilde{s^*}_t}$   (long_name='rUK terms of trade gap')
s_f           ${s^*_t}$           (long_name='rUK terms of trade')
pi_f          ${\pi^*_t}$         (long_name='rUK CPI inflation')
n_f           ${n^*_t}$           (long_name='rUK employment')
r_real_f      ${r^r_t}$           (long_name='rUK real interest rate')   
w_f           ${w^*_t}$           (long_name='rUK nominal wage')   
nx_f          ${nx^*_t}$          (long_name='rUK net exports in terms of domestic outout')   
c_f           ${c^*_t}$           (long_name='rUK consumption')   
yhat_f        ${\hat{y}^*_t}$      (long_name='rUK output deviation from steady state')
p_h_f         ${p^*_{H, t}}$         (long_name='rUK domestic price level')
p_f           ${p^*_t}$           (long_name='rUK CPI')
er_f          ${e^*_t}$           (long_name='rUK Nominal exchange rate')
d_er_f        ${\Delta e^*_t}$    (long_name='rUK Nominal exchange rate growth')
a_f           ${a^*_t}$           (long_name='rUK AR(1) technology shock process')
z_f           ${z^*_t}$           (long_name='rUK AR(1) preference shock process')
wp_f          ${wp^*_t}$          (long_name='rUK Real Wage')

p_h_uk

% Fiscal Policy
@#if no_of_govs == 2
    tr              ${tr_t}$          (long_name='Scotland Tax Revenue')    
    tr_f            ${TR^*_t}$        (long_name='rUK Tax Revenue')  
    g           ${g_t}$           (long_name='Scotland Government Spending')
    g_f         ${g^*_t}$         (long_name='rUK Government Spending')
    b           ${b_t}$           (long_name='Scotland Government Bonds')
    b_f         ${b^*_t}$           (long_name='rUK Government Bonds')
    @#if labour_tax == 1
        tau     ${\tau_t}$        (long_name='Scotland Labour Tax')
        tau_f   ${\tau^*_t}$      (long_name='rUK Labour Tax')
    @#endif    
@#else
    g_uk        ${g^{UK}_t}$      (long_name='UK Government Spending')
    tr_uk       ${tr^{UK}_t}$     (long_name='UK Tax Revenue')
    b_uk        ${b^{UK}_t}$      (long_name='UK Government Bonds')
    @#if labour_tax == 1
        tr              ${tr_t}$          (long_name='Scotland Tax Revenue')    
        tr_f            ${tr^*_t}$        (long_name='rUK Tax Revenue')  
        tau_uk  ${\tau^{UK}_t}$   (long_name='UK Labour Tax')
    @#endif
@#endif

interest      ${i_t}$           (long_name='Scotland Interest Rate')
interest_f    ${i^*_t}$         (long_name='rUK Interest Rate')
interest_uk   ${i^{UK}_t}$      (long_name='UK Interest Rate')

% Monetary Policy
@#if monetary_union == 1
    nu_uk       ${\nu^{UK}_t}$         (long_name='UK AR(1) monetary policy shock process')
@#else
    nu          ${\nu_t}$              (long_name='Scotland AR(1) monetary policy shock process')    
    nu_f        ${\nu^*_t}$            (long_name='rUK AR(1) monetary policy shock process')    
@#endif

% Estimation
@#if mcmc == 1
    y_obs           ${y^{OBS}}$           (long_name='Observed Output')
    c_obs           ${c^{OBS}}$           (long_name='Observed Consumption')
    w_obs           ${w^{OBS}}$           (long_name='Observed Wage')
    y_obs_ruk           ${y^{OBS, ruk}}$           (long_name='Observed Output (RUK)')
    c_obs_ruk           ${c^{OBS, ruk}}$           (long_name='Observed Consumption (RUK)')
    w_obs_ruk          ${w^{OBS, ruk}}$           (long_name='Observed Wage (RUK)')

    @#if no_of_govs == 2
        g_obs           ${g^{OBS}}$           (long_name='Observed Government spending')
        g_obs_ruk          ${w^{OBS, ruk}}$           (long_name='Observed Government spending (RUK)')
    @#else
        g_obs_uk
    @#endif
@#endif

;

@#if no_of_govs == 2
    predetermined_variables b b_f;
@#else
    predetermined_variables b_uk;
@#endif

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
    y_obs_ruk_me       ${\varepsilon_y^{ME, RUK}}$     (long_name='Observed Output ME (RUK)')
    c_obs_ruk_me       ${\varepsilon_c^{ME, RUK}}$     (long_name='Observed Consumption ME (RUK)')
    w_obs_ruk_me       ${\varepsilon_w^{ME, RUK}}$     (long_name='Observed Wage ME (RUK)')
    
    @#if no_of_govs == 2
        g_obs_me       ${\varepsilon_g^{ME}}$     (long_name='Observed Government Expenditure ME')
        g_obs_ruk_me       ${\varepsilon_g^{ME, RUK}}$     (long_name='Observed Government Expenditure ME (RUK)')
    @#else
        g_obs_uk_me       ${\varepsilon_g^{ME, UK}}$     (long_name='Observed Government Expenditure ME (UK)')
    @#endif

@#endif

;

parameters 
% Home country
siggma          ${\sigma}$      (long_name='Inverse E.O.S')
betta           ${\beta}$       (long_name='Discount factor')
varphi          ${\varphi}$     (long_name='Labour supply elasticity')
alppha          ${\alpha}$      (long_name='Capital share')
epsilon         ${\epsilon}$    (long_name='Demand elasticity')
theta           ${\theta}$      (long_name='Calvo price-stickiness')
upsilon         ${\upsilon}$    (long_name='Openness parameter')
eta             ${\eta}$        (long_name='Substitutability foreign/domestic goods')    
rho_a           ${\rho_a}$      (long_name='Autocorrelation technology shock')
rho_nu          ${\rho_{\nu}}$  (long_name='Autocorrelation monetary policy shock')
rho_y_star      ${\rho_{y^*}}$  (long_name='Autocorrelation world output growth shock')
rho_z           ${\rho_{z}}$    (long_name='Autocorrelation preference shock')

% Foreign country
siggma_f          ${\sigma^*}$      (long_name='inverse EIS')
betta_f           ${\beta^*}$       (long_name='Discount factor')
varphi_f          ${\varphi^*}$     (long_name='Labour supply elasticity')
alppha_f          ${\alpha^*}$      (long_name='Capital share')
epsilon_f         ${\epsilon^*}$    (long_name='Demand price-stickiness')
theta_f           ${\theta^*}$      (long_name='Calvo parameter')
upsilon_f         ${\upsilon^*}$    (long_name='Openness parameter')
eta_f             ${\eta^*}$        (long_name='Substitutability foreign/domestic goods')    
rho_a_f           ${\rho_a^*}$      (long_name='Autocorrelation technology shock')
rho_nu_f          ${\rho^*_{\nu}}$  (long_name='Autocorrelation monetary policy shock')
rho_y_star_f      ${\rho_{y^*}}$  (long_name='Autocorrelation world output growth shock')
rho_z_f           ${\rho^*_{z}}$    (long_name='Autocorrelation preference shock')

% Fiscal Policy
G_Y_SS
G_Y_SS_f
C_Y_SS
C_Y_SS_f
Y_C_SS
Y_C_SS_f
G_C_SS
G_C_SS_f

@#if no_of_govs == 2
    rho_g           ${\rho_g}$    (long_name='AR(1) coefficient for Government spending (Scotland)')
    rho_g_f           ${\rho_g}$    (long_name='AR(1) coefficient for Government spending (rUK)')
    phi_b
    phi_b_f
    phi_g
    phi_g_f
    @#if labour_tax == 1
        tau_ss           ${\tilde{\tau}}$    (long_name='Average labour tax rate (Scotland)')
        tau_ss_f           ${\tilde{\tau}}^f$    (long_name='Average labour tax rate (rUK)')
    @#endif
@#else
    rho_g_uk           ${\rho_g}$    (long_name='AR(1) coefficient for Government spending (UK)')
    phi_b_uk
    phi_g_uk
    @#if labour_tax == 1
        tau_ss_uk           ${\tilde{\tau}}$    (long_name='Average labour tax rate (UK)')
    @#endif
@#endif

% Shared parameters
pop           ${pop}$    (long_name='Scottish population share in the UK')
phi_pi          ${\phi_{\pi}}$  (long_name='inflation feedback Taylor Rule')
phi_pi_f          ${\phi_{\pi}}$  (long_name='inflation feedback Taylor Rule')
phi_y           ${\phi_{y}}$    (long_name='output feedback Taylor Rule')
phi_y_f           ${\phi_{y}}$    (long_name='output feedback Taylor Rule')

;

%----------------------------------------------------------------
% Parametrization
%----------------------------------------------------------------

% Home country

betta   = 0.99;
siggma  = 0.44;
varphi  = 2.2;
alppha  = 1/3;
epsilon = 9.67;
theta   = 3/4;
upsilon = 0.4;
rho_a   = 0.89;
rho_y_star  = 0.5;
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
rho_nu  = 0.5;
rho_nu_f  = rho_nu;
phi_pi  = 1.5;
phi_pi_f  = phi_pi;
phi_y   = 0.5/4;
phi_y_f   = phi_y;

G_Y_SS = 0.256313;
G_Y_SS_f = 0.179667;

C_Y_SS = 1 - G_Y_SS;
C_Y_SS_f = 1 - G_Y_SS_f;

Y_C_SS = 1/C_Y_SS;
Y_C_SS_f = 1/C_Y_SS_f;

G_C_SS = Y_C_SS - 1;
G_C_SS_f = Y_C_SS_f - 1;

@#if no_of_govs == 2
    /* Estimated values */
    phi_b = 0.3615596;
    phi_b_f = 0.4100886;
    
    phi_g = 0.1005927;
    phi_g_f = 0.09843084;

    rho_g = 0.9012821;
    rho_g_f = 0.9037307;

    @#if labour_tax == 1
        tau_ss = G_Y_SS;
        tau_ss_f = G_Y_SS_f;
    @#endif
@#else
    /* Estimated values */
    phi_b_uk = 0.4094919;
    phi_g_uk = 0.1005139;
    rho_g_uk = 0.90;
    @#if labour_tax == 1
        tau_ss_uk = pop * G_Y_SS + (1 - pop) * G_Y_SS_f;
    @#endif
@#endif

model(linear); 

% Home Country
#Omega = (1 - alppha) / (1 - alppha + alppha * epsilon);
#lambda = ((1 - theta) * (1 - betta * theta) / theta) * Omega;
#omega = siggma * eta + (1 - upsilon) * (siggma * eta - 1);
#Phi = 1 / (1 + upsilon * (omega - 1));
#siggma_upsilon = siggma * Phi;
#kappa_upsilon = lambda * (siggma_upsilon * Y_C_SS + (varphi + alppha) / (1 - alppha));


% Foreign Country
#Omega_f = (1 - alppha_f) / (1 - alppha_f + alppha_f * epsilon_f);
#lambda_f = ((1 - theta_f) * (1 - betta_f * theta_f) / theta_f) * Omega_f;
#omega_f = siggma_f * eta_f + (1 - upsilon_f) * (siggma_f * eta_f - 1);
#Phi_f = 1 / (1 + upsilon_f * (omega_f - 1));
#siggma_upsilon_f = siggma_f * Phi_f;
#kappa_upsilon_f = lambda_f * (siggma_upsilon_f * Y_C_SS_f + (varphi_f + alppha_f) / (1 - alppha_f));


/* Natural Output Gammas */
#Gamma_star = - upsilon * (omega - 1) * siggma_upsilon * (1 - alppha) / (siggma_upsilon * Y_C_SS * (1 - alppha) + varphi + alppha);
#Gamma_z = - upsilon * omega * Phi * (1 - alppha) / (siggma_upsilon * Y_C_SS * (1 - alppha) + varphi + alppha);
#Gamma_a = (1 + varphi) / (siggma_upsilon * Y_C_SS * (1 - alppha) + varphi + alppha);
#Gamma_g = siggma_upsilon * G_C_SS * (1 - alppha) / (siggma_upsilon * Y_C_SS * (1 - alppha) + varphi + alppha);

#Gamma_star_f = - upsilon_f * (omega_f - 1) * siggma_upsilon_f * (1 - alppha_f) / (siggma_upsilon_f * Y_C_SS_f * (1 - alppha_f) + varphi_f + alppha_f);
#Gamma_z_f = - upsilon_f * omega_f * Phi_f * (1 - alppha_f) / (siggma_upsilon_f * Y_C_SS_f * (1 - alppha_f) + varphi_f + alppha_f);
#Gamma_a_f = (1 + varphi_f) / (siggma_upsilon_f * Y_C_SS_f * (1 - alppha_f) + varphi_f + alppha_f);
#Gamma_g_f = siggma_upsilon_f * G_C_SS_f * (1 - alppha_f) / (siggma_upsilon_f * Y_C_SS_f * (1 - alppha_f) + varphi_f + alppha_f);

@#if labour_tax == 1
    @#if no_of_govs == 2
        #Gamma_tau = (-tau_ss * (1 - alppha)) / ((1 - tau_ss) * (siggma_upsilon * Y_C_SS * (1 - alppha) + varphi + alppha));
        #Gamma_tau_f = (-tau_ss_f * (1 - alppha_f)) / ((1 - tau_ss_f) * (siggma_upsilon_f * Y_C_SS_f * (1 - alppha_f) + varphi_f + alppha_f));
    @#else
        #Gamma_tau = (-tau_ss_uk * (1 - alppha)) / ((1 - tau_ss_uk) * (siggma_upsilon * Y_C_SS * (1 - alppha) + varphi + alppha));
        #Gamma_tau_f = (-tau_ss_uk * (1 - alppha_f)) / ((1 - tau_ss_uk) * (siggma_upsilon_f * Y_C_SS_f * (1 - alppha_f) + varphi_f + alppha_f));
    @#endif
@#endif

/* Natural Interest Rate Phis */
#Phi_star = siggma_upsilon * (Y_C_SS * Gamma_star + upsilon * (omega - 1));
#Phi_z = (1 - upsilon) * Phi - Y_C_SS * siggma_upsilon * Gamma_z;
#Phi_g = siggma_upsilon * (Y_C_SS * Gamma_g - G_C_SS);

#Phi_star_f = siggma_upsilon_f * (Y_C_SS_f * Gamma_star_f + upsilon_f * (omega_f - 1));
#Phi_z_f = (1 - upsilon_f) * Phi_f - Y_C_SS_f * siggma_upsilon_f * Gamma_z_f;
#Phi_g_f = siggma_upsilon_f * (Y_C_SS_f * Gamma_g_f - G_C_SS_f);   

@#if labour_tax == 1
    #Phi_tau = siggma_upsilon * Y_C_SS * Gamma_tau;
    #Phi_tau_f = siggma_upsilon_f * Y_C_SS_f * Gamma_tau_f;
@#endif

@#if monetary_union == 0
    [name='Taylor Rule']
    interest = rho_i * interest(-1) + (1 - rho_i) * (phi_pi * pi_h + phi_y * yhat) + nu;
    interest_f = rho_i_f * interest_f(-1) + (1 - rho_i_f) * (phi_pi_f * pi_h_f + phi_y_f * yhat_f) + nu_f;

    [name='Monetary policy shock']
    nu = rho_nu * nu(-1) + eps_nu;
    nu_f = rho_nu_f * nu_f(-1) + eps_nu_f;

@#else
    [name='Taylor Rule']
    interest = (phi_pi * pi_h + phi_y * yhat) + nu_uk;
    interest_f = (phi_pi * pi_h_f + phi_y * yhat_f) + nu_uk;

    [name='Monetary policy shock']
    nu_uk = rho_nu * nu_uk(-1) + eps_nu_uk;
@#endif

interest_uk = pop * interest + (1 - pop) * interest_f;

[name='New Keynesian Phillips Curve']
pi_h = betta * pi_h(+1) + kappa_upsilon * y_gap;
pi_h_f = betta_f * pi_h_f(+1) + kappa_upsilon_f * y_gap_f;

[name='Dynamic IS Curve']
y_gap = y_gap(+1) - 1 / siggma_upsilon * C_Y_SS * (interest - pi_h(+1) - r_nat);
y_gap_f = y_gap_f(+1) - 1 / siggma_upsilon_f * C_Y_SS_f * (interest_f - pi_h_f(+1) - r_nat_f);

[name='Definition real interest rate']
r_real = interest - pi_h(+1);
r_real_f = interest_f - pi_h_f(+1);

@#if labour_tax == 1
    [name='Natural output']
    @#if no_of_govs == 2
        y_nat = Gamma_a * a + Gamma_z * z + Gamma_star * y_star + Gamma_g * g + Gamma_tau * tau;
        y_nat_f = Gamma_a_f * a_f + Gamma_z_f * z_f + Gamma_star_f * y_star + Gamma_g_f * g_f + Gamma_tau_f * tau_f;
    @#else
        y_nat = Gamma_a * a + Gamma_z * z + Gamma_star * y_star + Gamma_g * g_uk + Gamma_tau * tau_uk;
        y_nat_f = Gamma_a_f * a_f + Gamma_z_f * z_f + Gamma_star_f * y_star + Gamma_g_f * g_uk + Gamma_tau_f * tau_uk;
    @#endif
@#else
    [name='Natural output']
    @#if no_of_govs == 2
        y_nat = Gamma_a * a + Gamma_z * z + Gamma_star * y_star + Gamma_g * g;
        y_nat_f = Gamma_a_f * a_f + Gamma_z_f * z_f + Gamma_star_f * y_star + Gamma_g_f * g_f;
    @#else
        y_nat = Gamma_a * a + Gamma_z * z + Gamma_star * y_star + Gamma_g * g_uk;
        y_nat_f = Gamma_a_f * a_f + Gamma_z_f * z_f + Gamma_star_f * y_star + Gamma_g_f * g_uk;
    @#endif
@#endif

@#if labour_tax == 1
    [name='Natural rate of interest']
    @#if no_of_govs == 2
        r_nat = Y_C_SS * -siggma_upsilon * Gamma_a * (1 - rho_a) * a + Phi_star * (y_star(+1) - y_star) + Phi_z * (1 - rho_z) * z - Phi_g * (1 - rho_g) * g + Phi_tau * (tau(+1) - tau);
        r_nat_f = Y_C_SS_f * -siggma_upsilon_f * Gamma_a_f * (1 - rho_a_f) * a_f + Phi_star_f * (y_star(+1) - y_star) + Phi_z_f * (1 - rho_z_f) * z_f - Phi_g_f * (1 - rho_g_f) * g_f + Phi_tau_f * (tau_f(+1) - tau_f);
    @#else
        r_nat = Y_C_SS * -siggma_upsilon * Gamma_a * (1 - rho_a) * a + Phi_star * (y_star(+1) - y_star) + Phi_z * (1 - rho_z) * z - Phi_g * (1 - rho_g_uk) * g_uk + Phi_tau * (tau_uk(+1) - tau_uk);
        r_nat_f = Y_C_SS_f * -siggma_upsilon_f * Gamma_a_f * (1 - rho_a_f) * a_f + Phi_star_f * (y_star(+1) - y_star) + Phi_z_f * (1 - rho_z_f) * z_f - Phi_g_f * (1 - rho_g_uk) * g_uk + Phi_tau_f * (tau_uk(+1) - tau_uk);
    @#endif
@#else
    [name='Natural rate of interest']
    @#if no_of_govs == 2
        r_nat = Y_C_SS * -siggma_upsilon * Gamma_a * (1 - rho_a) * a + Phi_star * (y_star(+1) - y_star) + Phi_z * (1 - rho_z) * z - Phi_g * (1 - rho_g) * g;
        r_nat_f = Y_C_SS_f * -siggma_upsilon_f * Gamma_a_f * (1 - rho_a_f) * a_f + Phi_star_f * (y_star(+1) - y_star) + Phi_z_f * (1 - rho_z_f) * z_f - Phi_g_f * (1 - rho_g_f) * g_f;
    @#else
        r_nat = Y_C_SS * -siggma_upsilon * Gamma_a * (1 - rho_a) * a + Phi_star * (y_star(+1) - y_star) + Phi_z * (1 - rho_z) * z - Phi_g * (1 - rho_g_uk) * g_uk;
        r_nat_f = Y_C_SS_f * -siggma_upsilon_f * Gamma_a_f * (1 - rho_a_f) * a_f + Phi_star_f * (y_star(+1) - y_star) + Phi_z_f * (1 - rho_z_f) * z_f - Phi_g_f * (1 - rho_g_uk) * g_uk;
    @#endif
@#endif

[name='Natural terms of trade']
@#if no_of_govs == 2
    s_nat = siggma_upsilon * (Y_C_SS * y_nat - y_star - G_C_SS * g) - (1 - upsilon) * Phi * z;
    s_nat_f = siggma_upsilon_f * (Y_C_SS_f * y_nat_f - y_star - G_C_SS_f * g_f) - (1 - upsilon_f) * Phi_f * z_f;
@#else
    s_nat = siggma_upsilon * (Y_C_SS * y_nat - y_star - G_C_SS * g_uk) - (1 - upsilon) * Phi * z;
    s_nat_f = siggma_upsilon_f * (Y_C_SS_f * y_nat_f - y_star - G_C_SS_f * g_uk) - (1 - upsilon_f) * Phi_f * z_f;
@#endif

[name='World output growth shock']
y_star - y_star(-1) = rho_y_star * (y_star(-1) - y_star(-2)) + eps_y_star;

/* ###### FISCAL POLICY BLOCK ###### */
@#if labour_tax == 1
    @#if no_of_govs == 2
        [name='FOC wage']
        siggma * c + varphi * n = wp - (tau_ss / (1 - tau_ss)) * tau;
        siggma_f * c_f + varphi_f * n_f = wp_f - (tau_ss_f / (1 - tau_ss_f)) * tau_f;
    @#else
        [name='FOC wage']
        siggma * c + varphi * n = wp - (tau_ss_uk / (1 - tau_ss_uk)) * tau_uk;
        siggma_f * c_f + varphi_f * n_f = wp_f - (tau_ss_uk / (1 - tau_ss_uk)) * tau_uk;
    @#endif
@#else
    wp = siggma * c + varphi * n;
    wp_f = siggma_f * c_f + varphi_f * n_f;
@#endif

@#if labour_tax == 1
    @#if no_of_govs == 2
        [name='Tax Revenue']
        tr = tau + w - p + n;
        tr_f = tau_f + wp_f + n_f;
    @#else
        [name='Tax Revenue']
        tr = tau_uk + wp + n;
        tr_f = tau_uk + wp_f + n_f;
        tr_uk = pop * tr + (1-pop) * tr_f;
    @#endif
@#endif

@#if no_of_govs == 2
    [name='Debt Stabilising']
    tr = phi_g * g + phi_b * b;
    tr_f = phi_g_f * g_f + phi_b_f * b_f;
@#else
    [name='Debt Stabilising']
    tr_uk = phi_g_uk * g_uk + phi_b_uk * b_uk;
@#endif

@#if no_of_govs == 2
    [name='Bonds determined by budget constraint']
    b(+1) = 1/betta * ((1 - phi_b) * b + (1 - phi_g) * g);
    b_f(+1) =  1/betta_f * ((1 - phi_b_f) * b_f + (1 - phi_g_f) * g_f);
@#else
    [name='Bonds determined by budget constraint']
    b_uk(+1) = 1/betta * ((1 - phi_b_uk) * b_uk + (1 - phi_g_uk) * g_uk);
@#endif

@#if no_of_govs == 2
    [name='Government spending']
    g = rho_g * g(-1) + eps_g;
    g_f = rho_g_f * g_f(-1) + eps_g_f;
@#else
    [name='Government spending']
    g_uk = rho_g_uk * g_uk(-1) + eps_g_uk;
@#endif

/* ###### END FISCAL POLICY BLOCK ###### */

/* ###### DEFINITIONS ###### */
[name='Terms of trade gap']
s_gap = siggma_upsilon * Y_C_SS * y_gap;
s_gap_f = siggma_upsilon_f * Y_C_SS_f * y_gap_f;

@#if no_of_govs == 2
    [name='Trade balance']
    nx = y - c - g - upsilon * s;
    nx_f = y_f - c_f - g_f - upsilon_f * s_f;
    nx = upsilon * (omega / siggma - 1) * s - upsilon / siggma * z;
    nx_f = upsilon_f * (omega_f / siggma_f - 1) * s_f - upsilon_f / siggma_f * z_f;
@#else
    [name='Trade balance']
    1/pop * nx = y - c - g_uk - upsilon * s;
    1/(1-pop) * nx_f = y_f - c_f - g_uk - upsilon_f * s_f;
    nx = upsilon * (omega / siggma - 1) * s - upsilon / siggma * z;
    nx_f = upsilon_f * (omega_f / siggma_f - 1) * s_f - upsilon_f / siggma_f * z_f;
@#endif

[name='Output']
y_gap = y - y_nat;
y_gap_f = y_f - y_nat_f;

[name='Terms of trade']
s_gap = s - s_nat;
s_gap_f = s_f - s_nat_f;

[name='CPI Inflation']
pi = pi_h + upsilon * (s - s(-1));
pi_f = pi_h_f + upsilon_f * (s_f - s_f(-1));

[name='Production function']
y = a + (1 - alppha) * n;
y_f = a_f + (1 - alppha_f) * n_f;

[name='TFP shock']
a = rho_a * a(-1) + eps_a;
a_f = rho_a_f * a_f(-1) + eps_a_f;

[name='Preference shock']
z = rho_z * z(-1) + eps_z;
z_f = rho_z_f * z_f(-1) + eps_z_f;

[name='Output deviation from steady state']
yhat = y - steady_state(y);
yhat_f = y_f - steady_state(y_f);

[name='Domestic price level']
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

[name='Inflation in the UK']
p_h_uk = pop * p + (1 - pop) * p_f;

[name='Definition Real Wage']
wp = w - p;
wp_f = w_f - p_f;

/* ###### DEFINITIONS END ###### */

/* ###### ESTIMATION ###### */
@#if mcmc == 1
    y_obs = y - y(-1) + y_obs_me;
    y_obs_ruk = y_f - y_f(-1) + y_obs_ruk_me;

    c_obs = c - c(-1) + c_obs_me;
    c_obs_ruk = c_f - c_f(-1) + c_obs_ruk_me;
    
    w_obs = w - w(-1) + w_obs_me;
    w_obs_ruk = w_f - w_f(-1) + w_obs_ruk_me;

    @#if no_of_govs == 2
        g_obs = g - g(-1) + g_obs_me;
        g_obs_ruk = g_f - g_f(-1) + g_obs_ruk_me;
    @#else
        g_obs_uk = g_uk - g_uk(-1) + g_obs_uk_me;
    @#endif

@#endif
/* ###### ESTIMATION END ###### */

end;

%----------------------------------------------------------------
%  define shock variances
%---------------------------------------------------------------
shocks;
% Note: Variance of 0.25^2 means standard deviation of 0.25
% Which is 25 basis points per quarter and 100 basis points per year
% i.e. 1 percentage point annualised
@#if mcmc == 0
    @#if shock_type == 2
        @#if no_of_govs == 2
            var eps_g = 0.25^2;
            var eps_g_f = 0.25^2;
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
@#else
    var eps_a = 0.25^2;
    var eps_a_f = 0.25^2;

    var eps_z = 0.25^2;
    var eps_z_f = 0.25^2;

    var eps_y_star = 0.25^2;
    var p_star = 0.25^2;
    
    var eps_nu_uk = 0.25^2;
    
    @#if no_of_govs == 2
        var eps_g = 0.25^2;
        var eps_g_f = 0.25^2;
    @#else
        var eps_g_uk = 0.25^2;
    @#endif
@#endif

end;

@#if mcmc == 1
    estimated_params;
    stderr c_obs_me,inv_gamma_pdf,0.01,2;
    stderr c_obs_ruk_me,inv_gamma_pdf,0.01,2;
    stderr y_obs_me,inv_gamma_pdf,0.01,2;
    stderr y_obs_ruk_me,inv_gamma_pdf,0.01,2;

    @#if no_of_govs == 2
        stderr g_obs_me,inv_gamma_pdf,0.01,2;
        stderr g_obs_ruk_me,inv_gamma_pdf,0.01,2;
    @#else
        stderr g_obs_uk_me,inv_gamma_pdf,0.01,2;
    @#endif
    
    @#if no_of_govs == 2
        phi_b, beta_pdf, 0.33, 0.2;
        phi_g, beta_pdf, 0.1, 0.05;
        rho_g, beta_pdf, 0.9, 0.01;
        
        phi_b_f, beta_pdf, 0.33, 0.2;
        phi_g_f, beta_pdf, 0.1, 0.05;
        rho_g_f, beta_pdf, 0.9, 0.01;
    @#else
        /* Using Scenario 3 estimation results to inform Scenario 4 estimation of parameters */
        phi_b_uk, beta_pdf, 0.33, 0.2;
        phi_g_uk, beta_pdf, 0.1, 0.05;
        rho_g_uk, beta_pdf, 0.9, 0.01;
    @#endif

    end;

    @#if no_of_govs == 2
        varobs y_obs c_obs w_obs y_obs_ruk c_obs_ruk w_obs_ruk g_obs g_obs_ruk;
    @#else
        varobs y_obs c_obs w_obs y_obs_ruk c_obs_ruk w_obs_ruk g_obs_uk;
    @#endif

    /* Notice that mh_jscale should be approx. 0.65 for Scenario 3 and 0.90 for Scenario 4 for acceptance criteria to be c. 23-25% */
    @#if no_of_govs == 2
        estimation(datafile=DynareData, mh_replic=300000, mh_nblocks=1, logdata, smoother, diffuse_filter, mh_jscale=0.65, mh_drop=0.333);
    @#else
        estimation(datafile=DynareData, mh_replic=300000, mh_nblocks=1, logdata, smoother, diffuse_filter, mh_jscale=0.90, mh_drop=0.333);
    @#endif
@#endif

resid(1);
steady;
check;

@#if show_irf_graphs == 1
    stoch_simul(irf=200);
@#else
    stoch_simul(irf=200, nograph);
@#endif


@#if enable_irfs_to_csv == 1
    options_.nomoments=0;
    options_.nofunctions=1;
    options_.nograph=1;
    options_.verbosity=0;
    options_.noprint=1;
    options_.TeX=0;
    [info, oo_, options_] = stoch_simul(M_, options_, oo_, var_list_);
    m_irfs = fieldnames(oo_.irfs);
    matrix_irfs = strings(0,0)

    for ii = 1:numel(m_irfs)
        matrix_irfs(end+1, 1) = m_irfs{ii};
        matrix_irfs(end, 2:201) = [oo_.irfs.(m_irfs{ii})];
    end

    /* The for-loop will produce a matrix of the following form */
    /* pi_h | 0.0175.. | ... | <IRF at t=200> |*/
    /* y    | 0.0005.. | ... | <IRF at t=200> |*/
    /* c    | -0.001.. | ... | <IRF at t=200> |*/
    /* ... */

    @#if shock_type == 1
        dest = './IRFs/monetary_scenario_4.csv'
    @#else
        @#if scenario == 1
            dest = './IRFs/fiscal_scenario_1.csv'
        @#else
            @#if scenario == 2
                dest = './IRFs/fiscal_scenario_2.csv'
            @#else
                @#if scenario == 3
                    dest = './IRFs/fiscal_scenario_3.csv'
                @#else
                    dest = './IRFs/fiscal_scenario_4.csv'
                @#endif
            @#endif
        @#endif
    @#endif
    writematrix(matrix_irfs, dest);
@#endif

@#if enable_sensitivity_analysis == 1
    options_.nomoments=0;
    options_.nofunctions=1;
    options_.nograph=1;
    options_.verbosity=0;
    options_.noprint=1;
    options_.TeX=0;
    [info, oo_, options_] = stoch_simul(M_, options_, oo_, var_list_);

    phi_b_grid = [0.33 0.50 0.99];
    phi_g_grid = [0.10 0.50 0.99];
    rho_g_grid = [0.90 0.60 0.10];

    m_irfs = fieldnames(oo_.irfs);
    matrix_irfs = strings(0,0)

    for gg = 1:length(rho_g_grid)
        for bb = 1:length(phi_b_grid)
            for jj = 1:length(phi_g_grid)
                set_param_value('phi_b_uk',phi_b_grid(bb))
                set_param_value('phi_g_uk',phi_g_grid(jj))
                set_param_value('rho_g_uk',rho_g_grid(gg))
                [info, oo_, options_] = stoch_simul(M_, options_, oo_, var_list_);
                for ii = 1:numel(m_irfs)
                    matrix_irfs(end+1, 1) = m_irfs{ii};
                    matrix_irfs(end, 2:204) = [phi_b_grid(bb) phi_g_grid(jj) rho_g_grid(gg) oo_.irfs.(m_irfs{ii})];
                end
            end
        end
    end

    /* The three for-loops will produce a matrix of the following form */
    /* pi_h | 0.33 | 0.10 | 0.95 | 0.0175.. | ... | <IRF at t=200> |*/
    /* pi_h | 0.33 | 0.10 | 0.60 | 0.0175.. | ... | <IRF at t=200> |*/
    /* pi_h | 0.33 | 0.10 | 0.10 | 0.0175.. | ... | <IRF at t=200> |*/
    /* ... */
    /* pi_h | 0.50 | 0.10 | 0.95 | 0.0175.. | ... | <IRF at t=200> |*/
    /* pi_h | 0.99 | 0.10 | 0.95 | 0.0175.. | ... | <IRF at t=200> |*/
    /* ... */
    /* pi_h | 0.33 | 0.50 | 0.95 | 0.0175.. | ... | <IRF at t=200> |*/
    /* pi_h | 0.33 | 0.99 | 0.95 | 0.0175.. | ... | <IRF at t=200> |*/
    
    dest = './IRFs_SensitivityAnalysis/sensitivity_analysis.csv'
    writematrix(matrix_irfs, dest);
@#endif

@#if enable_forloop == 1
    options_.nomoments=0;
    options_.nofunctions=1;
    options_.nograph=1;
    options_.verbosity=0;
    options_.noprint=1;
    options_.TeX=0;
    phi_b_grid = [0:0.20:1];
    phi_g_grid = [0:0.20:1];
    rho_g_grid = [0:0.20:1];

    m_debt = zeros(0,0);
    m_b = zeros(0,0);
    m_g = zeros(0,0);
    m_tr = zeros(0,0);
    m_tau = zeros(0,0);
    m_c = zeros(0,0);
    m_y = zeros(0,0);
    m_wp = zeros(0,0);
    m_n = zeros(0,0);
    counter = 0;
    for ii = 1:length(phi_b_grid)
        for jj = 1:length(phi_g_grid)
            for gg = 1:length(rho_g_grid)
                set_param_value('phi_b_uk',phi_b_grid(ii))
                set_param_value('phi_g_uk',phi_g_grid(jj))
                set_param_value('rho_g_uk',rho_g_grid(gg))
                set_dynare_seed('default');
                [info, oo_, options_] = stoch_simul(M_, options_, oo_, var_list_);
                m_debt(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) rho_g_grid(gg) oo_.irfs.debt_uk_eps_g_uk];
                m_b(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) rho_g_grid(gg) oo_.irfs.b_uk_eps_g_uk];
                m_g(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) rho_g_grid(gg) oo_.irfs.g_uk_eps_g_uk];
                m_tr(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) rho_g_grid(gg) oo_.irfs.tr_uk_eps_g_uk];
                m_tau(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) rho_g_grid(gg) oo_.irfs.tau_uk_eps_g_uk];
                m_c(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) rho_g_grid(gg) oo_.irfs.c_eps_g_uk];
                m_y(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) rho_g_grid(gg) oo_.irfs.y_eps_g_uk];
                m_wp(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) rho_g_grid(gg) oo_.irfs.wp_eps_g_uk];
                m_n(end+1, :) = [phi_b_grid(ii) phi_g_grid(jj) rho_g_grid(gg) oo_.irfs.n_eps_g_uk];

                counter = counter + 1;
                disp(counter)
            end
        end
    end
    writematrix(m_debt, './ReactAppData/debt.csv');
    writematrix(m_b, './ReactAppData/b.csv');
    writematrix(m_g, './ReactAppData/g.csv');
    writematrix(m_tr, './ReactAppData/tr.csv');
    writematrix(m_tau, './ReactAppData/tau.csv');
    writematrix(m_c, './ReactAppData/c.csv');
    writematrix(m_y, './ReactAppData/y.csv');
    writematrix(m_wp, './ReactAppData/wp.csv');
    writematrix(m_n, './ReactAppData/n.csv');
@#endif
