library(ggplot2)
library(ggpubr)
library(reshape2)
library(tikzDevice)
library(readxl)

df <- read.csv("~/Documents/University/Dissertation/DynareData.csv", skip=0)
qtrseq<-seq(as.Date("1998-01-01"), as.Date("2007-09-01"), by="quarter")

sct_def <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=pi_obs) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) + 
  ggtitle("$\\pi_t - 1$") + 
  theme(plot.title = element_text(size = 9))

sct_y <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=y_obs) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$y_t - y_{t-1}$") + 
  theme(plot.title = element_text(size = 9))

sct_c <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=c_obs) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$c_t - c_{t-1}$") + 
  theme(plot.title = element_text(size = 9))  

sct_w <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=w_obs) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$w_t - w_{t-1}$") + 
  theme(plot.title = element_text(size = 9))  

# sct_pop <- ggplot(df) + 
#   aes(x=as.Date(qtrseq), y=SCT_Working_Pop) + 
#   geom_line(lwd=1) + 
#   theme_bw() +
#   scale_x_date(name="Year") +
#   scale_y_continuous(name="Scotland. Working Population")

uk_def <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=pi_obs_ruk) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$\\pi^{*}_t - 1$") + 
  theme(plot.title = element_text(size = 9)) 

uk_y <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=y_obs_ruk) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$y^*_t - y^*_{t-1}$") + 
  theme(plot.title = element_text(size = 9)) 

uk_c <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=c_obs_ruk) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$c^*_t - c^*_{t-1}$") + 
  theme(plot.title = element_text(size = 9)) 

uk_w <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=w_obs_ruk) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("$w^*_t - w^*_{t-1}$") + 
  theme(plot.title = element_text(size = 9)) 

# uk_pop <- ggplot(df) + 
#   aes(x=as.Date(qtrseq), y=rUK_Working_Pop) + 
#   geom_line(lwd=1) + 
#   theme_bw() +
#   scale_x_date(name="Year") +
#   scale_y_continuous(name="Scotland. Working Population")

tikz('~/Documents/University/Dissertation/Latex2/Graphs/dynare_data_graphs.tex', width = 6, height = 9)
ggarrange(sct_def, uk_def, sct_y, uk_y, sct_c, uk_c, sct_w, uk_w, nrow=5, ncol=2)
# ggarrange(sct_def, uk_def, sct_y, uk_y, sct_c, uk_c, sct_w, uk_w, sct_pop, uk_pop, nrow=5, ncol=2)
dev.off()