///// Two-country DSGE Model /////
// Loes Verstegen 04/06/2014 //

// Complete model with monetary policy and distortionary consumption taxes and capital income taxes //

/// LABELLING BLOCK ///


var 
y_i, y_j,                   // output
y_D_i, y_D_j,               // output in tradables
y_N_i, y_N_j,               // output in nontradables
c_i, c_j,                   // consumption
x_i, x_j,                   // internal terms of trade
i_i, i_j,                   // investment
g_i, g_j,                   // government spending
tax_i, tax_j,               // taxes
pi_C_i, pi_C_j,             // CPI inflation
k_i, k_j,                   // capital
r_K_i, r_K_j,               // rental rate of capital
w_i, w_j,                   // real wage
l_i, l_j,                   // labor input
q_T_i, q_T_j,               // Tobin's Q
MRS_i, MRS_j,               // marginal rate of substitution
pi_D_i, pi_D_j,             // inflation of domestic tradables
pi_N_i, pi_N_j,             // inflation of nontradables
MC_D_i, MC_D_j,             // real marginal costs in tradables
MC_N_i, MC_N_j,             // real marginal costs in nontradables
pi_T_i, pi_T_j,             // inflation in tradables
t,                          // terms of trade
r,r_j                       // nominal interest rate (union-wide)
q,                          // real exchange rate
y_EMU,                      // union-wide output
pi_C_EMU,                   // union-average inflation rate
tr_i, tr_j                  // fiscal transfers received
d_i, d_j                    // government bonds
tauC_i, tauC_j              // consumption tax rate
tauK_i, tauK_j              // capital income tax rate
a_D_i, a_D_j,               // shock process productivity domestic tradables
a_N_i, a_N_j,               // shock process productivity nontradables
epsilon_C_i, epsilon_C_j,   // shock process consumption preferences
epsilon_L_i, epsilon_L_j,   // shock process labor supply 
epsilon_I_i, epsilon_I_j;   // shock process investment efficiency

varexo 
u_a_D_i u_a_D_j     
u_a_N_i u_a_N_j 
u_C_i u_C_j 
u_L_i u_L_j 
u_I_i u_I_j 
u_G_i u_G_j 
u_T_i u_T_j 
u_R;

parameters
sigma         // Inverse elasticity of intertemporal substitution
phi           // Inverse elasticity of labor supply
beta          // Discount factor
gammaC        // Share of tradable goods in consumption
alpha         // Home bias (share of domestic tradable goods)
gammaI        // Share of tradable goods in investment
delta         // Capital depreciation rate
S             // Adjustment costs of capital
eta           // Output elasticity with respect to capital
deltaW        // Degree of partial indexation in wages
thetaW        // Calvo parameter for households
deltaD        // Degree of partial indexation in domestic tradable goods           
thetaD        // Calvo parameter for tradable sector
deltaN        // Degree of partial indexation in nontradable goods
thetaN        // Calvo parameter for nontradable sector
h             // Habit formation
phiW          // Elasticity of substitution across varieties of labor
rhotau        // Consumption tax rate smoothing
rhodebt       // Responsiveness of consumption tax rate to government debt

sigma_j
phi_j
beta_j
gammaC_j
alpha_j
gammaI_j
delta_j
S_j
eta_j
deltaW_j
thetaW_j
deltaD_j
thetaD_j
deltaN_j
thetaN_j
h_j
phiW_j
rhotau_j
rhodebt_j

n             // Relative size of the domestic economy
rho           // Interest rate smoothing
rho_j
psiY          // Elasticity of interest rate to output
psiPI         // Elasticity of interest rate to inflation
psiFPI
psiTR         // Elasticity of transfer to difference in output gaps
psiY_j        
psiPI_j
psiFPI_j

