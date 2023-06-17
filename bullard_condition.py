def get_omega(alpha, epsilon):
    return (1-alpha)/(1-alpha + alpha*epsilon)

def get_lambda(theta, beta, omega):
    return ((1-theta)*(1-beta*omega)/theta) * omega

def get_kappa(lambbda, sigma, phi, alpha):
    return lambbda*(sigma+(phi+alpha)/(1+alpha))

beta = 0.99
theta = 3/4
phi_pi = 1.5
phi_y = 0.75

res_dict = {}

idx = 0
for alpha in [0.2, 0.3, 0.4, 0.5]:
    for epsilon in range(3, 15):
        for sigma in [0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 2]:
            for phi in range(2, 11):
                res = get_kappa(get_lambda(theta, beta, get_omega(alpha, epsilon)), sigma, phi, alpha)*(phi_pi-1) + (1-beta)*phi_y
                if res > 0:
                    res_dict[idx] = {
                        'beta': beta,
                        'theta': theta,
                        'phi_pi': phi_pi,
                        'phi_y': phi_y,
                        'alpha': alpha,
                        'epsilon': epsilon,
                        'sigma': sigma,
                        'phi': phi
                    }
                idx += 1
                
print(res_dict[2000])