# Marks data
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

# Sort the marks data
sorted_marks <- sort(marks)

# (a) Equal-Frequency Partitioning (Equi-Depth)

# Determine the cut points for equal-frequency partitioning
cuts_eqfreq <- quantile(sorted_marks, probs = seq(0, 1, by = 1/3))

# Partition data into bins based on equal-frequency
bins_eqfreq <- cut(sorted_marks, breaks = cuts_eqfreq, include.lowest = TRUE)

# Plot histogram for equal-frequency partitioning
hist(sorted_marks, breaks = cuts_eqfreq, col = "skyblue", main = "Histogram - Equal-Frequency Partitioning",
     xlab = "Marks", ylab = "Frequency", border = "black")

# (b) Equal-Width Partitioning

# Determine the bin width for equal-width partitioning
bin_width <- (max(marks) - min(marks)) / 3

# Calculate cut points for equal-width partitioning
cuts_eqwidth <- seq(min(marks), max(marks) + bin_width, by = bin_width)

# Partition data into bins based on equal-width
bins_eqwidth <- cut(marks, breaks = cuts_eqwidth, include.lowest = TRUE)

# Plot histogram for equal-width partitioning
hist(marks, breaks = cuts_eqwidth, col = "lightgreen", main = "Histogram - Equal-Width Partitioning",
     xlab = "Marks", ylab = "Frequency", border = "black")
