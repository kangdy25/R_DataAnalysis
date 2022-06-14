exam %>% select(math) # Extract Math
exam %>% select(english) # Extract English

exam %>% select(class, math, english) # Extract Class, Math, English
exam %>% select(-math) # Except Math
exam %>% select(-math, -english) # Except Math, English

# Extract Case(Class == 1) and then Extract English

# Case 1
exam %>% filter(class == 1) %>% select(english)
# Case 2
exam %>% 
  filter(class == 1) %>%
  select(english)
 

# Extract only part
exam %>% 
  select(id, math) %>% # Extract Id, Math
  head # Extract the First 6 rows

exam %>% 
  select(id, math) %>% # Extract Id, Math
  head(10) # Extract the First 10 rows

  
  