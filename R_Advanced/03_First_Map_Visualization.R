install.packages("mapproj")
install.packages("ggiraphExtra")
library(ggiraphExtra)

str(USArrests)
head(USArrests)

library(tibble)

crime <- rownames_to_column(USArrests, var = "state")
crime$state <- tolower(crime$state)

str(crime)

# ---------------------------------------------------- #

install.packages("maps")
library(ggplot2)
states_map <- map_data("state")
str(states_map)

ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map,
             interactive = T)
