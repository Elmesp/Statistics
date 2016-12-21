# Simulating data
set.seed(10)
lambda <- 0.2
n <- 40
N <- 500
data <- replicate(N, mean(rexp(n, lambda)))

## Simulation exercise
### 1. Show the sample mean and compare it to the theoretical mean of the distribution.
mean(data) # Sample mean
1/lambda # Theorical mean

hist(data, breaks = 50, main = "Means of exponentials", xlab = "Means")
abline(v = 5, col = "red", lwd = 5)

### 2. Show the sample mean and compare it to the theoretical mean of the distribution.
var(data) # Sample variance
((1 / lambda) / sqrt(n)) ^ 2 # Theorical variance

### Show that the distribution is approximately normal.
qqnorm(data)
qqline(data, col = 2)

## 2. Basic Inferential Data Analysis
### 1. Load the ToothGrowth data and perform some basic exploratory data analyses
library(datasets)
library(ggplot2)
install.packages("ggplot2", dependencies = TRUE)
install.packages("RCurl" , dependencies = TRUE)

Sys.setenv(TZ="GMT")

install.packages("devtools", dependencies = TRUE)
library(devtools)
install_github("hadley/httr")
### 2. Provide a basic summary of the data.

### 3. Use confidence intervals and/or hypothesis tests to compare tooth growth by supp and dose. (Only use the techniques from class, even if there's other approaches worth considering)

### 4. State your conclusions and the assumptions needed for your conclusions.
