library(ggplot2)
library(dplyr)

ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()
