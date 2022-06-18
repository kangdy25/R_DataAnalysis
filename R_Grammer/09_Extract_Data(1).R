install.packages("dplyr")
library(dplyr)
exam <- read.csv("Programming/R/R_DataAnalysis/R_DataHandling/csv_exam.csv")
exam

# Extract (class == 1 in exam) Case
exam %>% filter(class == 1)

# Extract (class == 2 in exam) Case
exam %>% filter(class == 2)

# Extract (class != 1 in exam) Case
exam %>% filter(class != 1)

# Extract (class != 2 in exam) Case
exam %>% filter(class != 3)

# Extract (Math score over 50) Case
exam %>% filter(math > 50)

# Extract (Math score under 50) Case
exam %>% filter(math < 50)

# Extract (Math score more than 50) Case
exam %>% filter(math >= 50)

# Extract (Math score below 50) Case
exam %>% filter(math <= 50)

# Extract (class == 1 in exam & Math score more than 50) Case
exam %>% filter(class == 1 & math >= 50)

# Extract (class == 2 in exam & Math score more than 80) Case
exam %>% filter(class == 2 & math >= 80)

# Extract (Math Score more than 90 | English score more than 90) Case
exam %>% filter(math >= 90 | english <= 90)

# Extract (Science Score under 50 | English score under 90) Case
exam %>% filter(english < 90 | science < 50)

# Extract (class == 1 in exam | class == 3 in exam | class == 5 in exam) Case
exam %>% filter(class == 1 | class == 3 | class == 5)
exam %>% filter(class %in% c(1, 3, 5))

class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)

mean(class1$math)
mean(class2$math)


