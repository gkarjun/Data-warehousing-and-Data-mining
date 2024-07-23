# Define the age intervals and corresponding frequencies
age_intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)

# Calculate cumulative frequencies
cumulative_freq <- cumsum(frequencies)

# Total number of observations
N <- cumulative_freq[length(cumulative_freq)]

# Find the median interval
median_index <- which(cumulative_freq >= N/2)[1]
median_interval <- age_intervals[median_index]

# Extract lower and upper bounds of the median interval
lower_bound <- as.numeric(sub("-.*", "", median_interval))
upper_bound <- as.numeric(sub(".*-", "", median_interval))

# Frequency and cumulative frequency at the median interval
f_median <- frequencies[median_index]
cf_before_median <- cumulative_freq[median_index - 1]

# Width of the median interval
width_median <- upper_bound - lower_bound

# Calculate approximate median value
median_value <- lower_bound + ((N/2 - cf_before_median) / f_median) * width_median

# Print the result
print(paste("Approximate median value:", median_value))
