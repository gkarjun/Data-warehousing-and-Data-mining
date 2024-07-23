# Define the data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Function for smoothing by bin mean
smooth_by_mean <- function(x, window_size) {
  smoothed <- numeric(length(x))
  for (i in 1:length(x)) {
    lower <- max(1, i - window_size)
    upper <- min(length(x), i + window_size)
    smoothed[i] <- mean(x[lower:upper])
  }
  return(smoothed)
}

# Function for smoothing by bin median
smooth_by_median <- function(x, window_size) {
  smoothed <- numeric(length(x))
  for (i in 1:length(x)) {
    lower <- max(1, i - window_size)
    upper <- min(length(x), i + window_size)
    smoothed[i] <- median(x[lower:upper])
  }
  return(smoothed)
}

# Function for smoothing by bin boundaries
smooth_by_boundaries <- function(x, window_size) {
  smoothed <- numeric(length(x))
  for (i in 1:length(x)) {
    lower <- max(1, i - window_size)
    upper <- min(length(x), i + window_size)
    smoothed[i] <- ifelse(x[i] <= mean(x[lower:upper]), min(x[lower:upper]), max(x[lower:upper]))
  }
  return(smoothed)
}

# Define window size for smoothing (adjust as needed)
window_size <- 2

# Perform smoothing by bin mean
smoothed_by_mean <- smooth_by_mean(data, window_size)

# Perform smoothing by bin median
smoothed_by_median <- smooth_by_median(data, window_size)

# Perform smoothing by bin boundaries
smoothed_by_boundaries <- smooth_by_boundaries(data, window_size)

# Print smoothed data
print("Original Data:")
print(data)

print("Smoothing by Bin Mean:")
print(smoothed_by_mean)

print("Smoothing by Bin Median:")
print(smoothed_by_median)

print("Smoothing by Bin Boundaries:")
print(smoothed_by_boundaries)
