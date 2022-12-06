library(ggplot2)

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(col = Species)) +
  theme_bw()

iris_setosa <- iris[iris$Species == "setosa", ]
lm_setosa <- lm(Petal.Width ~ Petal.Length, data = iris_setosa)
summary(lm_setosa)
