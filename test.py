text_set = """
    TR_Y_SS * tr = phi_g * tau_ss * (p_f - g) + B_Y_SS * phi_b * b;
"""

text_set_two = """
    TR_Y_SS_f * tr_f = phi_g_f * tau_ss_f * (p_f - g_f) + B_Y_SS_f * phi_b_f * b_f;
"""

text_set = text_set.replace(" ","").replace("\t","")
text_set_two = text_set_two.replace(" ","").replace("_f","").replace("\t","").replace("FOREIGN","")

# print(text_set)

index = 0
while index < len(text_set):
    char1 = text_set[index]
    char2 = text_set_two[index]
    if char1 != char2:
        print(index, text_set[index-100:index], text_set_two[index-100:index])
        break
    index += 1