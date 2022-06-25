install.packages("rJava")
install.packages("memoise")
install.packages("KoNLP")

library(KoNLP)
library(dplyr)

useNIADic()

# 데이터 불러오기
txt <- readLines("hiphop.txt")
head(txt)

install.packages("stringr")
library(stringr)

# 특수문자 제거
txt <- str_replace_all(txt, "\\W", "")

extractNoun("대한민국의 영토는 한반도와 그 부속도서로 한다")

# 가사에서 명사 추출
nouns <- extractNoun(txt)
# 추출한 명사 리스트를 문자열 벡터로 변환, 단어별 빈도표 생성
wordcount <- table(unlist(nouns))
# 데이터 프레임으로 변환
df_word <- as.data.frame(wordcount, stringsAsFactors = F)
# 변수명 수정
df_word <- rename(df_word,
                  word = Var1,
                  freq = Freq)

# 두 글자 이상 단어 추출
df_word <- filter(df_word, nchar(word) >= 2)

top_20 <- df_word %>%
  arrange(desc(freq)) %>%
  head(20)

top_20

# 패키지 설치
install.packages("wordcloud")

library(wordcloud)
library(RColorBrewer)

pal <- brewer.pal(9, "Blues")[5:9]
set.seed(1234)

wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 2,
          max.words = 100,
          random.order = F,
          rot.per = 1,
          scale = c(4, 0.3),
          colors = pal)

