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

class(welfare$sex)
table(welfare$sex)

# Treatment of missing outliers
welfare$sex <- ifelse(welfare$sex == 9, NA, welfare)

# Check for missing values
table(is.na(welfare$sex))

# Change gender item name
welfare$sex <- ifelse(welfare$sex == 1.0, "male", "female")
table(welfare$sex)

qplot(welfare$sex)

# #######################################################

class(welfare$income)
summary(welfare$income)
qplot(welfare$income)

qplot(welfare$income) + xlim(0, 1000)

# Check for missing outliers
summary(welfare$income)

# Treatment of missing outliers
welfare$income <- ifelse(welfare$income %in% c(0, 9999), NA, welfare$income)

# Check for missing values
table(is.na(welfare$income))

# #######################################################

sex_income <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(sex) %>%
  summarise(mean_income = mean(income))

sex_income
ggplot(data = sex_income, aes(x = sex, y = mean_income)) + geom_col()
