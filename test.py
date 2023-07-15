text_set = """
        #Gamma_tau = (-tau_ss_uk * (1 - alppha)) / ((1 - tau_ss_uk) * (siggma_upsilon * Y_C_SS * (1 - alppha) + varphi + alppha));
"""

text_set_two = """
        #Gamma_tau_f = (-tau_ss_uk * (1 - alppha_f)) / ((1 - tau_ss_uk) * (siggma_upsilon_f * Y_C_SS_f * (1 - alppha_f) + varphi_f + alppha_f));
"""

text_set = text_set.replace(" ","").replace("\t","")
text_set_two = text_set_two.replace(" ","").replace("_f","").replace("\t","").replace("FOREIGN","")

# print(text_set)

index = 0
while index < len(text_set):
    char1 = text_set[index]
    char2 = text_set_two[index]
    if char1 != char2:
        print(index, text_set[index-10:index], text_set_two[index-10:index])
        break
    index += 1