library(ggpubr)
library(reshape2)
library(tikzDevice)
library(readxl)
library(dplyr)
library(stringr)
library(tidyr)
source('~/Documents/University/Dissertation/R/latex_names_irfs.R')
source('~/Documents/University/Dissertation/R/irfs_data.R')
library(scales)
library(xtable)

bold <- function(x) {
  paste('{\\textbf{', x, '}}', sep = '')
}

results_table <- data.frame()
for (i in 1:length(vars_of_interest$f_three)) {
  variable <- vars_of_interest$f_three[[i]]
  variable_f <- paste0(variable, '_f')
  
  print(variable)
  
  sum_f_one <-
    sum(datasets$f_one[datasets$f_one$Variable == variable,]$value)
  sum_f_three <-
    sum(datasets$f_three[datasets$f_three$Variable == variable,]$value)
  sum_f_one_f <-
    sum(datasets$f_one_f[datasets$f_one_f$Variable == variable_f,]$value)
  sum_f_three_f <-
    sum(datasets$f_three_f[datasets$f_three_f$Variable == variable_f,]$value)
  
  results_table[i, c(
    'Variable',
    'Scot., rUK (1)',
    'Diff. (1)',
    'Scot., rUK (3)',
    'Diff. (3)',
    '($\\tau$: 1 $-$ $\\tau$: 0)'
  )] <-
    c(
      paste0(latex_names[[variable]], ', ', latex_names[[variable_f]]),
      paste0(round(sum_f_one, 3), ', ', round(sum_f_one_f, 3)),
      round(sum_f_one - sum_f_one_f, 3),
      paste0(round(sum_f_three, 3), ', ', round(sum_f_three_f, 3)),
      round(sum_f_three - sum_f_three_f, 3),
      round((sum_f_three - sum_f_one) + (sum_f_three_f - sum_f_one_f), 3)
    )
}
filepath <-
  '~/Documents/University/Dissertation/Latex/Results/Tables/results_one_three.tex'
print(
  xtable(
    results_table,
    type = "latex",
    align = c('c', 'c', 'c', 'c', 'c', 'c', 'c'),
    caption = 'Scenarios 1 and 3: Expansionary fiscal policy cumulative 200-period effect. The ``$(\\tau$: 1 $-$ $\\tau$: 0)" column shows the difference in the effect of government spending with and without labour tax, i.e. $(\\left. y_t \\right|_{\\tau:1} - \\left. y_t \\right|_{\\tau:0}) + (\\left. y^*_t \\right|_{\\tau:1} - \\left. y^*_t \\right|_{\\tau:0})$.',
    label = 'table:responses_one_three'
  ),
  file = filepath,
  sanitize.text.function = identity,
  include.rownames = FALSE,
  table.placement = "H",
  sanitize.colnames.function = bold
)

results_table <- data.frame()
for (i in 1:length(vars_of_interest$f_four)) {
  variable <- vars_of_interest$f_four[[i]]
  variable_f <- paste0(variable, '_f')
  
  print(variable)
  
  sum_f_two <-
    sum(datasets$f_two[datasets$f_two$Variable == variable,]$value)
  sum_f_four <-
    sum(datasets$f_four[datasets$f_four$Variable == variable,]$value)
  sum_f_two_f <-
    sum(datasets$f_two[datasets$f_two$Variable == variable_f,]$value)
  sum_f_four_f <-
    sum(datasets$f_four[datasets$f_four$Variable == variable_f,]$value)
  
  if (grepl('_uk', variable, fixed = TRUE)) {
    results_table[i, c(
      'Variable',
      'Scot., rUK (2)',
      'Diff. (2)',
      'Scot., rUK (4)',
      'Diff. (4)',
      '($\\tau$: 1 $-$ $\\tau$: 0)'
    )] <-
      c(
        latex_names[[variable]],
        round(sum_f_two, 3),
        0,
        round(sum_f_four, 3),
        0,
        round(sum_f_four - sum_f_two, 3)
      )
  } else {
    results_table[i, c(
      'Variable',
      'Scot., rUK (2)',
      'Diff. (2)',
      'Scot., rUK (4)',
      'Diff. (4)',
      '($\\tau$: 1 $-$ $\\tau$: 0)'
    )] <-
      c(
        paste0(latex_names[[variable]], ', ', latex_names[[variable_f]]),
        paste0(round(sum_f_two, 3), ', ', round(sum_f_two_f, 3)),
        round(sum_f_two - sum_f_two_f, 3),
        paste0(round(sum_f_four, 3), ', ', round(sum_f_four_f, 3)),
        round(sum_f_four - sum_f_four_f, 3),
        round((sum_f_four - sum_f_two) + (sum_f_four_f - sum_f_two_f), 3)
      )
  }
}
filepath <-
  '~/Documents/University/Dissertation/Latex/Results/Tables/results_two_four.tex'
print(
  xtable(
    results_table,
    type = "latex",
    align = c('c', 'c', 'c', 'c', 'c', 'c', 'c'),
    caption = 'Scenarios 2 and 4: Expansionary fiscal policy cumulative 200-period effect. A single value in ``Scot., rUK column" indicate a UK-wide variable. The ``$(\\tau$: 1 $-$ $\\tau$: 0)" column shows the difference in the effect of government spending with and without labour tax, i.e. $(\\left. y_t \\right|_{\\tau:1} - \\left. y_t \\right|_{\\tau:0}) + (\\left. y^*_t \\right|_{\\tau:1} - \\left. y^*_t \\right|_{\\tau:0})$.',
    label = 'table:responses_two_four'
  ),
  file = filepath,
  sanitize.text.function = identity,
  include.rownames = FALSE,
  table.placement = "H",
  sanitize.colnames.function = bold
)