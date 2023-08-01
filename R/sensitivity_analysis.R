library(ggplot2)
library(ggpubr)
library(reshape2)
library(tikzDevice)
library(readxl)
library(dplyr)
library(stringr)
library(tidyr)
source('~/Documents/University/Dissertation/R/latex_names_irfs.R')
library(scales)

HEIGHT <- 8
df <-
  read.csv(
    "~/Documents/University/Dissertation/IRFs_SensitivityAnalysis/sensitivity_analysis.csv",
    header = FALSE
  )
colnames(df) = c('Variable', 'phi_b_uk', 'phi_g_uk', 'rho_g_uk', seq(1:200))
df <- distinct(df)

df$Variable <-
  gsub('_eps_g_uk', '', df$Variable, fixed = TRUE)

vars_of_interest <-
  list('g_uk',
       'interest_uk',
       'tau_uk',
       'pi_h',
       'b_uk',
       'tr',
       'y',
       'c',
       'n',
       'wp')

plotList <- c()

parameter_values <- c()
parameter_values$phi_b_uk <- c(0.33, 0.50, 0.99)
parameter_values$phi_g_uk <- c(0.10, 0.50, 0.99)
parameter_values$rho_g_uk <- c(0.90, 0.60, 0.10)
for (parameter in c('phi_b_uk', 'phi_g_uk', 'rho_g_uk')) {
  HORIZON <- 50
  for (i in vars_of_interest) {
    responses <- c()
    if (parameter == 'phi_b_uk') {
      for (idx in 1:length(parameter_values$phi_b_uk)) {
        responses[[idx]] <-
          subset(
            df,
            (phi_g_uk == parameter_values$phi_g_uk[1]) &
              (rho_g_uk == parameter_values$rho_g_uk[1]) &
              (phi_b_uk == parameter_values$phi_b_uk[idx]) &
              (Variable %in% i) &
              (!grepl('_f', Variable, fixed = TRUE))
          )
        responses[[idx]] <-
          gather(
            dplyr::select(responses[[idx]], 1, 5:204),
            key = "variable",
            value = "value",
            -Variable
          )
        responses[[idx]] <- subset(responses[[idx]],
                                   (as.numeric(variable) <= HORIZON))
        responses[[idx]]$param <- parameter_values$phi_b_uk[idx]
        
        responses[[idx]]$Variable <-
          gsub(i, paste0(latex_names[parameter], '='), responses[[idx]]$Variable)
        
        # Sort
        responses[[idx]] <-
          responses[[idx]][order(as.numeric(responses[[idx]]$variable)), ]
      }
      
    } else if (parameter == 'phi_g_uk') {
      for (idx in 1:length(parameter_values$phi_b_uk)) {
        responses[[idx]] <-
          subset(
            df,
            (phi_g_uk == parameter_values$phi_g_uk[idx]) &
              (rho_g_uk == parameter_values$rho_g_uk[1]) &
              (phi_b_uk == parameter_values$phi_b_uk[1]) &
              (Variable %in% i) &
              (!grepl('_f', Variable, fixed = TRUE))
          )
        responses[[idx]] <-
          gather(
            dplyr::select(responses[[idx]], 1, 5:204),
            key = "variable",
            value = "value",
            -Variable
          )
        responses[[idx]] <- subset(responses[[idx]],
                                   (as.numeric(variable) <= HORIZON))
        responses[[idx]]$param <-
          parameter_values$phi_g_uk[idx]
        
        responses[[idx]]$Variable <-
          gsub(i, paste0(latex_names[parameter], '='), responses[[idx]]$Variable)
        
        # Sort
        responses[[idx]] <-
          responses[[idx]][order(as.numeric(responses[[idx]]$variable)), ]
      }
    } else {
      for (idx in 1:length(parameter_values$phi_b_uk)) {
        responses[[idx]] <-
          subset(
            df,
            (phi_g_uk == parameter_values$phi_g_uk[1]) &
              (rho_g_uk == parameter_values$rho_g_uk[idx]) &
              (phi_b_uk == parameter_values$phi_b_uk[1]) &
              (Variable %in% i) &
              (!grepl('_f', Variable, fixed = TRUE))
          )
        responses[[idx]] <-
          gather(
            dplyr::select(responses[[idx]], 1, 5:204),
            key = "variable",
            value = "value",-Variable
          )
        responses[[idx]] <- subset(responses[[idx]],
                                   (as.numeric(variable) <= HORIZON))
        responses[[idx]]$param <-
          parameter_values$rho_g_uk[idx]
        
        responses[[idx]]$Variable <-
          gsub(i, paste0(latex_names[parameter], '='), responses[[idx]]$Variable)
        
        # Sort
        responses[[idx]] <-
          responses[[idx]][order(as.numeric(responses[[idx]]$variable)), ]
      }
    }
    
    
    # Find corresponding latex name
    tex_names <-
      paste(latex_names[i], collapse = ", ")
    
    title <-
      paste0("$\\uparrow  g^{UK}_t \\Rightarrow $ ", tex_names)
    
    plotList[[parameter]][[i]] <- ggplot() +
      geom_line(data = responses[[1]],
                aes(
                  x = as.numeric(variable),
                  y = value,
                  group = interaction(Variable, param),
                  color = interaction(Variable, param)
                )) +
      geom_line(data = responses[[2]],
                aes(
                  x = as.numeric(variable),
                  y = value,
                  group = interaction(Variable, param),
                  color = interaction(Variable, param)
                )) +
      geom_line(data = responses[[3]],
                aes(
                  x = as.numeric(variable),
                  y = value,
                  group = interaction(Variable, param),
                  color = interaction(Variable, param)
                )) +
      theme_bw() +
      scale_colour_grey() +
      scale_x_continuous(name = element_blank()) +
      scale_y_continuous(name = element_blank()) +
      geom_hline(
        aes_string(yintercept = 0),
        color = "black",
        linetype = "dashed",
        linewidth = 1
      ) +
      ggtitle(title) +
      theme(
        plot.title = element_text(hjust = 0.5),
        legend.position = c(0.775, 0.5),
        legend.text = element_text(size = 6),
        legend.title = element_blank(),
        legend.spacing.y = unit(0, 'mm'),
        legend.spacing.x = unit(0, 'mm'),
        # legend.background=element_blank(),
        legend.margin=margin(c(-1,-1,-1,-1))
      )
  }
}

