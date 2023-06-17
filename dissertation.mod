/*
 * This file implements the baseline New Keynesian SOE model of Chapter 8 of
 * Jordi Gali (2015): Monetary Policy, Inflation, and the Business Cycle, Princeton University Press, Second Edition.

 * Notes:
 * - all model variables are expressed in deviations from steady state, i.e. in contrast to
 *      to the chapter, both the nominal interest rate and natural output are not in log-levels, but rather mean 0
 * - In contrast to earlier chapters, eta in Chapter 8 is the trade elasticity, not the semi-elasticity of money demand
 */

var 

% Home country
y_gap       ${\tilde{y}}$   (long_name='output gap')
pi_h        ${\pi_H}$       (long_name='domestic inflation')
interest           ${i}$           (long_name='nominal interest rate')
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
% d_er        ${\Delta e}$    (long_name='Nominal exchange rate growth')
y_star      ${y^*}$         (long_name='world output')
a           ${a}$           (long_name='AR(1) technology shock process')
nu          ${\nu}$         (long_name='AR(1) monetary policy shock process')
z           ${z}$           (long_name='AR(1) preference shock process')
GDP

y_obs
c_obs
w_obs
pi_obs

% Foreign Country
y_gap_f       ${\tilde{y^f}}$   (long_name='output gap')
pi_h_f        ${\pi^f_H}$       (long_name='domestic inflation')
y_nat_f       ${{y^f}^{n}}$       (long_name='natural output')
r_nat_f       ${{r^f}^{n}}$       (long_name='natural interest rate')
% s_nat_f       ${{s^f}^{n}}$       (long_name='natural terms of trade')
y_f           ${y^f}$           (long_name='output')
% s_gap_f       ${\tilde{s^f}}$   (long_name='terms of trade gap')
% s_f           ${s^f}$           (long_name='terms of trade')
pi_f          ${\pi^f}$         (long_name='CPI inflation')
n_f           ${n^f}$           (long_name='employment')
r_real_f      ${r^r}$         (long_name='real interest rate')   
w_f           ${w^f}$           (long_name='nominal wage')   
nx_f          ${nx^f}$          (long_name='net exports in terms of domestic outout')   
c_f           ${c^f}$           (long_name='consumption')   
yhat_f        ${\hat y^f}$      (long_name='output deviation from steady state')
p_h_f         ${p^f_H}$         (long_name='domestic price level')
p_f           ${p^f}$           (long_name='CPI')
% er_f          ${e^f}$           (long_name='Nominal exchange rate')
% d_er_f        ${\Delta e^f}$    (long_name='Nominal exchange rate growth')
a_f           ${a^f}$           (long_name='AR(1) technology shock process')
z_f           ${z^f}$           (long_name='AR(1) preference shock process')
GDP_f
% interest_f

y_obs_ruk
c_obs_ruk
w_obs_ruk
pi_obs_ruk


;

varexo 

% Home country shocks
eps_nu       ${\varepsilon^\nu}$     (long_name='monetary policy shock')
eps_a        ${\varepsilon^a}$       (long_name='technology shock')
eps_z        ${\varepsilon^z}$       (long_name='preference shock')

% Foreign country shocks
eps_a_f        ${\varepsilon^{f,a}}$       (long_name='technology shock')
eps_z_f        ${\varepsilon^{f,z}}$       (long_name='preference shock')

% World
eps_y_star   ${\varepsilon^y}$       (long_name='world output growth shock')
p_star       ${p^*}$                 (long_name='world price level')
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
;

%----------------------------------------------------------------
% Parametrization
%----------------------------------------------------------------

% Home country

betta   = 0.99;
siggma  = 0.2;
varphi  = 10;
alppha  = 1/5;
epsilon = 14;
theta   = 3/4;
upsilon = 0.6;
rho_nu  = 0.9;
rho_a   = 0.9;
rho_y_star  = 0.9;
eta     = 1;
rho_z   = 0.5;


% Foreign country
betta_f   = 0.99;
siggma_f  = 1.4;
varphi_f  = 4;
alppha_f  = 0.4;
epsilon_f = 6;
theta_f   = 3/4;
upsilon_f = 0.1;
rho_a_f   = 0.6;
rho_y_star_f  = 0.6;
eta_f     = 1;
rho_z_f   = 0.3;

