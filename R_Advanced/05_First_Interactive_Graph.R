install.packages("plotly")
library(plotly)
library(ggplot2)

p <- ggplot(data = mpg, aes(x = displ, y = hwy, col = dry))+ geom_point()
ggplotly(p)
         
