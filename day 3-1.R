# Load necessary libraries
library(dplyr)
library(ggplot2)
library(cluster)

# Set seed for reproducibility
set.seed(123)

# Create a synthetic dataset
n <- 1000  # Number of customers

data <- data.frame(
  CustomerID = 1:n,
  Age = sample(18:70, n, replace = TRUE),
  Gender = sample(c("Male", "Female"), n, replace = TRUE),
  AnnualIncome = sample(20000:150000, n, replace = TRUE),
  SpendingScore = sample(1:100, n, replace = TRUE)
)

# Show the first few rows of the dataset
head(data)

# Normalize the data for clustering
data_cluster <- data %>%
  select(AnnualIncome, SpendingScore) %>%
  scale()

# Determine the optimal number of clusters using the Elbow method
wss <- function(k) {
  kmeans(data_cluster, centers = k, nstart = 10)$tot.withinss
}

k.values <- 1:10
wss.values <- sapply(k.values, wss)

# Plot the elbow curve
plot(k.values, wss.values, type = "b", pch = 19, 
     xlab = "Number of Clusters", ylab = "Within-Cluster Sum of Squares",
     main = "Elbow Method for Optimal k")

# Perform K-means clustering with the optimal number of clusters
optimal_k <- 5  # Assume we chose 5 based on the elbow plot
set.seed(123)
kmeans_result <- kmeans(data_cluster, centers = optimal_k, nstart = 10)

# Add the cluster assignment to the original dataset
data$Cluster <- kmeans_result$cluster

# Plot clusters
ggplot(data, aes(x = AnnualIncome, y = SpendingScore, color = factor(Cluster))) +
  geom_point(alpha = 0.5) +
  scale_color_discrete(name = "Cluster") +
  labs(title = "Customer Segmentation", x = "Annual Income (in USD)", y = "Spending Score") +
  theme_minimal()

# Summarize the clusters
cluster_summary <- data %>%
  group_by(Cluster) %>%
  summarize(
    AvgAge = mean(Age),
    AvgIncome = mean(AnnualIncome),
    AvgSpending = mean(SpendingScore),
    Count = n()
  )

print(cluster_summary)
