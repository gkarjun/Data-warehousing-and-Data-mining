# Define the data
age <- c("5-6 years", "7-8 years", "9-10 years")
A <- c(18, 2, 20)
B <- c(22, 28, 10)
C <- c(20, 40, 40)

# Create a data frame
df <- data.frame(age, A, B, C)

# Print the data frame
print(df)

# Calculate sample covariance between B and C
covariance_BC <- cov(df$B, df$C)
print(paste("Sample Covariance between B and C:", covariance_BC))

# Calculate sample covariance matrix for preferences A, B, C
cov_matrix <- cov(df[, c("A", "B", "C")])
print("Sample Covariance Matrix for A, B, C:")
print(cov_matrix)

# Calculate sample correlation between B and C
correlation_BC <- cor(df$B, df$C)
print(paste("Sample Correlation between B and C:", correlation_BC))

# Calculate sample correlation matrix for preferences A, B, C
cor_matrix <- cor(df[, c("A", "B", "C")])
print("Sample Correlation Matrix for A, B, C:")
print(cor_matrix)
