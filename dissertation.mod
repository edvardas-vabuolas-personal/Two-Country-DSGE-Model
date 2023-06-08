/*
 * This file implements the baseline New Keynesian SOE model of Chapter 8 of
 * Jordi Gali (2015): Monetary Policy, Inflation, and the Business Cycle, Princeton University Press, Second Edition.

 * Notes:
 * - all model variables are expressed in deviations from steady state, i.e. in contrast to
 *      to the chapter, both the nominal interest rate and natural output are not in log-levels, but rather mean 0
 * - In contrast to earlier chapters, eta in Chapter 8 is the trade elasticity, not the semi-elasticity of money demand
 */

@#define INCLUDE_FOREIGN_COUNTRY = 1

var 

% Home country
y_gap       ${\tilde{y}}$   (long_name='output gap')
pi_h        ${\pi_H}$       (long_name='domestic inflation')
i           ${i}$           (long_name='nominal interest rate')
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
r_real_ann  ${r^{r,ann}}$   (long_name='annualized real interest rate')
i_ann       ${i^{ann}}$     (long_name='annualized nominal interest rate')
r_nat_ann   ${r^{nat,ann}}$ (long_name='annualized natural interest rate')
pi_ann      ${\pi^{ann}}$   (long_name='annualized CPI inflation rate')
pi_h_ann    ${\pi_H^{ann}}$ (long_name='annualized domestic inflation rate')

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
nu_f          ${\nu^f}$         (long_name='AR(1) monetary policy shock process')
z_f           ${z^f}$           (long_name='AR(1) preference shock process')
r_real_ann_f  ${r^{f,r,ann}}$   (long_name='annualized real interest rate')
i_ann_f       ${i^{f,ann}}$     (long_name='annualized nominal interest rate')
r_nat_ann_f   ${r^{f,nat,ann}}$ (long_name='annualized natural interest rate')
pi_ann_f      ${\pi^{f,ann}}$   (long_name='annualized CPI inflation rate')
pi_h_ann_f    ${\pi_H^{f,ann}}$ (long_name='annualized domestic inflation rate')
;

varexo 

% Home country shocks
eps_nu       ${\varepsilon^\nu}$     (long_name='monetary policy shock')
eps_a        ${\varepsilon^a}$       (long_name='technology shock')
%        eps_y_star   ${\varepsilon^y}$       (long_name='world output growth shock')
eps_z        ${\varepsilon^z}$       (long_name='preference shock')
p_star       ${p^*}$                 (long_name='world price level')

% Foreign country shocks
eps_nu_f       ${\varepsilon^{f,\nu}}$     (long_name='monetary policy shock')
eps_a_f        ${\varepsilon^{f,a}}$       (long_name='technology shock')
eps_z_f        ${\varepsilon^{f,z}}$       (long_name='preference shock')

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
rho_nu_f          ${\rho_{\nu}}$  (long_name='autocorrelation monetary policy shock')
rho_y_star_f      ${\rho_{y^*}}$  (long_name='autocorrelation world output growth shock')
rho_z_f           ${\rho_{z}}$    (long_name='autocorrelation preference shock')
phi_pi_f          ${\phi_{\pi}}$  (long_name='inflation feedback Taylor Rule')
phi_y_f           ${\phi_{y}}$    (long_name='output feedback Taylor Rule')

;

%----------------------------------------------------------------
% Parametrization
%----------------------------------------------------------------

% Home country

betta   = 0.99;
siggma  = 1;
varphi  = 5;
alppha  = 1/4;
epsilon = 9;
theta   = 3/4;
upsilon = 0.4;
rho_nu  = 0.5;
rho_a   = 0.9;
rho_y_star  = 0;
phi_pi  = 1.5;
phi_y   = 0.5/4;
eta     = 1;
rho_z   = 0.5;

% Foreign country
betta_f   = 0.99;
siggma_f  = 1;
varphi_f  = 5;
alppha_f  = 1/4;
epsilon_f = 6;
theta_f   = 3/4;
upsilon_f = 0.4;
rho_nu_f  = 0.5;
rho_a_f   = 0.9;
rho_y_star_f  = 0;
phi_pi_f  = 1.5;
phi_y_f   = 0.5/4;
eta_f     = 1;
rho_z_f   = 0.5;

%----------------------------------------------------------------
% First Order Conditions
%----------------------------------------------------------------
model(linear); 
%Composite parameters
#Omega_f    =(1-alppha_f)/(1-alppha_f+alppha_f*epsilon_f);        %p. 233
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
#Omega    =(1-alppha)/(1-alppha+alppha*epsilon);        %p. 233
#lambda   =(1-theta)*(1-betta*theta)/theta*Omega;       %p. 233
#omega    = siggma*eta + (1-upsilon)*(siggma*eta-1);    %p. 235
#Phi = 1 / (1+upsilon*(omega-1));                       %p. 235
#siggma_upsilon = siggma*Phi;                           %p. 235
#Gamma_a  = (1+varphi)/(siggma_upsilon*(1-alppha)+varphi+alppha);                                          %p. 238
#Gamma_star  = - upsilon*(omega-1)*siggma_upsilon*(1-alppha)/(siggma_upsilon*(1-alppha)+varphi+alppha);    %p. 238
#Gamma_z  = - upsilon*omega*Phi*(1-alppha)/(siggma_upsilon*(1-alppha)+varphi+alppha);                      %p. 238   
#kappa_upsilon  = lambda*(siggma_upsilon+(varphi+alppha)/(1-alppha));                                      %p. 238 bottom
#Phi_star=siggma_upsilon*(upsilon*(omega-1)+Gamma_star);                                                %p. 239
#Phi_z=(1-upsilon)*Phi-siggma_upsilon*Gamma_z;                                                          %p. 239        

