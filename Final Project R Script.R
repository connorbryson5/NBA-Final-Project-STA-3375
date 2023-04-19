
# Final Project STA 3375


# Set Working Directory

setwd("C:/Users/cdbry/Desktop/Sports Analytics Class/Final Project/Data")



# Libraries

library(tidyverse)


# Load Data

dat <- read.csv(file = "golf_data.csv")


# Remove useless columns

dat <- dat |> 
  select(-c(Unnamed..2, Unnamed..3, Unnamed..4)) |> 
  filter(season == c(2018:2022))


write.csv(dat, "golf_data_clean.csv", row.names = F)






