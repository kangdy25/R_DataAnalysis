exam <- read.csv("C:/Programming/R/R_DataHandling/csv_exam.csv")

head(exam) # Output from the first to the 6th line
head(exam, 10) # Output from the first to the 10th line

tail(exam) # Output from the last to the 6th line
tail(exam, 10) # Output from the last to the 10th line

View(exam) # Show 'exam' on the Data viewer window

dim(exam) # Output low, column

str(exam) # Check Data property

summary(exam) # Output Summart Statistic

mpg <- as.data.frame(ggplot2::mpg) # Load mpg data as data frame
head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)
summary(mpg)
