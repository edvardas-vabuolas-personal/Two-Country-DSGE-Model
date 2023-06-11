text_set = """
r_nat = -siggma_upsilon*Gamma_a*(1-rho_a)*a + Phi_star*(y_star(+1)-y_star) + Phi_z*(1-rho_z)*z;
"""

text_set_two = """
r_nat_f = -siggma_upsilon_f*Gamma_a_f*(1-rho_a_f)*a_f + Phi_star_f*(y_star(+1)-y_star) + Phi_z_f*(1-rho_z_f)*z_f;
"""

text_set = text_set.replace(" ","").replace("\t","")
text_set_two = text_set_two.replace(" ","").replace("_f","").replace("\t","").replace("FOREIGN","")

# print(text_set)

index = 0
while index < len(text_set):
    char1 = text_set[index]
    char2 = text_set_two[index]
    if char1 != char2:
        print(char1, char2)
        
    index += 1