// Parameters related to shocks
rhoG          // Persistence of shocks in government expenditures
rhoT          // Persistence of shocks in taxes
rhoD          // Persistence of productivity shock in domestic tradables
rhoN          // Persistence of productivity shock in nontradables
rhoC          // Persistence of consumer preference shock
rhoL          // Persistence of labor supply shock
rhoI          // Persistence of investment efficiency shock
rhoG_j
rhoT_j
rhoD_j
rhoN_j
rhoC_j
rhoL_j
rhoI_j

sigmaG        // Standard deviation of shocks in government expenditures
sigmaT        // Standard deviation of shocks in taxes
sigmaD        // Standard deviation of productivity shocks in tradables
sigmaN        // Standard deviation of productivity shocks in nontradables
sigmaC        // Standard deviation of consumer preference shock
sigmaL        // Standard deviation of labor supply shock
sigmaI        // Standard deviation of shocks in investment efficiency
sigmaR        // Standard deviation of monetary shocks
sigmaG_j
sigmaT_j
sigmaD_j
sigmaN_j
sigmaC_j
sigmaL_j
sigmaI_j


// steady state values 
Y_D_Y_ss
Y_N_Y_ss
C_Y_ss
I_Y_ss
G_Y_ss
D_Y_ss
TAX_Y_ss
TR_Y_ss
TC_TAX_ss
TK_TAX_ss

Y_D_Y_ss_j
Y_N_Y_ss_j
C_Y_ss_j
I_Y_ss_j
G_Y_ss_j
D_Y_ss_j
TAX_Y_ss_j
TR_Y_ss_j
TC_TAX_ss_j
TK_TAX_ss_j
;

//load parameters;
//set_param_value('alpha', alpha);
//set_param_value('alpha_j', alpha_j);

sigma = 1.5; sigma_j = 1.5;  
phi = 2; phi_j = 2;
beta = 0.9975; beta_j = 0.9975;       
gammaC = 0.5424; gammaC_j = 0.5424;     
alpha = 0.8; alpha_j = 0.8;        
gammaI = 0.4956; gammaI_j = 0.4956;     
delta = 0.1; delta_j = 0.1;    
S = 4; S_j = 4;              
eta = 0.3868; eta_j = 0.3868;        
deltaW = 0.1; deltaW_j = 0.1;      
thetaW = 0.7; thetaW_j = 0.7;     
deltaD = 0.1; deltaD_j = 0.1;               
thetaD = 0.7; thetaD_j = 0.7;   
deltaN = 0.1; deltaN_j = 0.1;   
thetaN = 0.7; thetaN_j = 0.7;    
h = 0.5; h_j = 0.5;
phiW = 3; phiW_j = 3;
rhotau = 0.7; rhotau_j = 0.7;
rhodebt = 0.7; rhodebt_j = 0.7;

n = 0.5;             
rho = 0.7;
rho_j = 0.7;    
psiY = 1;          
psiPI = 4;
psiFPI = 0.35;
psiY_j = 1;          
psiPI_j = 4;
psiTR = 0.0;
psiFPI_j = 0.35;

rhoG = 0.7;        
rhoT = 0.7;        
rhoD = 0.7;          
rhoN = 0.7;         
rhoC = 0.7;        
rhoL = 0.7;          
rhoI = 0.7;          
rhoG_j = 0.7;
rhoT_j = 0.7;
rhoD_j = 0.7;
rhoN_j = 0.7;
rhoC_j = 0.7;
rhoL_j = 0.7;
rhoI_j = 0.7;

sigmaG = 0.1;        
sigmaT = 0.1;       
sigmaD = 0.1;       
sigmaN = 0.1;       
sigmaC = 0.1;       
sigmaL = 0.1;      
sigmaI = 0.1;       
sigmaR = 0.1;       
sigmaG_j = 0.1;
sigmaT_j = 0.1;
sigmaD_j = 0.1;
sigmaN_j = 0.1;
sigmaC_j = 0.1;
sigmaL_j = 0.1;
sigmaI_j = 0.1;


