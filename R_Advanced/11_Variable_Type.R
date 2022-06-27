var1 <- c(1, 2, 3, 4, 5) # numeric
var2 <- factor(c(1, 2, 3, 4, 5)) # factor

var1
var2

var1 + 1
var2 + 1

class(var1)
class(var2)

levels(var1)
levels(var2)

var3 <- c("a", "b", "c", "d", "e")
var4 <- factor(c("a", "b", "c", "d", "e"))

var3
var4

mean(var1)
mean(var2)

var2 <- as.numeric(var2) # change to numeric
mean(var2)

class(var2)
levels(var2)

# ----------------------------------------------------------- #

# numeric: 1, 12, 3
# integer: 1L, 23L
# complex: 3 + 2i
# character: "male", "female"
# logical: TRUE, FALSE, T, F
# factor: 1, 2, a, b
# Date: "2014-04-16"




