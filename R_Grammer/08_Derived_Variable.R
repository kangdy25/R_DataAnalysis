df <- data.frame(var1 = c(4, 3, 8),
                 var2 = c(2, 6, 1))
df

df$var_sum <- df$var1 + df$var2 # Create 'var_sum' Derived Variable
df

df$var_mean <- df$var_sum / 2 # Create 'var_mean' Derived Variable
df

mpg <- as.data.frame(ggplot2::mpg)
mpg$total <- (mpg$cty + mpg$hwy) / 2
head(mpg)
mean(mpg$total)
summary(mpg$total) # Calculate Summary Statistics

hist(mpg$total)

mpg$test <- ifelse(mpg$total > 20, "pass", "fail")
head(mpg, 20)

table(mpg$test)

library(ggplot2)
qplot(mpg$test)

# Grade A, B, C Rank based on total
mpg$grade <- ifelse(mpg$total >= 30, "A",
                    ifelse(mpg$total >= 20, "B", "C"))
head(mpg, 20)


table(mpg$grade)
qplot(mpg$grade)
mpg$grade2 <- ifelse(mpg$total >= 30, "A",
                     ifelse(mpg$total >= 25, "B",
                            ifelse(mpg$total >= 20, "C", "D")))

head(mpg, 20)
qplot(mpg$grade2)