// Steady states variables in shares of GDP
C_Y_ss = 0.4946;
I_Y_ss = 0.2620;
G_Y_ss = 1 - C_Y_ss - I_Y_ss;
Y_N_Y_ss = (1-gammaC)*C_Y_ss + (1-gammaI)*I_Y_ss + G_Y_ss;
Y_D_Y_ss = 1 - Y_N_Y_ss;

D_Y_ss = 0.8;
TAX_Y_ss = 0.4;
TR_Y_ss = 0.02;

C_Y_ss_j = 0.4946;
I_Y_ss_j = 0.2620;
G_Y_ss_j = 1 - C_Y_ss_j - I_Y_ss_j;
Y_N_Y_ss_j = (1-gammaC_j)*C_Y_ss_j + (1-gammaI_j)*I_Y_ss_j + G_Y_ss_j;
Y_D_Y_ss_j = 1 - Y_N_Y_ss_j;

D_Y_ss_j = 0.8;
TAX_Y_ss_j = 0.4;
TR_Y_ss_j = 0.02;

TC_TAX_ss = 0.5;
TC_TAX_ss_j = 0.5;
TK_TAX_ss = 0.5;
TK_TAX_ss_j = 0.5;


/// MODEL EQUATIONS ///

model;

// 1.-6. Market Clearing Conditions
y_D_i = (C_Y_ss/Y_D_Y_ss)*n*gammaC*alpha*(c_i + (1-gammaC)*x_i + (1-alpha)*t) + (I_Y_ss/Y_D_Y_ss)*n*gammaI*alpha*(i_i + (1-gammaI)*x_i + (1-alpha)*t) + (C_Y_ss_j/Y_D_Y_ss)*(1-n)*gammaC_j*(1-alpha_j)*(c_j + (1-gammaC_j)*x_j + alpha_j*t) + (I_Y_ss_j/Y_D_Y_ss)*(1-n)*gammaI_j*(1-alpha_j)*(i_j + (1-gammaI_j)*x_j + alpha_j*t);

y_D_j = (C_Y_ss_j/Y_D_Y_ss_j)*(1-n)*gammaC_j*alpha_j*(c_j + (1-gammaC_j)*x_j - (1-alpha_j)*t) + (I_Y_ss_j/Y_D_Y_ss_j)*(1-n)*gammaI_j*alpha_j*(i_j + (1-gammaI_j)*x_j - (1-alpha_j)*t) + (C_Y_ss/Y_D_Y_ss_j)*n*gammaC*(1-alpha)*(c_i + (1-gammaC)*x_i - alpha*t) + (I_Y_ss/Y_D_Y_ss_j)*n*gammaI*(1-alpha)*(i_i + (1-gammaI)*x_i - alpha*t);

y_N_i = (C_Y_ss/Y_N_Y_ss)*(1-gammaC)*(c_i - gammaC*x_i) + (I_Y_ss/Y_N_Y_ss)*(1-gammaI)*(i_i - gammaI*x_i) + (G_Y_ss/Y_N_Y_ss)*g_i;

y_N_j = (C_Y_ss_j/Y_N_Y_ss_j)*(1-gammaC_j)*(c_j - gammaC_j*x_j) + (I_Y_ss_j/Y_N_Y_ss_j)*(1-gammaI_j)*(i_j - gammaI_j*x_j) + (G_Y_ss_j/Y_N_Y_ss_j)*g_j;

y_i = Y_D_Y_ss*y_D_i + Y_N_Y_ss*y_N_i;

y_j = Y_D_Y_ss_j*y_D_j + Y_N_Y_ss_j*y_N_j;


// 7.-8. Euler Equations
c_i-h*c_i(-1) = c_i(+1) - h*c_i - (1-h)/sigma * (r - pi_C_i(+1)) +(1-h)/sigma*(epsilon_C_i - epsilon_C_i(+1)) + (1-h)/sigma*(tauC_i - tauC_i(+1));

