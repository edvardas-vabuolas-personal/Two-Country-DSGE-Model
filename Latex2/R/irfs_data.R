f_one_df <- read.csv("~/Documents/University/Dissertation/IRFs/fiscal_scenario_1.csv", header=FALSE)
colnames(f_one_df) = c('Variable', seq(1:200))
f_one_df <- gather(f_one_df, key = "variable", value = "value", -Variable)
f_one_df <- subset(f_one_df, grepl("_eps_g_f", Variable))
f_one_df$Variable <- gsub('_eps_g_f', '', f_one_df$Variable, fixed=TRUE) 
f_one_df$Variable <- gsub('_eps_g', '', f_one_df$Variable, fixed=TRUE)

f_two_df_g_uk <- read.csv("~/Documents/University/Dissertation/IRFs/fiscal_scenario_2.csv", header=FALSE)
colnames(f_two_df_g_uk) = c('Variable', seq(1:200))
f_two_df_g_uk <- gather(f_two_df_g_uk, key = "variable", value = "value", -Variable)
f_two_df_g_uk$Variable <- gsub('_eps_g_uk', '', f_two_df_g_uk$Variable, fixed=TRUE) 


f_three_df <- read.csv("~/Documents/University/Dissertation/IRFs/fiscal_scenario_3.csv", header=FALSE)
colnames(f_three_df) = c('Variable', seq(1:200))
f_three_df <- gather(f_three_df, key = "variable", value = "value", -Variable)
f_three_df <- arrange(f_three_df, Variable)
f_three_df <- subset(f_three_df, grepl("_eps_g_f", Variable))
f_three_df$Variable <- gsub('_eps_g_f', '', f_three_df$Variable, fixed=TRUE) 
f_three_df$Variable <- gsub('_eps_g', '', f_three_df$Variable, fixed=TRUE)


f_four_df_g_uk <- read.csv("~/Documents/University/Dissertation/IRFs/fiscal_scenario_4.csv", header=FALSE)
colnames(f_four_df_g_uk) = c('Variable', seq(1:200))
f_four_df_g_uk <- gather(f_four_df_g_uk, key = "variable", value = "value", -Variable)
f_four_df_g_uk <- arrange(f_four_df_g_uk, Variable)
f_four_df_g_uk$Variable <- gsub('_eps_g_uk', '', f_four_df_g_uk$Variable, fixed=TRUE) 


m_four_df <- read.csv("~/Documents/University/Dissertation/IRFs/monetary_scenario_4.csv", header=FALSE)
colnames(m_four_df) = c('Variable', seq(1:200))
m_four_df <- gather(m_four_df, key = "variable", value = "value", -Variable)
m_four_df <- arrange(m_four_df, Variable)
m_four_df$Variable <- gsub('_eps_nu_uk', '', m_four_df$Variable, fixed=TRUE) 