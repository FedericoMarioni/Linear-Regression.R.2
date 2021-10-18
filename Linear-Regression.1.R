# Linear Regression
# Load packages

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis,
               httr, lubridate, plotly, rip, rmarkdown, shiny, 
               stringr, tidyr)

library(datasets) 

# Load Data

data <- USJudgeRatings

# Separate the data into dependent variable and independent variables

X <- as.matrix(data[-12])

Y <- data[, 12]

# Regression with simultaneous entry

# Using variable groups

reg1 <- lm(Y ~ X)  
reg1 # Show estimated coefficients

summary(reg1) # Individual signification. t statistic / p-value
              # Global signification. F statistic / p-value
              # R-squared
              # Adjusted R-squared


anova(reg1)  # Analysis of variance table
coef(reg1)   # same as reg1
confint(reg1) # Confidence intervals for coefficients
resid(reg1)   # Residuals case by case
hist(residuals(reg1)) # Histogram of residuals




 