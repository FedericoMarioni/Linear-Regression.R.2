# Simple Linear Regression

# Create a data frame

mouse.data <- data.frame(
  weight = c(0.9, 1.8, 2.4, 3.5, 3.9, 4.4, 5.1, 5.6, 6.3),
  size = c(1.4, 2.6, 1.0, 3.7, 5.5, 3.2, 3.0, 4.9, 6.3))

# Plot the data on an X-Y graph

plot(mouse.data$weight, mouse.data$size)

# Run the linear regression algorithm

mouse.regression <- lm(size ~ weight,  data = mouse.data)

# Individual signification. t statistic / p-value
# Global signification. F statistic / p-value
# R-squared
# Adjusted R-squared

summary(mouse.regression)

# Estimated coefficients

mouse.regression



