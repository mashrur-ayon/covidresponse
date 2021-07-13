
library(tidyverse)
library(dplyr)
library(ggplot2)
library(readr)
library(corrplot)
library(GGally)
#Read the main data file in CSV format. 
covid_data <- read.csv("COVIDResponse.csv")

#Printing the raw data to check
covid_data

glimpse(covid_data)
#Checking all the variables
names(covid_data)

corelation_data <- select(covid_data, Economic_Crisis
, Oppression)

cor(corelation_data)

ggplot(corelation_data, aes(x= Economic_Crisis, y= Oppression)) + geom_point() + 
  geom_smooth(formula = y ~ poly(x,2), method = "lm", se = T, level= 0.9) + 
  geom_abline(aes(intercept=0, slope=2), color="red", linetype=6) +
  labs(
    x = "Reported Economic Crisis", 
    y = "Reported Domestic Oppression", 
    title = "Relationship between reported economic crisis, 
and domestic oppression",
    subtitle = "r= 0.982"
  )

plot<- ggpairs(corelation_data)

#Plotting the results
plot
