var y_gap       ${\tilde{y}}$   (long_name='output gap')
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
    ;

varexo eps_nu       ${\varepsilon^\nu}$     (long_name='monetary policy shock')
       eps_a        ${\varepsilon^a}$       (long_name='technology shock')
%        eps_y_star   ${\varepsilon^y}$       (long_name='world output growth shock')
       eps_z        ${\varepsilon^z}$       (long_name='preference shock')
       p_star       ${p^*}$                 (long_name='world price level')
       ;

parameters betta    ${\beta}$       (long_name='discount factor')
    siggma          ${\sigma}$      (long_name='inverse EIS')
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
    ;

%----------------------------------------------------------------
% Parametrization
%----------------------------------------------------------------
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
rho_z   =0.5;
%----------------------------------------------------------------
% First Order Conditions
%----------------------------------------------------------------
model(linear); 
%Composite parameters
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
r_real = interest - pi_h(+1);
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
[name='World output growth shock']
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

//Set policy rule according to Chapter 8.5                
[name='Interest Rate Rule (eq. 39) (FDIT)']
i  = phi_pi*pi_h + phi_y*yhat + nu;
end;

%----------------------------------------------------------------
%  define shock variances
%---------------------------------------------------------------
shocks;
    var eps_nu = 0.25^2; //1 standard deviation shock of 25 basis points, i.e. 1 percentage point annualized
end;

%----------------------------------------------------------------
%  steady states: all 0 due to linear model
%---------------------------------------------------------------
steady;
check;

%compute variances for relevant variables
stoch_simul(order = 1,irf=25) y c w i r_real pi_h pi s d_er ;
