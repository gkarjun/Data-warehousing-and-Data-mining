# Define the data
data <- c(200, 300, 400, 600, 1000)

# Min-max normalization function
min_max_normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

# Z-score normalization function
z_score_normalize <- function(x) {
  return((x - mean(x)) / sd(x))
}

# Apply min-max normalization
min_max_normalized <- min_max_normalize(data)

# Apply z-score normalization
z_score_normalized <- z_score_normalize(data)

# Print the normalized data
print("Min-Max Normalization:")
print(min_max_normalized)

print("Z-score Normalization:")
print(z_score_normalized)
