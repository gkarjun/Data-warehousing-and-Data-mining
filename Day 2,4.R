min_value <- 50000
max_value <- 100000
v <- 80000
min_max_normalized <- (v - min_value) / (max_value - min_value)
print(paste("Min-Max Normalized Value:", min_max_normalized))
data <- c(200, 300, 400, 600, 1000)
z_scores <- scale(data)
print("Z-Score Normalized Values:")
print(z_scores)