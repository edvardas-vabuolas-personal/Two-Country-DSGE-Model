var

c_sct, c_eng,
pi_sct, pi_eng,
y_sct, y_eng,
e_p_sct, e_p_eng,
e_i,
a_sct, a_eng,
i,
tau_sct, tau_eng,
y_nat_sct, y_nat_eng,
s_sct, s_eng

;

varexo

eta_p_sct, eta_p_eng,
eta_a_sct, eta_a_eng,
eta_i

;

parameters

gamma_sct, gamma_eng,
sigma_sct, sigma_eng,
phi_sct, phi_eng,
w_sct, w_eng,
rho_p_sct, rho_p_eng,
rho_a_sct, rho_a_eng,
rho_i,
xi_sct, xi_eng,
beta_sct, beta_eng,
alpha_sct, alpha_eng,
theta_sct, theta_eng,
psi_i, psi_pi, psi_y

;

gamma_sct = 0.6; gamma_eng = 0.6;
sigma_sct = 1.5; sigma_eng = 1.5;
phi_sct = 2.5; phi_eng = 2.5;
w_sct = 0.2; w_eng = 0.2;
rho_p_sct = 0.51; rho_p_eng = 0.51;
rho_a_sct = 0.66; rho_a_eng = 0.66;
xi_sct = 0.28; xi_eng = 0.28;
beta_sct = 0.99; beta_eng = 0.99;
alpha_sct = 1/3; alpha_eng = 1/3;
theta_sct = 10; theta_eng = 10;
psi_i = 0.5; psi_pi = 0.5; psi_y = 0.5;
rho_i = 0.5;

model;
//Composite parameters
#PSI_SCT = ((1-w_sct)*(1+phi_sct*w_sct*s_sct) + phi_sct*(1-w_eng)*(1-w_sct*s_sct))/(w_sct-w_eng);
#PSI_ENG = ((w_eng)*(1+phi_eng*(1-w_eng)*s_eng) + w_eng*phi_eng*(1-w_eng)*(s_eng))/(w_sct-w_eng);
//38. Home Marginal Cost
#mc_sct = ((sigma_sct/(1-gamma_sct))+phi_sct*w_sct*s_sct)*c_sct - ((gamma_sct*sigma_sct)/(1-gamma_sct))*c_sct(-1) + phi_sct*(1-w_sct*s_sct)*c_eng - (1+phi_sct)*a_sct + ((1-w_sct)*w_sct*s_sct + (1-w_eng)*(1-w_sct*s_sct))*tau_sct;
//44. Foreign Marginal Cost
#mc_eng = ((sigma_eng/(1-gamma_eng))+phi_eng*(1-w_eng)*s_eng)*c_eng - ((gamma_eng*sigma_eng)/(1-gamma_eng))*c_eng(-1) + phi_eng*(1-(1-w_eng)*s_eng)*c_sct - (1+phi_eng)*a_eng + (w_sct*(1+phi_eng*(1-(1-phi_eng)*s_eng)))+(w_eng*phi_eng*(1-w_eng)*s_eng)*tau_sct;

