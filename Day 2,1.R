data <- data.frame(
  Age = c("5-6 years", "7-8 years", "9-10 years"),
  A = c(18, 2, 20),
  B = c(22, 28, 10),
  C = c(20, 40, 40)
)

print(data)

cov_BC <- cov(data$B, data$C)
print(paste("Sample Covariance between B and C:", cov_BC))

cov_matrix_preferences <- cov(data[, -1])  
print("Sample Covariance Matrix for Preferences:")
print(cov_matrix_preferences)

cor_BC <- cor(data$B, data$C)
print(paste("Sample Correlation between B and C:", cor_BC))

cor_matrix_preferences <- cor(data[, -1])
print("Sample Correlation Matrix for Preferences:")
print(cor_matrix_preferences)