c_j-h_j*c_j(-1)=c_j(+1)-h_j*c_j -(1-h_j)/sigma_j*(r_j - pi_C_j(+1)) + (1-h_j)/sigma_j *(epsilon_C_j - epsilon_C_j(+1)) + (1-h_j)/sigma_j*(tauC_j - tauC_j(+1));


// 9. International Risk Sharing Condition
q = epsilon_C_j - epsilon_C_i - sigma_j/(1-h_j)*(c_j - h_j * c_j(-1)) + sigma/(1-h)*(c_i - h*c_i(-1));


// 10.-11. Law for Capital Acumulation
k_i = (1-delta)*k_i(-1) + delta*(i_i + epsilon_I_i);

k_j = (1-delta_j)*k_j(-1)+ delta_j*(i_j +epsilon_I_j);


// 12.-13. Real Cost of Capital
r_K_i = w_i + l_i - k_i(-1);

r_K_j = w_j + l_j - k_j(-1);


// 14.-15. Investment Demand
i_i - i_i(-1) = beta*(i_i(+1)-i_i) + 1/S *(q_T_i + epsilon_I_i) -(gammaI-gammaC)/S*x_i;

i_j - i_j(-1) = beta_j*(i_j(+1)-i_j)+1/S_j*(q_T_j + epsilon_I_j)-(gammaI_j-gammaC_j)/S_j * x_j;


// 16.-17. Price of the Capital
q_T_i = beta*(1-delta)*q_T_i(+1)-(r - pi_C_i(+1)) +(1-beta*(1-delta))*(r_K_i(+1)-tauK_i(+1)+tauK_i);

q_T_j = beta_j *(1-delta_j) * q_T_j(+1) - (r_j -pi_C_j(+1)) + (1-beta_j*(1-delta_j))*(r_K_j(+1)-tauK_j(+1)+tauK_j);


// 18.-19. Labor Input
l_i = eta * (r_K_i - w_i) + Y_D_Y_ss * (y_D_i - a_D_i) + Y_N_Y_ss * (y_N_i - a_N_i);

l_j = eta_j * (r_K_j - w_j) + Y_D_Y_ss_j * (y_D_j - a_D_j) + Y_N_Y_ss_j * (y_N_j - a_N_j);


//20.-21. Real Wage Rate
w_i-w_i(-1)=(1-thetaW)*(1-beta*thetaW)/(thetaW*(1+phiW*phi))*(MRS_i-w_i)+ beta*(w_i(+1)-w_i)+beta*(pi_C_i(+1)-deltaW*pi_C_i) -(pi_C_i - deltaW*pi_C_i(-1));

w_j-w_j(-1)=(1-thetaW_j)*(1-beta_j*thetaW_j)/(thetaW_j*(1+phiW_j*phi_j))*(MRS_j-w_j)+beta_j*(w_j(+1)-w_j)+beta_j*(pi_C_j(+1)-deltaW_j*pi_C_j)-(pi_C_j-deltaW_j*pi_C_j(-1));


//22.-23. Marginal Rate of Substitution
MRS_i = epsilon_L_i + phi*l_i - epsilon_C_i + sigma/(1-h)*(c_i-h*c_i(-1));

MRS_j = epsilon_L_j + phi_j*l_j - epsilon_C_j + sigma_j/(1-h_j)*(c_j - h_j*c_j(-1));


//24.-25. PC for Domestic Tradables
pi_D_i = (beta/(1+beta*deltaD))*pi_D_i(+1) + (deltaD/(1+beta*deltaD))*pi_D_i(-1) + ((1-thetaD)*(1-thetaD*beta)/(thetaD*(1+beta*deltaD)))*MC_D_i;

pi_D_j = (beta/(1+beta*deltaD))*pi_D_j(+1) + (deltaD/(1+beta*deltaD))*pi_D_j(-1) + ((1-thetaD)*(1-thetaD*beta)/(thetaD*(1+beta*deltaD)))*MC_D_j;


