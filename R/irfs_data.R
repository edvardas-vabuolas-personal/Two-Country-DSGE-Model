library(ggplot2)
library(ggpubr)
library(reshape2)
library(tikzDevice)
library(readxl)
library(dplyr)
library(stringr)
library(tidyr)

f_one_df <-
  read.csv("~/Documents/University/Dissertation/IRFs/fiscal_scenario_1.csv",
           header = FALSE)
colnames(f_one_df) = c('Variable', seq(1:200))
f_one_df <-
  gather(f_one_df, key = "variable", value = "value",-Variable)
f_one_df_sct <- subset(f_one_df,!grepl("_eps_g_f", Variable))
f_one_df_ruk <- subset(f_one_df, grepl("_eps_g_f", Variable))
f_one_df_ruk$Variable <-
  gsub('_eps_g_f', '', f_one_df_ruk$Variable, fixed = TRUE)
f_one_df_sct$Variable <-
  gsub('_eps_g', '', f_one_df_sct$Variable, fixed = TRUE)

f_two_df_g_uk <-
  read.csv("~/Documents/University/Dissertation/IRFs/fiscal_scenario_2.csv",
           header = FALSE)
colnames(f_two_df_g_uk) = c('Variable', seq(1:200))
f_two_df_g_uk <-
  gather(f_two_df_g_uk, key = "variable", value = "value",-Variable)
f_two_df_g_uk$Variable <-
  gsub('_eps_g_uk', '', f_two_df_g_uk$Variable, fixed = TRUE)


f_three_df <-
  read.csv("~/Documents/University/Dissertation/IRFs/fiscal_scenario_3.csv",
           header = FALSE)
colnames(f_three_df) = c('Variable', seq(1:200))
f_three_df <-
  gather(f_three_df, key = "variable", value = "value",-Variable)
f_three_df_sct <- subset(f_three_df,!grepl("_eps_g_f", Variable))
f_three_df_ruk <- subset(f_three_df, grepl("_eps_g_f", Variable))
f_three_df_ruk$Variable <-
  gsub('_eps_g_f', '', f_three_df_ruk$Variable, fixed = TRUE)
f_three_df_sct$Variable <-
  gsub('_eps_g', '', f_three_df_sct$Variable, fixed = TRUE)


f_four_df_g_uk <-
  read.csv("~/Documents/University/Dissertation/IRFs/fiscal_scenario_4.csv",
           header = FALSE)
colnames(f_four_df_g_uk) = c('Variable', seq(1:200))
f_four_df_g_uk <-
  gather(f_four_df_g_uk, key = "variable", value = "value",-Variable)
f_four_df_g_uk <- arrange(f_four_df_g_uk, Variable)
f_four_df_g_uk$Variable <-
  gsub('_eps_g_uk', '', f_four_df_g_uk$Variable, fixed = TRUE)


m_four_df <-
  read.csv("~/Documents/University/Dissertation/IRFs/monetary_scenario_4.csv",
           header = FALSE)
colnames(m_four_df) = c('Variable', seq(1:200))
m_four_df <-
  gather(m_four_df, key = "variable", value = "value",-Variable)
m_four_df <- arrange(m_four_df, Variable)
m_four_df$Variable <-
  gsub('_eps_nu_uk', '', m_four_df$Variable, fixed = TRUE)

datasets <- c()
datasets$f_one <- f_one_df_sct
datasets$f_one_f <- f_one_df_ruk
datasets$f_two <- f_two_df_g_uk
datasets$f_three <- f_three_df_sct
datasets$f_three_f <- f_three_df_ruk
datasets$f_four <- f_four_df_g_uk
datasets$m_four <- m_four_df
rm(
  f_one_df,
  f_one_df_sct,
  f_one_df_ruk,
  f_two_df_g_uk,
  f_three_df,
  f_three_df_sct,
  f_three_df_ruk,
  f_four_df_g_uk,
  m_four_df
)

vars_of_interest <- list()
vars_of_interest$f_one <-
  list('g',
       's',
       'interest',
       'pi_h',
       'b',
       'tr',
       'y',
       'c',
       'n',
       'wp')
vars_of_interest$f_one_f <- vars_of_interest$f_one
vars_of_interest$f_two <-
  list('g_uk',
       'interest_uk',
       'interest',
       'pi_h',
       'b_uk',
       'tr_uk',
       'y',
       'c',
       'n',
       'wp')

vars_of_interest$f_three <-
  list('g', 'interest', 'tau', 'pi_h', 'b', 'tr', 'y', 'c', 'n', 'wp')
vars_of_interest$f_three_f <- vars_of_interest$f_three

vars_of_interest$f_four <-
  list('g_uk',
       'interest_uk',
       'tau_uk',
       'pi_h',
       'b_uk',
       'tr_uk',
       'y',
       'c',
       'n',
       'wp')
vars_of_interest$m_four <- list('interest_uk',
                                'interest',
                                'tau_uk',
                                'pi_h',
                                'y',
                                'c',
                                'n',
                                'wp')