pop = 0.085;
rho_i = 0.5;
phi_pi  = 300;
phi_y   = 200;

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
pi_h  = betta*pi_h(+1) + kappa_upsilon*y_gap;
[name='Dynamic IS Curve (eq. 29)']
y_gap = y_gap(+1) - 1/siggma_upsilon*(interest-pi_h(+1)-r_nat);
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
r_real= interest - pi_h(+1);
[name='TFP shock, top of p. 233']
a     = rho_a*a(-1) + eps_a;
[name='Preference shock, top of p. 227']
z     = rho_z*z(-1) + eps_z;
[name='FOC wage, eq. (11)']
w-p=siggma*c+varphi*n;
[name='net exports, eq. (31)']
nx=upsilon*(omega/siggma-1)*s-upsilon/siggma*z;
[name='consumption determined by resource constraint, p. 236']
nx=y-c-upsilon*s;
[name='Output deviation from steady state']
yhat=y-steady_state(y);
[name='Domestic price level, p. 229']
p_h   = p_h(-1) + pi_h;
[name='CPI definition']
p     = p(-1) + pi;
[name='Nominal exchange rate']
s     = er + p_star - p_h ;
[name='Definiion exchange rate growth']
% er=1;
% er=0;
GDP = yhat + yhat_f;

% FOREIGN COUNTRY
[name='FOREIGN New Keynesian Phillips Curve (eq. 37)']
pi_h_f  = betta_f*pi_h_f(+1) + kappa_upsilon_f*y_gap_f;
[name='FOREIGN Dynamic IS Curve (eq. 29)']
y_gap_f = y_gap_f(+1) - 1/siggma_upsilon_f*(interest-pi_h_f(+1)-r_nat_f);
% y_gap_f = y_gap_f(+1) - 1/siggma_upsilon_f*(interest_f-pi_h_f(+1)-r_nat_f);
[name='FOREIGN Natural output (eq. 35)']
y_nat_f = Gamma_a_f*a_f + Gamma_z_f*z_f + Gamma_star_f*y_star;
[name='FOREIGN Natural rate of interest (eq. 38)']
r_nat_f = -siggma_upsilon_f*Gamma_a_f*(1-rho_a_f)*a_f + Phi_star_f*(y_star(+1)-y_star) + Phi_z_f*(1-rho_z_f)*z_f;
% [name='FOREIGN Natural terms of trade (below eq. (35))']
% s_nat_f = siggma_upsilon_f*(y_nat_f-y_star)-(1-upsilon_f)*Phi*z_f;
% [name='FOREIGN Terms of trade gap (middle p. 238)']
% s_gap_f = siggma_upsilon_f*y_gap_f;
[name='FOREIGN Output']
y_gap_f = y_f - y_nat_f;
% [name='FOREIGN  Terms of trade, p. 238']
% s_gap_f = s_f - s_nat_f;
[name='FOREIGN CPI inflation (13)']
pi_f    = pi_h_f + upsilon_f*(s-s(-1));
[name='FOREIGN Production function (eq. 32)']
y_f     = a_f + (1-alppha_f)*n_f;
[name='FOREIGN Definition real interest rate']
r_real_f = interest - pi_h_f(+1);
% r_real_f = interest_f - pi_h_f(+1);
[name='FOREIGN TFP shock, top of p. 233']
a_f     = rho_a_f*a_f(-1) + eps_a_f;
[name='FOREIGN Preference shock, top of p. 227']
z_f     = rho_z_f*z_f(-1) + eps_z_f;
[name='FOREIGN FOC wage, eq. (11)']
w_f-p_f=siggma_f*c_f+varphi_f*n_f;
[name='FOREIGN net exports, eq. (31)']
nx_f=upsilon_f*(omega_f/siggma_f-1)*s-upsilon_f/siggma_f*z_f;
[name='FOREIGN consumption determined by resource constraint, p. 236']
nx_f=y_f-c_f-upsilon_f*s;
[name='FOREIGN Output deviation from steady state']
yhat_f=y_f-steady_state(y_f);
[name='FOREIGN Domestic price level, p. 229']
p_h_f   = p_h_f(-1) + pi_h_f;
[name='FOREIGN CPI definition']
p_f     = p_f(-1) + pi_f;
% [name='FOREIGN Nominal exchange rate']
% s_f     = er_f + p_star - p_h_f ;
% [name='FOREIGN Definiion exchange rate growth']
% d_er_f=er_f-er_f(-1);
% er_f=0;
GDP_f = yhat + yhat_f;