% HOME COUNTRY
[name='New Keynesian Phillips Curve (eq. 37)']
pi_h  = betta*pi_h(+1) + kappa_upsilon*y_gap;
[name='Dynamic IS Curve (eq. 29)']
y_gap = y_gap(+1) - 1/siggma_upsilon*(i-pi_h(+1)-r_nat);
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
r_real= i - pi_h(+1);
[name='Monetary policy shock, below eq. (39)']
nu    = rho_nu*nu(-1) + eps_nu;
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
% [name='World output growth shock']
%y_star - y_star(-1) = rho_y_star*(y_star(-1) - y_star(-2)) + eps_y_star; %use growth rate rule for world output
y_star  =   0;
[name='Annualized nominal interest rate']
i_ann=4*i;
[name='Annualized real interest rate']
r_real_ann=4*r_real;
[name=' Annualized natural interest rate']
r_nat_ann=4*r_nat;
[name='Annualized CPI inflation']
pi_ann=4*pi;
[name='Annualized domestic inflation']
pi_h_ann=4*pi_h;
[name='Output deviation from steady state']
yhat=y-steady_state(y);
[name='Domestic price level, p. 229']
p_h   = p_h(-1) + pi_h;
[name='CPI definition']
p     = p(-1) + pi;
[name='Nominal exchange rate']
s     = er + p_star -  p_h ;
[name='Definiion exchange rate growth']
d_er=er-er(-1);

% i  = phi_pi*(pi_h(-1) + pi_h_f(-1)) + phi_y*(yhat(-1) + yhat_f(-1))+ 0.5*(nu + nu_f);
i  = phi_pi*(pi_h(-1) + pi_h_f(-1)) + phi_y*(yhat(-1) + yhat_f(-1)) + 0.5*(pi_h(-1) - pi_h(-2)) + 0.5*(pi_h_f(-1) - pi_h_f(-2)) + 0.5*(yhat(-1) - yhat(-2)) + 0.5*(yhat_f(-1) - yhat_f(-2)) + 0.5*(nu + nu_f);


    % FOREIGN COUNTRY
[name='FOREIGN New Keynesian Phillips Curve (eq. 37)']
pi_h_f  = betta_f*pi_h_f(+1) + kappa_upsilon_f*y_gap_f;
[name='FOREIGN Dynamic IS Curve (eq. 29)']
y_gap_f = y_gap_f(+1) - 1/siggma_upsilon_f*(i-pi_h_f(+1)-r_nat_f);
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
r_real_f = i - pi_h_f(+1);
% r_real_f = i - pi_h_f(+1);
[name='FOREIGN Monetary policy shock, below eq. (39)']
nu_f    = rho_nu_f*nu_f(-1) + eps_nu_f;
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
% [name='FOREIGN World output growth shock']
%y_star - y_star(-1) = rho_y_star*(y_star(-1) - y_star(-2)) + eps_y_star; %use growth rate rule for world output
% y_star  =   0;
[name='FOREIGN Annualized nominal interest rate']
i_ann_f=4*i;
% i_ann_f=4*i;
[name='FOREIGN Annualized real interest rate']
r_real_ann_f=4*r_real_f;
[name='FOREIGN  Annualized natural interest rate']
r_nat_ann_f=4*r_nat_f;
[name='FOREIGN Annualized CPI inflation']
pi_ann_f=4*pi_f;
[name='FOREIGN Annualized domestic inflation']
pi_h_ann_f=4*pi_h_f;
[name='FOREIGN Output deviation from steady state']
yhat_f=y_f-steady_state(y_f);
[name='FOREIGN Domestic price level, p. 229']
p_h_f   = p_h_f(-1) + pi_h_f;
[name='FOREIGN CPI definition']
p_f     = p_f(-1) + pi_f;
[name='FOREIGN Nominal exchange rate']
s_f     = er_f + p_star -  p_h_f ;
[name='FOREIGN Definiion exchange rate growth']
d_er_f=er_f-er_f(-1);

end;

%----------------------------------------------------------------
%  define shock variances
%---------------------------------------------------------------
shocks;
    var eps_nu = 0.25^2; //1 standard deviation shock of 25 basis points, i.e. 1 percentage point annualized
    var eps_nu_f = 0.25^2; //1 standard deviation shock of 25 basis points, i.e. 1 percentage point annualized
end;

%----------------------------------------------------------------
%  steady states: all 0 due to linear model
%---------------------------------------------------------------
steady;
check;

%----------------------------------------------------------------
% generate IRFs, replicates Figures 8.1, p. 243
%----------------------------------------------------------------
stoch_simul(order = 1,irf=15) y_gap y_gap_f;