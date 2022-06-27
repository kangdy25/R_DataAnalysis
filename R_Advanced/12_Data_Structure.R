# Vector: 1D
# Data Frame: 2D
# Matrix: 2D
# Array: N-Dimention
# List: N-Dimention

# ------------------------------------------------------- #
# Vector

a <- 1
a

b <- "hello"
b

class(a)
class(b)

# ------------------------------------------------------- #
# Data Frame

x1 <- data.frame(var1 = c(1, 2, 3),
                 var2 = c("a", "b", "c"))
x1

class(x1)

# ------------------------------------------------------- #
# Matrix

x2 <- matrix(c(1:12), ncol = 2)
x2

class(x2)

# ------------------------------------------------------- #
# Array

x3 <- array(1:20, dim = c(2, 5, 2))
x3

class(x3)

# ------------------------------------------------------- #
# List

x4 <- list(f1 = a, # Vector
           f2 = x1, # Data Frame
           f3 = x2, # Matrix
           f4 = x3) # Array
x4

class(x4)

library(ggplot2)
mpg <- ggplot2::mpg
x <- boxplot(mpg$cty)
x

x$stats[, 1]
x$stats[, 1][3]
x$stats[, 1][2]
