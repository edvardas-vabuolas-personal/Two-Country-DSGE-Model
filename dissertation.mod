% tax_mode: 0 - Lump-Sum; 1 - Distortionary taxes (labour tax)
@#define tax_mode = 1
% mcmc: 0 - do not estimate (use pre-defined parameters); 1 - estimate (use calibrated parameters)
@#define mcmc = 0

var 

% Home country
y_gap       ${\tilde{y}}$   (long_name='output gap')
pi_h        ${\pi_H}$       (long_name='domestic inflation')
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
nu          ${\nu}$         (long_name='AR(1) monetary policy shock process')
z           ${z}$           (long_name='AR(1) preference shock process')
g
tr

@#if tax_mode == 1
    tau
@#endif

y_obs
c_obs
w_obs
pi_obs

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
interest_f    ${i^f}$

y_obs_ruk
c_obs_ruk
w_obs_ruk
pi_obs_ruk

i_obs

;

varexo 

% Home country shocks
eps_nu       ${\varepsilon^\nu}$     (long_name='monetary policy shock')
eps_a        ${\varepsilon^a}$       (long_name='technology shock')
eps_z        ${\varepsilon^z}$       (long_name='preference shock')
eps_tau

% Foreign country shocks
eps_a_f        ${\varepsilon^{f,a}}$       (long_name='technology shock')
eps_z_f        ${\varepsilon^{f,z}}$       (long_name='preference shock')

% World
eps_y_star   ${\varepsilon^y}$       (long_name='world output growth shock')
p_star       ${p^*}$                 (long_name='world price level')

% Measurement Errors
y_obs_me
c_obs_me
w_obs_me
pi_obs_me
y_obs_ruk_me
c_obs_ruk_me
w_obs_ruk_me
pi_obs_ruk_me
i_obs_me
;

parameters 

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
phi_pi          ${\phi_{\pi}}$  (long_name='inflation feedback Taylor Rule')
phi_y           ${\phi_{y}}$    (long_name='output feedback Taylor Rule')
siggma_f          ${\sigma}$      (long_name='inverse EIS')
betta_f           ${\beta}$       (long_name='discount factor')
varphi_f          ${\varphi}$     (long_name='inverse Frisch elasticity')
alppha_f          ${\alpha}$      (long_name='capital share')
epsilon_f         ${\epsilon}$    (long_name='demand elasticity')
theta_f           ${\theta}$      (long_name='Calvo parameter')
upsilon_f         ${\upsilon}$    (long_name='openness parameter')
eta_f             ${\eta}$        (long_name='substitutability foreign/domestic goods')    
rho_a_f           ${\rho_a}$      (long_name='autocorrelation technology shock')
rho_y_star_f      ${\rho_{y^*}}$  (long_name='autocorrelation world output growth shock')
rho_z_f           ${\rho_{z}}$    (long_name='autocorrelation preference shock')
pop
rho_i
rho_g

chi_pi
chi_y
chi_pi_ruk
chi_y_ruk

tau_ss
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
upsilon = 0.6;
rho_a   = 0.9;
rho_y_star  = 0.9;
eta     = 1;
rho_z   = 0.5;
tau_ss = 0.15;


% Foreign country
betta_f   = 0.99;
siggma_f  = 1;
varphi_f  = 5;
alppha_f  = 1/4;
epsilon_f = 6;
theta_f   = 3/4;
upsilon_f = 0.6;
rho_a_f   = 0.9;
rho_y_star_f  = 0.9;
eta_f     = 1;
rho_z_f   = 0.5;

pop = 0.08629;
rho_nu  = 0.9;
rho_i = 0.5;
phi_pi  = 1.5;
phi_y   = 1;
rho_g = 0.9;

chi_pi = pop;
chi_y = pop;
chi_pi_ruk = (1-pop);
chi_y_ruk = (1-pop);
%----------------------------------------------------------------
% First Order Conditions
%----------------------------------------------------------------
model(linear); 
%Composite parameters
      
