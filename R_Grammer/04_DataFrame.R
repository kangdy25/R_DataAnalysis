english <- c(90, 80, 60, 70) # 영어 점수 변수생성 
english 

math <- c(50, 60, 100, 20)
math

df_midterm <- data.frame(english, math)
df_midterm
# 데이터 프레임의 이름을 정할 때 앞에 'Data Frame'의 약자인 'df'를 붙이면 편리합니다.

class <- c(1, 1, 2, 2)
class

df_midterm <-data.frame(english, math, class)
df_midterm

mean(df_midterm$english) #df_midterm의 english 평균산출

mean(df_midterm$math) #df_midterm의 math 평균산출


df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm



