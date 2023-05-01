library(nycflights13)
library(tidyverse)

# filter data based on requirements
filter(flights, month == 1, day == 1)

# view full data
View(flights)

# assign filter processed into object
jan1 <- filter(flights, month == 1, day == 1)

jan1

# assign filter, saves into variable and print the result
(dec25 <- filter(flights, month == 12, day == 25))

filter(flights, !(arr_delay > 120 | dep_delay > 120))