% Home Country
#Omega    = (1-alppha)  /   (1-alppha+alppha*epsilon);        %p. 233
#lambda   = (1-theta)   *   (1-betta*theta)/theta*Omega;       %p. 233
#omega    = siggma*eta + (1-upsilon)*(siggma*eta-1);    %p. 235
#Phi = 1 / (1+upsilon*(omega-1));                       %p. 235
#siggma_upsilon = siggma*Phi;                           %p. 235
#Gamma_a  = (1+varphi)/(siggma_upsilon*(1-alppha)+varphi+alppha);                                          %p. 238
#Gamma_star  = - upsilon*(omega-1)*siggma_upsilon*(1-alppha)/(siggma_upsilon*(1-alppha)+varphi+alppha);    %p. 238
#Gamma_z  = - upsilon*omega*Phi*(1-alppha)/(siggma_upsilon*(1-alppha)+varphi+alppha);                      %p. 238   
#kappa_upsilon  = lambda*(siggma_upsilon+(varphi+alppha)/(1-alppha));                                      %p. 238 bottom
#Phi_star=siggma_upsilon*(upsilon*(omega-1)+Gamma_star);                                                %p. 239
#Phi_z=(1-upsilon)*Phi-siggma_upsilon*Gamma_z;                                                          %p. 239        

% Foreign Country
#Omega_f  =  (1-alppha_f)    /   (1-alppha_f+alppha_f*epsilon_f);        %p. 233
#lambda_f   =(1-theta_f)*(1-betta_f*theta_f)/theta_f*Omega_f;       %p. 233
#omega_f    = siggma_f*eta_f + (1-upsilon_f)*(siggma_f*eta_f-1);    %p. 235
#Phi_f = 1 / (1+upsilon_f*(omega_f-1));                       %p. 235
#siggma_upsilon_f = siggma_f*Phi_f;                           %p. 235
#Gamma_a_f  = (1+varphi_f)/(siggma_upsilon_f*(1-alppha_f)+varphi_f+alppha_f);                                          %p. 238
#Gamma_star_f  = - upsilon_f*(omega_f-1)*siggma_upsilon_f*(1-alppha_f)/(siggma_upsilon_f*(1-alppha_f)+varphi_f+alppha_f);    %p. 238
#Gamma_z_f  = - upsilon_f*omega_f*Phi_f*(1-alppha_f)/(siggma_upsilon_f*(1-alppha_f)+varphi_f+alppha_f);                      %p. 238   
#kappa_upsilon_f  = lambda_f*(siggma_upsilon_f+(varphi_f+alppha_f)/(1-alppha_f));                                      %p. 238 bottom
#Phi_star_f=siggma_upsilon_f*(upsilon_f*(omega_f-1)+Gamma_star_f);                                                %p. 239
#Phi_z_f=(1-upsilon_f)*Phi_f-siggma_upsilon_f*Gamma_z_f;                                                          %p. 239  


% HOME COUNTRY
[name='New Keynesian Phillips Curve (eq. 37)']
pi_h  = chi_pi*betta*pi_h(+1) + (1-chi_pi)*betta*pi_h_f(+1) + kappa_upsilon*y_gap;
[name='Dynamic IS Curve (eq. 29)']
y_gap = chi_y*y_gap(+1) + (1-chi_y)*y_gap_f(+1) - 1/siggma_upsilon*(interest_f-(chi_pi*pi_h(+1) + (1-chi_pi)*pi_h_f(+1))-r_nat);
[name='Natural output (eq. 35)']
y_nat = Gamma_a*a + Gamma_z*z + Gamma_star*y_star;
[name='Natural rate of interest (eq. 38)']
r_nat = -siggma_upsilon*Gamma_a*(1-rho_a)*a + Phi_star*(y_star(+1)-y_star) + Phi_z*(1-rho_z)*z;
[name='Natural terms of trade (below eq. (35))']
s_nat = siggma_upsilon*(y_nat-y_star)-(1-upsilon)*Phi*z;
[name='Terms of trade gap (middle p. 238)']
s_gap = siggma_upsilon*y_gap;
[name='Output']
y_gap = y - y_nat;
[name=' Terms of trade, p. 238']
s_gap = s - s_nat;
[name='CPI inflation (13)']
pi    = pi_h + upsilon*(s-s(-1));
[name='Production function (eq. 32)']
y     = a + (1-alppha)*n;
[name='Definition real interest rate']
r_real= interest_f - pi_h(+1);
[name='TFP shock, top of p. 233']
a     = rho_a*a(-1) + eps_a;
[name='Preference shock, top of p. 227']
z     = rho_z*z(-1) + eps_z;
[name='FOC wage, eq. (11)']
% w-p=siggma*c+varphi*n;
w-p=siggma*c+varphi*n + (1-tau_ss)*tau;
[name='Net exports, eq. (31)']
nx=upsilon*(omega/siggma-1)*s-upsilon/siggma*z;
[name='Consumption determined by resource constraint, p. 236']
nx=y-c-g-upsilon*s;
[name='Tax Revenue']
tr = tau + w + n;
tr = p_h + g;
[name='Government spending']
g = rho_g*g(-1) + eps_tau;
[name='Output deviation from steady state']
yhat=y-steady_state(y);
[name='Domestic price level, p. 229']
p_h   = p_h(-1) + pi_h;
[name='CPI definition']
p     = p(-1) + pi;
[name='Nominal exchange rate']
s     = er + p_star - p_h ;
[name='Definiion exchange rate growth']
d_er=er-er(-1);

