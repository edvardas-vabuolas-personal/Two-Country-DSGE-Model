text_set = """
    s_nat = siggma_upsilon * (y_nat - y_star) - (1 - upsilon) * Phi * z - tau_ss * siggma_upsilon * g;
"""

text_set_two = """
    s_nat_f = siggma_upsilon_f * (y_nat_f - y_star_f) - (1 - upsilon_f) * Phi * z_f - tau_ss_f * siggma_upsilon_f * g_f;
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