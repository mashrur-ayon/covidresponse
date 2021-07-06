
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

corelation_data <- select(covid_data, Econocmi_Crisis_During_Pandemic
, No_Economic_Crisis_During_Pandemic)


ggcorr(corelation_data)
plot<- ggpairs(corelation_data)

#Plotting the results
plot