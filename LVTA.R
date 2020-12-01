library(tidyverse)
library(readr)
library(Hmisc)
LVTA <- read_csv("Downloads/LasVegasTripAdvisorReviews-Dataset.csv", na = "NA")
LVTA <- na.omit(LVTA)
View(LVTA)
summary(LVTA)
names(LVTA)
length(is.na(LVTA))


ggplot(data = LVTA) +
  geom_bar(aes(x=Hotel.name, y=Score),
           stat = "summary", fun.y = "mean", color = "blue")
