library(ggplot2)
library(ggpubr)
library(reshape2)
library(tikzDevice)
library(readxl)
library(dplyr)
library(stringr)
library(tidyr)
source('~/Documents/University/Dissertation/R/latex_names_irfs.R')
source('~/Documents/University/Dissertation/R/irfs_data.R')
source('~/Documents/University/Dissertation/R/leading_zeros.R')
library(scales)

HEIGHT <- 8.3

plotList <- c()
for (dataset in c('f_one',
                  'f_one_f',
                  'f_two',
                  'f_three',
                  'f_three_f',
                  'f_four',
                  'm_four')) {
  HORIZON <- 50
  for (i in vars_of_interest[[dataset]]) {
    # Choose the variable
    if (dataset %in% c('f_one', 'f_three')) {
      all_variables <- c(i)
    } else if (dataset %in% c('f_one_f', 'f_three_f')) {
      all_variables <- c(paste0(i, '_f'))
    } else {
      all_variables <- c(i, paste0(i, '_f'))
    }
    
    filtered_data <- subset(datasets[[dataset]],
                            (Variable %in% all_variables) &
                              as.numeric(variable) <= HORIZON)
    # Sort
    filtered_data <-
      filtered_data[order(as.numeric(filtered_data$variable)),]
    
    # Find corresponding latex name
    tex_names <-
      paste(latex_names[unique(filtered_data$Variable)], collapse = ", ")
    
    # Create plot title
    if (dataset %in% c('f_one', 'f_three')) {
      title <-
        paste0("$\\uparrow  g_t \\Rightarrow $ ", tex_names)
    } else if (dataset %in% c('f_one_f', 'f_three_f')) {
      title <-
        paste0("$\\uparrow  g^*_t \\Rightarrow $ ", tex_names)
    } else{
      if (dataset %in% c('f_two', 'f_four')) {
        title <-
          paste0("$\\uparrow  g^{UK}_t \\Rightarrow $ ", tex_names)
      } else {
        title <-
          paste0("$\\uparrow  i^{UK}_t \\Rightarrow $ ", tex_names)
      }
    }
    if (grepl('_uk', i, fixed=TRUE)) {
      filtered_data$Variable <-
        gsub(i, "UK", filtered_data$Variable)
    } else {
      filtered_data$Variable <-
        gsub(i, "Scotland", filtered_data$Variable)
      filtered_data$Variable <-
        gsub("Scotland_f", "rUK", filtered_data$Variable)
    }
    
    plotList[[dataset]][[i]] <- ggplot(filtered_data) +
      aes(
        x = as.numeric(variable),
        y = value,
        group = Variable,
        color = Variable
      ) +
      geom_line() +
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
        legend.text = element_text(size = 8),
        legend.title = element_blank()
      )
  }
}

tikz(
'~/Documents/University/Dissertation/Latex/Graphs/f_one.tex',
width = 6,
height = HEIGHT
)

plot <- ggarrange(plotlist = plotList$f_one,
                  nrow = 5,
                  ncol = 2)
annotate_figure(plot,
                top = text_grob("Policy Scenario 1: Scotland",
                                color = "black",
                                size = 12))
dev.off()

tikz(
  '~/Documents/University/Dissertation/Latex/Graphs/f_one_f.tex',
  width = 6,
  height = HEIGHT
)
plot <- ggarrange(plotlist = plotList$f_one_f,
                  nrow = 5,
                  ncol = 2)
annotate_figure(plot,
                top = text_grob("Policy Scenario 1: rUK",
                                color = "black",
                                size = 12))
dev.off()

tikz(
  '~/Documents/University/Dissertation/Latex/Graphs/f_two.tex',
  width = 6,
  height = HEIGHT
)
plot <- ggarrange(plotlist = plotList$f_two,
                  nrow = 5,
                  ncol = 2)
annotate_figure(plot,
                top = text_grob("Policy Scenario 2: Scotland and rUK",
                                color = "black",
                                size = 12))
dev.off()

tikz(
  '~/Documents/University/Dissertation/Latex/Graphs/f_three.tex',
  width = 6,
  height = HEIGHT
)
plot <- ggarrange(plotlist = plotList$f_three,
                  nrow = 5,
                  ncol = 2)
annotate_figure(plot,
                top = text_grob("Policy Scenario 3: Scotland",
                                color = "black",
                                size = 12))
dev.off()

tikz(
  '~/Documents/University/Dissertation/Latex/Graphs/f_three_f.tex',
  width = 6,
  height = HEIGHT
)
plot <- ggarrange(plotlist = plotList$f_three_f,
                  nrow = 5,
                  ncol = 2)
annotate_figure(plot,
                top = text_grob("Policy Scenario 3: rUK",
                                color = "black",
                                size = 12))
dev.off()

tikz(
  '~/Documents/University/Dissertation/Latex/Graphs/f_four.tex',
  width = 6,
  height = HEIGHT
)
plot <- ggarrange(plotlist = plotList$f_four,
                  nrow = 5,
                  ncol = 2)
annotate_figure(plot,
                top = text_grob("Policy Scenario 4: Scotland and rUK",
                                color = "black",
                                size = 12))
dev.off()

tikz(
  '~/Documents/University/Dissertation/Latex/Graphs/m_four.tex',
  width = 6,
  height = HEIGHT
)
plot <- ggarrange(plotlist = plotList$m_four,
                  nrow = 5,
                  ncol = 2)
annotate_figure(plot,
                top = text_grob(
                  "Monetary Policy Shock (Scenario 4)",
                  color = "black",
                  size = 12
                ))
dev.off()