//36. Home IS Curve
c_sct = gamma_sct/(1+gamma_sct)*c_sct(-1)+1/(1+gamma_sct)*c_sct(+1) - (1-gamma_sct)/((1+gamma_sct)*sigma_sct)*(i-pi_sct(+1)) - (((1-gamma_sct)*(1-w_sct))/((1+gamma_sct)*sigma_sct))*(tau_sct(+1)-tau_sct)+(((1-rho_p_sct)*(1-gamma_sct))/((1+gamma_sct)*sigma_sct))*e_p_sct;
//37. Home Phillips Curve
pi_sct = (xi_sct/(1+beta_sct*xi_sct))*pi_sct(-1) + (beta_sct/(1+beta_sct*xi_sct))*pi_sct(+1) + (((1-beta_sct*alpha_sct)*(1-alpha_sct))/(1+beta_sct*xi_sct)*alpha_sct)*mc_sct;
//39. Home aggregate output
y_sct = ((1-w_sct)*w_sct*s_sct + (1-w_eng)*(1-w_sct*s_sct))*tau_sct + w_sct*s_sct*c_sct + (1-w_sct*s_sct)*c_eng;
//40. Home preference shock
e_p_sct = rho_p_sct*e_p_sct(-1) + eta_p_sct;
//41. Home technology shock
a_sct = rho_a_sct*a_sct(-1) + eta_a_sct;
//42. Foreign IS Curve
c_eng = gamma_eng/(1+gamma_eng)*c_eng(-1)+1/(1+gamma_eng)*c_eng(+1) - (1-gamma_eng)/((1+gamma_eng)*sigma_eng)*(i-pi_eng(+1)) - (((1-gamma_eng)*(1-w_eng))/((1+gamma_eng)*sigma_eng))*(tau_eng(+1)-tau_eng)+(((1-rho_p_eng)*(1-gamma_eng))/((1+gamma_eng)*sigma_eng))*e_p_eng;
//43. Foreign Phillips Curve
pi_eng = (xi_eng/(1+beta_eng*xi_eng))*pi_eng(-1) + (beta_eng/(1+beta_eng*xi_eng))*pi_eng(+1) + (((1-beta_eng*alpha_eng)*(1-alpha_eng))/(1+beta_eng*xi_eng)*alpha_eng)*mc_eng;
//45. Foreign aggregate output
y_eng = (1-(1-w_eng)*s_eng)*c_sct + (1-w_eng)*s_eng*c_eng - (w_sct*(1-(1-w_eng)*s_eng) + w_eng*(1-w_eng)*s_eng)*tau_sct;
//46. Foreign preference shock
e_p_eng = rho_p_eng*e_p_eng(-1) + eta_p_eng;
//47. Foreign technology shock
a_eng = rho_a_eng*a_eng(-1) + eta_a_eng;
//48. Terms of Trade
tau_sct = (1/(w_sct-w_eng))*((sigma_sct/(1-gamma_sct))*c_sct - (gamma_sct*sigma_sct/(1-gamma_sct))*c_sct(-1) - (sigma_eng/(1-gamma_eng))*c_eng + (gamma_eng*sigma_eng/(1-gamma_eng))*c_eng(-1) + e_p_eng - e_p_sct);
//s_sct and s_eng
s_sct = c_sct/y_sct;
s_eng = c_eng/y_eng;
//49. Home Feedback Rule
i = psi_i*i(-1)+(1-psi_i)*(psi_pi*pi_sct+psi_y*(y_sct-y_nat_sct))+e_i;
//50. Home Natural Level of output
y_nat_sct = (w_sct*s_sct + sigma_sct*PSI_SCT/(1-gamma_sct))*c_sct - (gamma_sct*sigma_sct*PSI_SCT/(1-gamma_sct))*c_sct(-1) + (1-w_sct*s_sct-sigma_eng*PSI_SCT/(1-gamma_eng))*c_eng + (gamma_eng*sigma_eng*PSI_SCT/(1-gamma_eng))*c_eng(-1) + PSI_SCT*(e_p_eng - e_p_sct);
//51. Foreign Natural Level of output
y_nat_eng = (1-(1-w_eng)*s_eng + sigma_sct*PSI_ENG/(1-gamma_sct))*c_sct + (gamma_sct*sigma_sct*PSI_ENG/(1-gamma_sct))*c_sct(-1) + ((1-w_eng)*s_eng+sigma_eng*PSI_ENG/(1-gamma_eng))*c_eng + (gamma_eng*sigma_eng*PSI_ENG/(1-gamma_eng))*c_eng(-1) - PSI_ENG*(e_p_eng - e_p_sct);
//52. Interest rate evolution
e_i = rho_i*e_i(-1) + eta_i;
//53. Foreign Feedback Rule
i = psi_i*i(-1)+(1-psi_i)*(psi_pi*pi_eng+psi_y*(y_eng-y_nat_eng))+e_i;
end;

shocks;
var eta_p_sct = 0.25;
end;

% resid;
% steady;
% check;

stoch_simul(order=1, irf=15) y_sct;