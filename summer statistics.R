# Input the data
prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18)

# Calculate mean
mean_price <- mean(prices)

# Calculate median
median_price <- median(prices)

# Function to calculate mode
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode_price <- getmode(prices)

# Calculate variance
variance_price <- var(prices)

# Calculate standard deviation
sd_price <- sd(prices)

# Print the results
cat("Data Set of Prices:\n")
print(prices)

cat("\nSummary Statistics:\n")
cat("Mean: ", mean_price, "\n")
cat("Median: ", median_price, "\n")
cat("Mode: ", mode_price, "\n")
cat("Variance: ", variance_price, "\n")
cat("Standard Deviation: ", sd_price, "\n")
