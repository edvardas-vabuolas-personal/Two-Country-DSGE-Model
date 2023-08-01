library(ggplot2)
library(ggpubr)
library(reshape2)
library(tikzDevice)
library(readxl)

df <- read.csv("~/Documents/University/Dissertation/Python/Data - Original Data.csv", skip=1)[1:100, ]
qtrseq<-seq(as.Date("1998-01-01"), as.Date("2022-12-01"), by="quarter")
date_break_interval <- "8 years"
sct_y <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=SCT_Output) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank(), labels = function(x) format(x, scientific = FALSE)) +
  ggtitle("Scot.: Output, £m") + 
  theme(plot.title = element_text(size = 9))

sct_c <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=SCT_Consumption) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank(), labels = function(x) format(x, scientific = FALSE)) +
  ggtitle("Scot.: Consumption, £m") + 
  theme(plot.title = element_text(size = 9))  

sct_w <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=SCT_Compensation_of_Employees) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank(), labels = function(x) format(x, scientific = FALSE)) +
  ggtitle("Scot.: Comp. of Employees, £m") + 
  theme(plot.title = element_text(size = 9))  

sct_g <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=SCT_Government_spending) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank(), labels = function(x) format(x, scientific = FALSE)) +
  ggtitle("Scot.: Gov. Spending, £m") + 
  theme(plot.title = element_text(size = 9)) 

uk_def <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=UK_Deflator..2023.100.) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank(), labels = function(x) format(x, scientific = FALSE)) +
  ggtitle("UK: Deflator (2023=100)") + 
  theme(plot.title = element_text(size = 9)) 

uk_y <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=UK_Output) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank(), labels = function(x) format(x, scientific = FALSE)) +
  ggtitle("UK: Output, £m") + 
  theme(plot.title = element_text(size = 9)) 

uk_c <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=UK_Consumption) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank(), labels = function(x) format(x, scientific = FALSE)) +
  ggtitle("UK: Consumption, £m") + 
  theme(plot.title = element_text(size = 9)) 

uk_w <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=UK_Compensation_of_Employees) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank(), labels = function(x) format(x, scientific = FALSE)) +
  ggtitle("UK: Comp. of Employees, £m") + 
  theme(plot.title = element_text(size = 9)) 

uk_g <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=UK_Government_spending) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank(), labels = function(x) format(x, scientific = FALSE)) +
  ggtitle("UK: Gov. Spending, £m") + 
  theme(plot.title = element_text(size = 9)) 


tikz('~/Documents/University/Dissertation/Latex/Graphs/data_graphs.tex', width = 6, height = 7)
ggarrange(uk_def, sct_y, uk_y, sct_c, uk_c, sct_w, uk_w, sct_g, uk_g, nrow=3, ncol=3)
dev.off()