
# Final Project STA 3375


# Set Working Directory

setwd("C:/Users/cdbry/Desktop/Sports Analytics Class/Final Project/Data")



# Libraries

library(tidyverse)


# Load Data

dat <- read.csv(file = "golf_data.csv")


# Remove useless columns

dat <- dat |> 
  select(-c(Unnamed..2, Unnamed..3, Unnamed..4, Player_initial_last))


dat_2018 <- dat |> 
  filter(season == 2018)

dat_2019 <- dat |> 
  filter(season == 2019)

dat_2020 <- dat |> 
  filter(season == 2020)

dat_2021 <- dat |> 
  filter(season == 2021)

dat_2022 <- dat |> 
  filter(season == 2022)

dat_18_22 <- rbind(dat_2018, dat_2019, dat_2020, dat_2021, dat_2022)


dat_18_22 <- dat_18_22 |> 
  relocate(player, .before = player.id) |> 
  relocate(tournament.name, .before = tournament.id) |> 
  relocate(tournament.name:tournament.id, .after = player.id)






write.csv(dat, "golf_data_clean.csv", row.names = F)






