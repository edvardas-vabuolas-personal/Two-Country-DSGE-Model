library(ggplot2)
library(ggpubr)
library(reshape2)
library(tikzDevice)
library(readxl)

df <- read.csv("~/Documents/University/Dissertation/DynareData.csv", skip=0)
qtrseq<-seq(as.Date("1998-04-01"), as.Date("2021-12-31"), by="quarter")
date_break_interval <- "8 years"

sct_y <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=y_obs) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$y_t - y_{t-1}$") + 
  theme(plot.title = element_text(size = 9))

sct_c <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=c_obs) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$c_t - c_{t-1}$") + 
  theme(plot.title = element_text(size = 9))  

sct_w <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=w_obs) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$w_t - w_{t-1}$") + 
  theme(plot.title = element_text(size = 9))  

sct_g <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=g_obs) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$g_t - g_{t-1}$") + 
  theme(plot.title = element_text(size = 9))  

uk_g <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=g_obs_ruk) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$g^*_t - g^*_{t-1}$") + 
  theme(plot.title = element_text(size = 9))  

uk_wide_g <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=g_obs_uk) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$g^{UK}_t - g^{UK}_{t-1}$") + 
  theme(plot.title = element_text(size = 9))  

uk_y <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=y_obs_ruk) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$y^*_t - y^*_{t-1}$") + 
  theme(plot.title = element_text(size = 9)) 

uk_c <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=c_obs_ruk) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$c^*_t - c^*_{t-1}$") + 
  theme(plot.title = element_text(size = 9)) 

uk_w <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=w_obs_ruk) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year", date_breaks = date_break_interval, date_labels='%Y') +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$w^*_t - w^*_{t-1}$") + 
  theme(plot.title = element_text(size = 9))

tikz('~/Documents/University/Dissertation/Latex/Graphs/dynare_data_graphs.tex', width = 6, height = 8)
ggarrange(sct_y, uk_y, sct_c, uk_c, sct_w, uk_w, sct_g, uk_g, uk_wide_g, nrow=3, ncol=3)
dev.off()