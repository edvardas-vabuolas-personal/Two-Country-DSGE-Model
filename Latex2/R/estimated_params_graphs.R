library(ggplot2)
library(ggpubr)
library(reshape2)
library(tikzDevice)
library(readxl)
library(dplyr)

df <- read.csv("~/Documents/University/Dissertation/EstimatedParams.csv")
df <- df %>%
  filter(row_number() %% 200 == 1)

chi_pi_line <- ggplot(df) + 
  aes(x=X, y=chi_pi) + 
  geom_line() +
  theme_bw() +
  scale_x_continuous(name="Draws") +
  scale_y_continuous(name=element_blank()) + 
  ggtitle(paste0("Draws: $\\chi_{\\pi}$. Posterior mean = ", round(mean(df[1:nrow(df),"chi_pi"]), 3))) +
  geom_hline(aes(yintercept=mean(chi_pi)),
             color="black", linetype="dashed", linewidth=1.5)+ 
  theme(plot.title = element_text(size = 9))
  

chi_pi_hist <- ggplot(df) + 
  aes(x=chi_pi, y=..count../sum(..count..)) + 
  geom_histogram(fill="white", color="black") +
  theme_bw() +
  scale_x_continuous(name="Value") +
  scale_y_continuous(name=element_blank()) + 
  ggtitle("") + 
  geom_vline(aes(xintercept=mean(chi_pi)),
             color="black", linetype="dashed", linewidth=1.5)+ 
  theme(plot.title = element_text(size = 9))

chi_pi_ruk_line <- ggplot(df) + 
  aes(x=X, y=chi_pi_ruk) + 
  geom_line() + 
  theme_bw() +
  scale_x_continuous(name="Draws") +
  scale_y_continuous(name=element_blank()) + 
  ggtitle(paste0("Draws: $\\chi^*_{\\pi}$. Posterior mean = ", round(mean(df[1:nrow(df),"chi_pi_ruk"]), 3))) +
  geom_hline(aes(yintercept=mean(chi_pi_ruk)),
             color="black", linetype="dashed", linewidth=1.5)+ 
  theme(plot.title = element_text(size = 9))

chi_pi_ruk_hist <- ggplot(df) + 
  aes(x=chi_pi_ruk, y=..count../sum(..count..)) + 
  geom_histogram(fill="white", color="black") +
  theme_bw() +
  scale_x_continuous(name="Value") +
  scale_y_continuous(name=element_blank()) + 
  ggtitle("") + 
  geom_vline(aes(xintercept=mean(chi_pi_ruk)),
             color="black", linetype="dashed", linewidth=1.5)+ 
  theme(plot.title = element_text(size = 9))
  
chi_y_line <- ggplot(df) + 
  aes(x=X, y=chi_y) + 
  geom_line() + 
  theme_bw() +
  scale_x_continuous(name="Draws") +
  scale_y_continuous(name=element_blank()) + 
  ggtitle(paste0("Draws: $\\chi_{y}$. Posterior mean = ", round(mean(df[1:nrow(df),"chi_y"]), 3))) +
  geom_hline(aes(yintercept=mean(chi_y)),
             color="black", linetype="dashed", linewidth=1.5)+ 
  theme(plot.title = element_text(size = 9))

chi_y_hist <- ggplot(df) + 
  aes(x=chi_y, y=..count../sum(..count..)) + 
  geom_histogram(fill="white", color="black") +
  theme_bw() +
  scale_x_continuous(name="Value") +
  scale_y_continuous(name=element_blank()) + 
  ggtitle("") + 
  geom_vline(aes(xintercept=mean(chi_y)),
             color="black", linetype="dashed", linewidth=1.5)+ 
  theme(plot.title = element_text(size = 9))

chi_y_ruk_line <- ggplot(df) + 
  aes(x=X, y=chi_y_ruk) + 
  geom_line() + 
  theme_bw() +
  scale_x_continuous(name="Draws") +
  scale_y_continuous(name=element_blank()) + 
  ggtitle(paste0("Draws: $\\chi^*_{y}$. Posterior mean = ", round(mean(df[1:nrow(df),"chi_y_ruk"]), 3))) +
  geom_hline(aes(yintercept=mean(chi_y_ruk)),
             color="black", linetype="dashed", linewidth=1.5)+ 
  theme(plot.title = element_text(size = 9))

chi_y_ruk_hist <- ggplot(df) + 
  aes(x=chi_y_ruk, y=..count../sum(..count..)) + 
  geom_histogram(fill="white", color="black") +
  theme_bw() +
  scale_x_continuous(name="Value") +
  scale_y_continuous(name=element_blank()) + 
  ggtitle("") + 
  geom_vline(aes(xintercept=mean(chi_y_ruk)),
             color="black", linetype="dashed", linewidth=1.5)+ 
  theme(plot.title = element_text(size = 9))

mean(df[1:nrow(df),"chi_pi_ruk"])
chi_pi_hist


tikz('~/Documents/University/Dissertation/Latex2/Graphs/estimated_params.tex', width = 6, height = 9)
ggarrange(chi_pi_line, chi_pi_hist, chi_pi_ruk_line, chi_pi_ruk_hist, chi_y_line, chi_y_hist, chi_y_ruk_line, chi_y_ruk_hist, nrow=4, ncol=2, widths =c(0.65,0.35))
# ggarrange(sct_def, uk_def, sct_y, uk_y, sct_c, uk_c, sct_w, uk_w, sct_pop, uk_pop, nrow=5, ncol=2)
dev.off()