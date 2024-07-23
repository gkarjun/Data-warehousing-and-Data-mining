# Age data
age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 
         25, 25, 25, 25, 30, 33, 33, 35, 35, 
         35, 35, 36, 40, 45, 46, 52, 70)

# Calculate quartiles
q1 <- quantile(age, 0.25)
q3 <- quantile(age, 0.75)

# Print results
cat("First Quartile (Q1):", q1, "\n")
cat("Third Quartile (Q3):", q3, "\n")