% FOREIGN COUNTRY
[name='FOREIGN New Keynesian Phillips Curve (eq. 37)']
pi_h_f  = chi_pi_ruk*betta_f*pi_h_f(+1) + (1-chi_pi_ruk)*pi_h(+1) + kappa_upsilon_f*y_gap_f;
[name='FOREIGN Dynamic IS Curve (eq. 29)']
y_gap_f = chi_y_ruk*y_gap_f(+1) + (1-chi_y_ruk)*y_gap(+1) - 1/siggma_upsilon_f*(interest_f-(chi_pi_ruk*pi_h_f(+1) + (1-chi_pi_ruk)*pi_h(+1))-r_nat_f);
[name='FOREIGN Natural output (eq. 35)']
y_nat_f = Gamma_a_f*a_f + Gamma_z_f*z_f + Gamma_star_f*y_star;
[name='FOREIGN Natural rate of interest (eq. 38)']
r_nat_f = -siggma_upsilon_f*Gamma_a_f*(1-rho_a_f)*a_f + Phi_star_f*(y_star(+1)-y_star) + Phi_z_f*(1-rho_z_f)*z_f;
[name='FOREIGN Natural terms of trade (below eq. (35))']
s_nat_f = siggma_upsilon_f*(y_nat_f-y_star)-(1-upsilon_f)*Phi*z_f;
[name='FOREIGN Terms of trade gap (middle p. 238)']
s_gap_f = siggma_upsilon_f*y_gap_f;
[name='FOREIGN Output']
y_gap_f = y_f - y_nat_f;
[name='FOREIGN  Terms of trade, p. 238']
s_gap_f = s_f - s_nat_f;
[name='FOREIGN CPI inflation (13)']
pi_f    = pi_h_f + upsilon_f*(s_f-s_f(-1));
[name='FOREIGN Production function (eq. 32)']
y_f     = a_f + (1-alppha_f)*n_f;
[name='FOREIGN Definition real interest rate']
r_real_f = interest_f - pi_h_f(+1);
[name='FOREIGN TFP shock, top of p. 233']
a_f     = rho_a_f*a_f(-1) + eps_a_f;
[name='FOREIGN Preference shock, top of p. 227']
z_f     = rho_z_f*z_f(-1) + eps_z_f;
[name='FOREIGN FOC wage, eq. (11)']
w_f-p_f=siggma_f*c_f+varphi_f*n_f;
[name='FOREIGN net exports, eq. (31)']
nx_f=upsilon_f*(omega_f/siggma_f-1)*s_f-upsilon_f/siggma_f*z_f;
[name='FOREIGN consumption determined by resource constraint, p. 236']
nx_f=y_f-c_f-upsilon_f*s_f;
[name='FOREIGN Output deviation from steady state']
yhat_f=y_f-steady_state(y_f);
[name='FOREIGN Domestic price level, p. 229']
p_h_f   = p_h_f(-1) + pi_h_f;
[name='FOREIGN CPI definition']
p_f     = p_f(-1) + pi_f;
[name='FOREIGN Nominal exchange rate']
s_f     = er_f + p_star - p_h_f ;
[name='FOREIGN Definiion exchange rate growth']
d_er_f=er_f-er_f(-1);

interest_f = rho_i*interest_f + (1-rho_i)*(phi_pi*((1-pop)*pi_h_f + pop*pi_h) + phi_y*((1-pop)*yhat_f+pop*yhat)) + nu;

