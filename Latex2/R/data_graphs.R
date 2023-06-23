library(ggplot2)
library(ggpubr)
library(reshape2)
library(tikzDevice)
library(readxl)

df <- read.csv("~/Documents/University/Dissertation/Python/Data - Original Data.csv", skip=1)
qtrseq<-seq(as.Date("1998-01-01"), as.Date("2022-12-01"), by="quarter")

sct_def <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=SCT_Deflator..2018.100.) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) + 
  ggtitle("Scotland: Deflator (2018=100)") + 
  theme(plot.title = element_text(size = 9))

sct_y <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=SCT_Output) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("Scotland: Output, £m") + 
  theme(plot.title = element_text(size = 9))

sct_c <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=SCT_Consumption) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("Scotland: Consumption, £m") + 
  theme(plot.title = element_text(size = 9))  

sct_w <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=SCT_Compensation_of_Employees) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("Scotland: Comp. of Employees, £m") + 
  theme(plot.title = element_text(size = 9))  

# sct_pop <- ggplot(df) + 
#   aes(x=as.Date(qtrseq), y=SCT_Working_Pop) + 
#   geom_line(lwd=1) + 
#   theme_bw() +
#   scale_x_date(name="Year") +
#   scale_y_continuous(name="Scotland. Working Population")

uk_def <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=UK_Deflator..2023.100.) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("UK: Deflator (2023=100)") + 
  theme(plot.title = element_text(size = 9)) 

uk_y <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=UK_Output) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("UK: Output, £m") + 
  theme(plot.title = element_text(size = 9)) 

uk_c <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=UK_Consumption) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("UK: Consumption, £m") + 
  theme(plot.title = element_text(size = 9)) 

uk_w <- ggplot(df) + 
  aes(x=as.Date(qtrseq), y=UK_Compensation_of_Employees) + 
  geom_line(lwd=1) + 
  theme_bw() +
  scale_x_date(name="Year") +
  scale_y_continuous(name=element_blank()) +
  ggtitle("UK: Comp. of Employees, £m") + 
  theme(plot.title = element_text(size = 9)) 

# uk_pop <- ggplot(df) + 
#   aes(x=as.Date(qtrseq), y=rUK_Working_Pop) + 
#   geom_line(lwd=1) + 
#   theme_bw() +
#   scale_x_date(name="Year") +
#   scale_y_continuous(name="Scotland. Working Population")

tikz('~/Documents/University/Dissertation/Latex2/Graphs/data_graphs.tex', width = 6, height = 9)
ggarrange(sct_def, uk_def, sct_y, uk_y, sct_c, uk_c, sct_w, uk_w, nrow=5, ncol=2)
# ggarrange(sct_def, uk_def, sct_y, uk_y, sct_c, uk_c, sct_w, uk_w, sct_pop, uk_pop, nrow=5, ncol=2)
dev.off()