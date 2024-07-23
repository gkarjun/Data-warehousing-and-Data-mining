# Define the vector of pencil counts
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Calculate mean
mean_pencils <- mean(pencils)

# Calculate median
median_pencils <- median(pencils)

# Function to calculate mode (most frequent value)
mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_pencils <- mode(pencils)

# Print results
print("Pencil Counts:")
print(pencils)
cat("\n")

print("Mean:")
print(mean_pencils)
cat("\n")

print("Median:")
print(median_pencils)
cat("\n")

print("Mode:")
print(mode_pencils)