[name='Monetary policy shock, below eq. (39)']
nu    = rho_nu*nu(-1) + eps_nu;
[name='World output growth shock']
y_star - y_star(-1) = rho_y_star*(y_star(-1) - y_star(-2)) + eps_y_star; %use growth rate rule for world output
% y_star = 0;

% Estimation
y_obs = y - y(-1) + y_obs_me;
c_obs = c - c(-1) + c_obs_me;
w_obs = w - w(-1) + w_obs_me;
pi_obs = pi + pi_obs_me;
y_obs_ruk = y_f - y_f(-1) + y_obs_ruk_me;
c_obs_ruk = c_f - c_f(-1) + c_obs_ruk_me;
w_obs_ruk = w_f - w_f(-1) + w_obs_ruk_me;
pi_obs_ruk = pi_f + pi_obs_ruk_me;
i_obs = interest_f - interest_f(-1) + i_obs_me;
end;

%----------------------------------------------------------------
%  define shock variances
%---------------------------------------------------------------
shocks;
% var eps_a = 0.25^2;
% var eps_a_f = 0.25^2;

% var eps_z = 0.25^2;
% var eps_z_f = 0.25^2;

% var eps_nu = 0.25^2;
% var eps_y_star = 0.25^2;
% var p_star = 0.25^2;
var eps_tau = 0.25^2;
end;

% estimated_params;
% stderr y_obs_me,inv_gamma_pdf,0.01,2;
% stderr c_obs_me,inv_gamma_pdf,0.01,2;
% stderr w_obs_me,inv_gamma_pdf,0.01,2;
% stderr pi_obs_me,inv_gamma_pdf,0.01,2;
% stderr y_obs_ruk_me,inv_gamma_pdf,0.01,2;
% stderr c_obs_ruk_me,inv_gamma_pdf,0.01,2;
% stderr w_obs_ruk_me,inv_gamma_pdf,0.01,2;
% stderr pi_obs_ruk_me,inv_gamma_pdf,0.01,2;
% stderr i_obs_me,inv_gamma_pdf,0.01,2;
% % Home country
% % rho_a, beta_pdf, 0.7, 0.1;
% % rho_y_star, beta_pdf, 0.7, 0.1;
% % rho_z,beta_pdf,0.7,0.1;

% % Foreign country
% % rho_a_f, beta_pdf, 0.5, 0.2;
% % rho_y_star_f, beta_pdf, 0.7, 0.1;
% % rho_z_f,beta_pdf,0.7,0.1;
% chi_pi, beta_pdf, pop, 0.03;
% chi_y, beta_pdf, pop, 0.03;
% % chi_pi_ruk, normal_pdf, (1-pop), 0.1;
% % chi_y_ruk, normal_pdf, (1-pop), 0.1;
% chi_pi_ruk, beta_pdf, (1-pop), 0.03;
% chi_y_ruk, beta_pdf, (1-pop), 0.03;
% % phi_pi, normal_pdf, 1.5, 0.1;
% % phi_y, normal_pdf, 0.5, 0.2;
% % theta, beta_pdf, 0.6, 0.25;
% % theta_f, beta_pdf, 0.6, 0.25;
% % siggma, gamma_pdf, 1.5, 0.25;
% % siggma_f, gamma_pdf, 1.5, 0.25;

% % rho_nu, beta_pdf, 0.7, 0.2;
% % rho_i, beta_pdf, 0.7, 0.2;

% end;

% % varobs y_obs c_obs w_obs y_obs_ruk c_obs_ruk w_obs_ruk;
% varobs y_obs c_obs w_obs pi_obs y_obs_ruk c_obs_ruk w_obs_ruk pi_obs_ruk i_obs;

% estimation(datafile=DynareData, mh_replic=20000, mh_nblocks=1, smoother, diffuse_filter);

%----------------------------------------------------------------
%  steady states: all 0 due to linear model
%---------------------------------------------------------------
resid(1);
steady;
check;

%----------------------------------------------------------------
% generate IRFs, replicates Figures 8.1, p. 243
%----------------------------------------------------------------
stoch_simul(order = 1,irf=20) g tr tau c y w n interest_f r_nat pi pi_h;
% stoch_simul(order = 1,irf=20) c r_real r_real_f yhat yhat_f pi_h pi_h_f s s_f;