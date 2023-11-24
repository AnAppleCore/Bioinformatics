library(ggplot2)

data(iris)

colors <- c("#C44E52", "#55A868", "#4C72B0")

plot <- ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_violin() +
  theme(plot.title = element_text(hjust = 0.5,size=20,face="bold"),)+
  labs(title = "Sepal Length Distribution",) +
  

  scale_y_continuous(limits = c(0.5, 7)) +
  scale_fill_manual(values = colors)

ggsave("./violin.png", plot, width = 8, height = 6)
