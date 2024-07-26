ages <- c(23, 27, 34, 45, 50, 23, 36, 42, 38, 25, 28, 30, 32, 37, 40, 29, 33, 31)

value <- 35

min_age <- min(ages)
max_age <- max(ages)
min_max_normalized_value <- (value - min_age) / (max_age - min_age)

mean_age <- mean(ages)
std_dev_age <- 12.94  
z_score_normalized_value <- (value - mean_age) / std_dev_age

max_abs_value <- max(abs(ages))
j <- ceiling(log10(max_abs_value))
decimal_scaling_normalized_value <- value / (10^j)

cat("Min-Max Normalization of 35:", min_max_normalized_value, "\n")
cat("Z-Score Normalization of 35:", z_score_normalized_value, "\n")
cat("Decimal Scaling Normalization of 35:", decimal_scaling_normalized_value, "\n")
