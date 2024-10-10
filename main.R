library(tidyverse)
library(here)

head(gss_cat)
View(gss_cat)
tv_hour_tabulation <- gss_cat |> 
  filter(age < 30) |> 
  group_by(marital) |> 
  summarise(mean_tv_hours = mean(tvhours, na.rm = TRUE))

write.csv(tv_hour_tabulation, here("Tv_Hour_by_Marital.csv"))

