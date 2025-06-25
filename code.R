# Load necessary library
library(ggplot2)
library(dplyr)
library(tidyverse)

# Load your dataset
data <- read.csv("/Users/praveendommalapati/Desktop/Data Handling/Individual Presentation/MutualFundBoards.csv")

# Display the first few rows of the dataset
head(data)

# Summary statistics for Count.openend
summary(data$Count.openend)

# Standard deviation
sd(data$Count.openend, na.rm = TRUE)

# Histogram to check the shape
hist(data$Count.openend, main = "Histogram of Count.openend", xlab = "Count.openend", col = "lightblue", breaks = 20)

# Boxplot to identify outliers
boxplot(data$Count.openend, main = "Boxplot of Count.openend", ylab = "Count.openend", col = "lightgreen")

# Calculate IQR for Count.openend
iqr <- IQR(data$Count.openend, na.rm = TRUE)

# Define thresholds for outliers
lower_threshold <- quantile(data$Count.openend, 0.25, na.rm = TRUE) - 1.5 * iqr
upper_threshold <- quantile(data$Count.openend, 0.75, na.rm = TRUE) + 1.5 * iqr

# Count outliers
outliers <- sum(data$Count.openend < lower_threshold | data$Count.openend > upper_threshold, na.rm = TRUE)
outliers

# Correlation between Count.openend and AvgSalary
cor(data$Count.openend, data$AvgSalary, use = "complete.obs")

# Log transformation
cor(log(data$Count.openend + 1), data$AvgSalary, use = "complete.obs")

# Square root transformation
cor(sqrt(data$Count.openend), data$AvgSalary, use = "complete.obs")

# Reciprocal transformation
cor(1 / (data$Count.openend + 1), data$AvgSalary, use = "complete.obs")

# Original relationship
plot(data$Count.openend, data$AvgSalary, 
     main = "Original Relationship: Count.openend vs AvgSalary", 
     xlab = "Count.openend", ylab = "AvgSalary", pch = 19, col = "blue")

# Transformed relationship
plot(sqrt(data$Count.openend), data$AvgSalary, 
     main = "Transformed Relationship: sqrt(Count.openend) vs AvgSalary", 
     xlab = "sqrt(Count.openend)", ylab = "AvgSalary", pch = 19, col = "blue")

# Correlation between Count.openend and BoardMem
cor(data$Count.openend, data$BoardMem, use = "complete.obs")

# Log transformation
cor(log(data$Count.openend + 1), data$BoardMem, use = "complete.obs")

# Square root transformation
cor(sqrt(data$Count.openend), data$BoardMem, use = "complete.obs")

# Reciprocal transformation
cor(1 / (data$Count.openend + 1), data$BoardMem, use = "complete.obs")

# Original relationship
plot(data$Count.openend, data$BoardMem, 
     main = "Original Relationship: Count.openend vs BoardMem", 
     xlab = "Count.openend", ylab = "BoardMem", pch = 19, col = "orange")

# Transformed relationship
plot(sqrt(data$Count.openend), data$BoardMem, 
     main = "Transformed Relationship: sqrt(Count.openend) vs BoardMem", 
     xlab = "sqrt(Count.openend)", ylab = "BoardMem", pch = 19, col = "orange")
