library(dplyr)

exam %>% arrange(math) # Sort Ascending

exam %>% arrange(desc(math)) # Sort Descending

exam %>% arrange(class, math)