% interest  = 0.85*interest(-1) + (1-0.85)*phi_pi*(pi_h) + (1-0.85)*phi_y*(yhat) + nu;
% interest_f = 0.85*i_f(-1) + (1-0.85)*phi_pi*(pi_h_f) + (1-0.85)*phi_pi*(yhat_f) + nu;
% interest = 0.77*interest(-1) + (1-0.77)*phi_pi*(0.085*pi + (1-0.085)*pi_f) + (1-0.77)*phi_y*(0.085*(y - y(-1)) + (1-0.085)*(y_f - y_f(-1))) + nu;
% interest = phi_pi*(pop*pi_h + (1-pop)*pi_h_f) + phi_y*(pop*GDP + (1-pop)*GDP_f) + nu;
interest = rho_i*interest(-1) + (1-rho_i)*(phi_pi*(pop*pi + (1-pop)*pi_f) + phi_y*(pop*(GDP - GDP(-1)) + (1-pop)*(GDP_f - GDP_f(-1)))) + nu;
% interest = rho_i*interest(-1) + (1-rho_i)*phi_pi*(pop*pi_h + (1-pop)*pi_h_f) + (1-rho_i)*phi_y*(pop*(GDP - GDP(-1)) + (1-pop)*(GDP_f - GDP_f(-1))) + nu;
% interest = rho_i*interest(-1) + (1-rho_i)*phi_pi*(pop*pi_h + (1-pop)*pi_h_f) + (1-rho_i)*phi_y*(pop*(GDP - GDP(-1)) + (1-pop)*(GDP_f - GDP_f(-1))) + nu;

[name='Monetary policy shock, below eq. (39)']
nu    = rho_nu*nu(-1) + eps_nu;
[name='World output growth shock']
% y_star - y_star(-1) = rho_y_star*(y_star(-1) - y_star(-2)) + eps_y_star; %use growth rate rule for world output
y_star = 0;

% Estimation
y_obs = y - y(-1);
c_obs = c - c(-1);
w_obs = w - w(-1);
pi_obs = pi;
y_obs_ruk = y_f - y_f(-1);
c_obs_ruk = c_f - c_f(-1);
w_obs_ruk = w_f - w_f(-1);
pi_obs_ruk = pi_f;
end;

%----------------------------------------------------------------
%  define shock variances
%---------------------------------------------------------------
shocks;
% var eps_a = 0.25^2;
% var eps_a_f = 0.25^2;

% var eps_z = 0.25^2;
% var eps_z_f = 0.25^2;

var eps_nu = 0.25^2;
% var eps_y_star = 0.25^2;
% var p_star = 0.25^2;
end;

% estimated_params;

% % Home country
% rho_a, beta_pdf, 0.7, 0.1;
% rho_y_star, beta_pdf, 0.7, 0.1;
% rho_z,beta_pdf,0.7,0.1;

% % Foreign country
% rho_a_f, beta_pdf, 0.7, 0.1;
% rho_y_star_f, beta_pdf, 0.7, 0.1;
% rho_z_f,beta_pdf,0.7,0.1;

% rho_nu, beta_pdf, 0.7, 0.1;
% end;

% varobs y_obs c_obs w_obs y_obs_ruk c_obs_ruk pi_obs_ruk;

% estimation(datafile=DynareData, mh_replic=20000, mh_nblocks=1, smoother, diffuse_filter);

%----------------------------------------------------------------
%  steady states: all 0 due to linear model
%---------------------------------------------------------------
% resid(1);
% steady;
check;

%----------------------------------------------------------------
% generate IRFs, replicates Figures 8.1, p. 243
%----------------------------------------------------------------
stoch_simul(order = 1,irf=20) c r_real r_real_f yhat yhat_f pi_h pi_h_f s;