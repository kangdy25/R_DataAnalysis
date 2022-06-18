library(ggplot2)
library(dplyr)

ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()
