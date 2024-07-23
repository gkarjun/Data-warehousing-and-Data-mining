# Define the value for normalization
x <- 35

# (i) Min-Max Normalization
min_max_normalize <- function(x, min_val, max_val) {
  return((x - min_val) / (max_val - min_val))
}

# Define the range for min-max normalization
min_range <- 0
max_range <- 1

# Apply min-max normalization
min_max_normalized <- min_max_normalize(x, min_range, max_range)

# Print the normalized value
print("Min-Max Normalization:")
print(min_max_normalized)

# (ii) Z-score Normalization
# Define the mean and standard deviation for z-score normalization
mean_age <- 0  # Assuming mean age is 0 for simplicity
sd_age <- 12.94

# Z-score normalization function
z_score_normalize <- function(x, mean_val, sd_val) {
  return((x - mean_val) / sd_val)
}

# Apply z-score normalization
z_score_normalized <- z_score_normalize(x, mean_age, sd_age)

# Print the normalized value
print("Z-score Normalization:")
print(z_score_normalized)

# (iii) Normalization by Decimal Scaling
# Define the decimal place shift for decimal scaling normalization
d <- 2  # Decimal places to shift

# Decimal scaling normalization function
decimal_scaling_normalize <- function(x, d) {
  return(x / 10^d)
}

# Apply decimal scaling normalization
decimal_scaled <- decimal_scaling_normalize(x, d)

# Print the normalized value
print("Normalization by Decimal Scaling:")
print(decimal_scaled)