//26.-27. PC for Non-tradables
pi_N_i = (beta/(1+beta*deltaN))*pi_N_i(+1) + (deltaN/(1+beta*deltaN))*pi_N_i(-1) + ((1-thetaN)*(1-thetaN*beta)/(thetaN*(1+beta*deltaN)))*MC_N_i;

pi_N_j = (beta/(1+beta*deltaN))*pi_N_j(+1) + (deltaN/(1+beta*deltaN))*pi_N_j(-1) + ((1-thetaN)*(1-thetaN*beta)/(thetaN*(1+beta*deltaN)))*MC_N_j;


//28.-29. Real Marginal Costs in Tradable Sector
MC_D_i = (1-eta)*w_i + eta * r_K_i - a_D_i + (1-alpha)*t +(1-gammaC)*x_i;

MC_D_j = (1-eta_j)*w_j + eta_j*r_K_j- a_D_j -(1-alpha_j)*t+(1-gammaC_j)*x_j;


//30.-31. Real Marginal Costs in Non-tradable Sector
MC_N_i = (1-eta)*w_i + eta * r_K_i - a_N_i - gammaC*x_i;

MC_N_j = (1-eta_j)*w_j + eta_j * r_K_j - a_N_j - gammaC_j*x_j;


//32.-33. Internal Exchange Rate
x_i - x_i(-1) = pi_N_i - pi_T_i;

x_j - x_j(-1) = pi_N_j - pi_T_j;


//34.-35. Inflation of Tradables
pi_T_i = pi_D_i +(1-alpha)*(t-t(-1));

pi_T_j = pi_D_j -(1-alpha_j)*(t-t(-1));


//36.-37. CPI Inflation
pi_C_i = gammaC * pi_T_i + (1-gammaC)*pi_N_i;

pi_C_j = gammaC_j* pi_T_j + (1-gammaC_j)*pi_N_j;


//38. Real Exchange Rate
q = (alpha + alpha_j-1)*t + (1-gammaC_j)*x_j - (1 - gammaC)*x_i;


//39.-41. Monetary Policy Rule
r = rho*r(-1) + (1-rho)*(psiY*y_i(-1) + psiPI*(pi_C_i(-1))) + u_R;

r_j = rho_j*r_j(-1) + (1-rho_j)*(psiY*y_j(-1) + psiPI*(pi_C_j(-1))) + u_R;

y_EMU = n*y_i + (1-n)*y_j;
pi_C_EMU = n*pi_C_i + (1-n)*pi_C_j;


//42.-43. Government Budget Constraint
d_i - d_i(-1) = g_i - tax_i - tr_i - (d_i(-1) - r(-1));

d_j - d_j(-1) = g_j - tax_j - tr_j - (d_j(-1) - r_j(-1));


//44.-45. Government Expenditures
g_i = rhoG * g_i(-1) + u_G_i;

g_j = rhoG_j * g_j(-1) + u_G_j;


//46.-51. Taxes
tax_i = TC_TAX_ss*(tauC_i + c_i) + TK_TAX_ss*(tauK_i + r_K_i + k_i);

tax_j = TC_TAX_ss_j*(tauC_j + c_j) + TK_TAX_ss_j*(tauK_j + r_K_j + k_j);

tauC_i = rhotau*tauC_i(-1) + rhodebt*d_i(-1) + u_T_i;

tauC_j = rhotau_j*tauC_j(-1) + rhodebt_j*d_j(-1) + u_T_j;

tauK_i = rhotau*tauK_i(-1) + rhodebt*d_i(-1) + u_T_i;

tauK_j = rhotau_j*tauK_j(-1) + rhodebt_j*d_j(-1) + u_T_j; 


//50.-51. Transfer mechanism
tr_i = psiTR*(y_j - y_i);

tr_i = - tr_j;


//52.-53. Productivity Shock in Tradable Sector
a_D_i = rhoD * a_D_i(-1) - u_a_D_i;

