library(ggplot2)


# x-axis range from 3 to 6, y-axis range from 10 ~ 30

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  xlim(3, 6) +
  ylim(10, 30)