tikz(
  '~/Documents/University/Dissertation/Latex/Graphs/sensitivity_analysis_phi_b_test.tex',
  width = 6,
  height = HEIGHT
)
plot <- ggarrange(plotlist = plotList$phi_b_uk,
                  nrow = 5,
                  ncol = 2)
annotate_figure(plot,
                top = text_grob("Sensitivity analysis: ${\\phi_g^{UK} = 0.10,\ \\rho_g^{UK} = 0.90},\ \\phi_b^{UK}\ \\forall \\{ 0.33, 0.50, 0.99\\}$",
                                color = "black",
                                size = 12))
dev.off()

tikz(
  '~/Documents/University/Dissertation/Latex/Graphs/sensitivity_analysis_phi_g_test.tex',
  width = 6,
  height = HEIGHT
)
plot <- ggarrange(plotlist = plotList$phi_g_uk,
                  nrow = 5,
                  ncol = 2)
annotate_figure(plot,
                top = text_grob("Sensitivity analysis: ${\\phi_b^{UK} = 0.33,\ \\rho_g^{UK} = 0.90},\ \\phi_g^{UK}\ \\forall \\{ 0.10, 0.50, 0.99\\}$",
                                color = "black",
                                size = 12))
dev.off()

tikz(
  '~/Documents/University/Dissertation/Latex/Graphs/sensitivity_analysis_rho_g_test.tex',
  width = 6,
  height = HEIGHT
)
plot <- ggarrange(plotlist = plotList$rho_g_uk,
                  nrow = 5,
                  ncol = 2)
annotate_figure(plot,
                top = text_grob("Sensitivity analysis: ${\\phi_b^{UK} = 0.33,\ \\phi_g^{UK} = 0.10},\ \\rho_g^{UK}\ \\forall \\{ 0.90, 0.60, 0.10\\}$",
                                color = "black",
                                size = 12))
dev.off()