a_D_j = rhoD_j * a_D_j(-1) - u_a_D_j;


//54.-55. Productivity Shock in Non-tradable Sector
a_N_i = rhoN * a_N_i(-1) - u_a_N_i;

a_N_j = rhoN_j * a_N_j(-1) - u_a_N_j;


//56.-57. Preference Shock
epsilon_C_i = rhoC * epsilon_C_i(-1) - u_C_i;

epsilon_C_j = rhoC_j * epsilon_C_j(-1) - u_C_j;


//58.-59. Labor Supply Shock
epsilon_L_i = rhoL * epsilon_L_i(-1) + u_L_i;

epsilon_L_j = rhoL_j * epsilon_L_j(-1) + u_L_j;


//60.-61. Investment Efficiency Shock
epsilon_I_i = rhoI * epsilon_I_i(-1) - u_I_i;

epsilon_I_j = rhoI_j * epsilon_I_j(-1) - u_I_j;

end;


// INITIAL VALUES

initval;

y_i = 0; y_j = 0;
y_D_i = 0; y_D_j = 0;
y_N_i = 0; y_N_j = 0;
c_i = 0; c_j = 0;
x_i = 0; x_j = 0;
i_i = 0; i_j = 0;
g_i = 0; g_j = 0;
//tax_i = 0; tax_j = 0;
pi_C_i = 0; pi_C_j = 0;
k_i = 0; k_j = 0;
r_K_i = 0; r_K_j = 0;
w_i = 0; w_j = 0;
l_i = 0; l_j = 0;
q_T_i = 0; q_T_j = 0;
MRS_i = 0; MRS_j = 0;
pi_D_i = 0; pi_D_j = 0;
pi_N_i = 0; pi_N_j = 0;
MC_D_i = 0; MC_D_j = 0;
MC_N_i = 0; MC_N_j = 0;
pi_T_i = 0; pi_T_j = 0;
t = 0;
r = 0; r_j = 0;
q = 0;
y_EMU = 0;
pi_C_EMU = 0;
tr_i = 0; tr_j = 0;                  
d_i = 0; d_j = 0;                   
a_D_i = 0; a_D_j = 0;
a_N_i = 0; a_N_j = 0;
epsilon_C_i = 0; epsilon_C_j = 0;
epsilon_L_i = 0; epsilon_L_j = 0;
epsilon_I_i = 0; epsilon_I_j = 0;
tauC_i = 0; tauC_j = 0;
tauK_i = 0; tauK_j = 0;
tax_i = 0; tax_j = 0;
 
end;

//steady;
check;

shocks;

//var u_a_D_i = sigmaD^2;
//var u_a_D_j = sigmaD_j^2;
//var u_a_N_i = sigmaN^2;
//var u_a_N_j = sigmaN_j^2;
//var u_C_i = sigmaC^2;
//var u_C_j = sigmaC_j^2;
//var u_L_i = sigmaL^2;
//var u_L_j = sigmaL_j^2;
//var u_I_i = sigmaI^2;
//var u_I_j = sigmaI_j^2;
//var u_G_i = sigmaG^2;
//var u_G_j = sigmaG_j^2;
//var u_T_i = sigmaT^2;
//var u_T_j = sigmaT_j^2;
var u_R = sigmaR^2;

end;

stoch_simul(order=1, nocorr, nomoments, irf=20) y_i y_j c_i c_j i_i i_j r r_j k_i k_j q t x_i x_j l_i l_j w_i w_j pi_C_i pi_C_j tr_i tr_j d_i d_j tax_i tax_j tauC_i tauC_j tauK_i tauK_j
y_D_i y_D_j y_N_i y_N_i q_T_i q_T_j MRS_i MRS_j pi_D_i pi_D_j pi_N_i pi_N_j MC_D_i MC_D_j MC_N_i MC_N_j pi_T_i pi_T_j ;




  
  
  


