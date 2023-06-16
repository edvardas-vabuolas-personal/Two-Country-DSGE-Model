library(ggplot2)
library(ggpubr)
library(reshape2)
library(tikzDevice)

sigmas <- seq(1.5, 2.5, 0.5)
varphis <- seq(1.5, 2.5, 0.5)
x <- seq(1, 50)
df <- data.frame()
df_v <- data.frame()

df[1:50, 'x'] <- x
df_v[1:50, 'x'] <- x

for (sigma in 1:length(sigmas)) {
  for (c in 1:length(x)) {
    df[c, paste0("$\\sigma = ", sigmas[sigma], "$")] <- (c**(1-sigmas[sigma]))/(1-sigmas[sigma])
  }
}

for (varphi in 1:length(varphis)) {
  for (c in 1:length(x)) {
    df_v[c, paste0("$\\varphi = ", varphis[varphi], "$")] <- (c**(1+varphis[varphi]))/(1+varphis[varphi])
  }
}

df2 <- melt(df, id='x')
df2_v <- melt(df_v, id='x')

c_sigma <- ggplot(df2) + 
  aes(x=x, y=value, colour=variable) + 
  geom_line() + 
  theme_bw() +
  theme(legend.position = "top", legend.key.size = unit(0.5, 'line'), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(color="") +
  scale_x_continuous(name="Consumption $C$") +
  scale_y_continuous(name="Utility $\\mathcal{U}$")

n_varphi <- ggplot(df2_v) + 
  aes(x=x, y=value, colour=variable) + 
  geom_line() + 
  theme_bw() +
  theme(legend.position = "top", legend.key.size = unit(0.5, 'line'), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(color=element_blank()) +
  scale_x_continuous(name="No. of Hours $N$") +
  scale_y_continuous(name="Utility $\\mathcal{U}$")

tikz('~/Documents/University/Dissertation/Latex2/Graphs/sigma_varphi.tex', width = 6, height = 3)
ggarrange(c_sigma, NULL, n_varphi, nrow=1, ncol=3, widths=c(0.5,0.1,0.5))
dev.off()