df_exam <- read_excel("Programming/R/R_DataAnalysis/R_DataHandling/excel_exam.xlsx")
df_exam

mean(df_exam$english)
mean(df_exam$science)

df_exam_novar <- read_excel("Programming/R/R_DataAnalysis/R_DataHandling/excel_exam_novar.xlsx")
df_exam_novar

df_exam_novar <- read_excel("Programming/R/R_DataAnalysis/R_DataHandling/excel_exam_novar.xlsx", col_names = FALSE)
df_exam_novar

df_exam_sheet <- read_excel("Programming/R/R_DataAnalysis/R_DataHandling/excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet


df_csv_exam <- read.csv("Programming/R/R_DataAnalysis/R_DataHandling/csv_exam.csv")
df_csv_exam

df_csv_exam <- read.csv("Programming/R/R_DataAnalysis/R_DataHandling/csv_exam.csv", stringsAsFactors = FALSE)

df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm

write.csv(df_midterm, file = "Programming/R/R_DataAnalysis/R_DataHandling/df_midterm.csv")

saveRDS(df_midterm, file = "Programming/R/R_DataAnalysis/R_DataHandling/df_midterm.rds")

rm(df_midterm)
df_midterm

df_midterm <- readRDS("Programming/R/R_DataAnalysis/R_DataHandling/df_midterm.rds")
df_midterm