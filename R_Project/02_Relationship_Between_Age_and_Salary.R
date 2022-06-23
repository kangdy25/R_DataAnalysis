library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

# Import Data
raw_welfare <- read.spss(file = "Koweps_hpc10_2015_beta1.sav",
                         to.data.frame = T)
# Make Copy
welfare <- raw_welfare


head(welfare)
tail(welfare)
View(welfare)
dim(welfare)
str(welfare)
summary(welfare)

welfare <- rename(welfare,
                  sex = h10_g3,
                  birth = h10_g4,
                  marriage = h10_g10,
                  religion = h10_g11,
                  income = p1002_8aq1,
                  code_job = h10_eco9,
                  c0de_region = h10_reg7)

# #######################################################

class(welfare$birth)
summary(welfare$birth)
qplot(welfare$birth)

# Check for missing outliers
summary(welfare$birth)

# Check for missing values
table(is.na(welfare$birth))

# Treatment of missing outliers
welfare$birth <- ifelse(welfare$birth == 9999, NA, welfare$birth)
table(is.na(welfare$birth))

# Make Derived Variable - age
welfare$age <- 2015 - welfare$birth + 1
qplot(welfare$age)

# #######################################################

age_income <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(age) %>%
  summarise(mean_income = mean(income))

head(age_income)
ggplot(data = age_income, aes(x = age, y = mean_income)) + geom_line()
