library(tidyverse)
library(readr)
library(Hmisc)
LVTA <- read_csv("Downloads/LasVegasTripAdvisorReviews-Dataset.csv", na = "NA")
LVTA <- na.omit(LVTA)
View(LVTA)
summary(LVTA)
names(LVTA)
length(is.na(LVTA))


ggplot(LVTA, aes(x=Hotel.name, y=Score)) +
  geom_bar(stat = "summary", fill = "red", width = .8)
