library(ggplot2)
library(ggpubr)
library(reshape2)
library(tikzDevice)
library(readxl)
library(dplyr)
library(stringr)

df <- read.csv("~/Documents/University/Dissertation/Output/MCMC_SCOT_RUK_2023-07-16.csv")
ndf <- df %>%
  filter(row_number() %% 100 == 1)

latex_names <- c(
  'phi_b'='$\\phi_b$',
  'phi_g'='$\\phi_g$',
  'phi_b_f'='$\\phi_b^*$',
  'phi_g_f'='$\\phi_g^*$',
  'phi_b_uk'='$\\phi_b^{UK}$',
  'phi_g_uk'='$\\phi_g^{UK}$',
  'rho_g'='$\\rho_g$',
  'rho_g_f'='$\\rho_g^*$',
  'rho_g_uk'='$\\rho_g^{UK}$'
)

plotList <- c()
for (i in 2:ncol(ndf)) {
  variable <- colnames(df)[i]
  if (!grepl('_f', variable, fixed=TRUE)) {
    post_mean <- round(mean(df[10000:nrow(df),variable]), 3)
    plotList[[paste0("Line", i)]] <- ggplot(ndf) +
      aes_string(x='X', y=variable) +
      geom_line() +
      theme_bw() +
      scale_x_continuous(name="Draws") +
      scale_y_continuous(name=element_blank()) +
      ggtitle(paste0("Draws: ", latex_names[variable], ". Posterior mean = ", post_mean)) +
      geom_hline(aes_string(yintercept=post_mean), color="black", linetype="dashed", linewidth=1.5)+
      theme(plot.title = element_text(size = 10))
    plotList[[paste0("Hist", i)]] <-
      ggplot(ndf) +
        aes_string(x=variable) +
        geom_histogram(fill="white", color="black") +
        theme_bw() +
        scale_x_continuous(name="Value") +
        scale_y_continuous(name=element_blank()) +
        ggtitle("") +
        geom_vline(aes_string(xintercept=post_mean), color="black", linetype="dashed", linewidth=1.5)+
        theme(plot.title = element_text(size = 9))
  }
}

tikz('~/Documents/University/Dissertation/Latex2/Graphs/MCMC_Scot.tex', width = 6, height = 9)
ggarrange(plotlist=plotList, nrow=4, ncol=2)
dev.off()