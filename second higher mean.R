# Input the data
classA <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
classB <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# Calculate mean
mean_classA <- mean(classA)
mean_classB <- mean(classB)

# Calculate median
median_classA <- median(classA)
median_classB <- median(classB)

# Calculate range
range_classA <- max(classA) - min(classA)
range_classB <- max(classB) - min(classB)

# Print the results
cat("Class A:\n")
cat("Mean:", mean_classA, "\n")
cat("Median:", median_classA, "\n")
cat("Range:", range_classA, "\n\n")

cat("Class B:\n")
cat("Mean:", mean_classB, "\n")
cat("Median:", median_classB, "\n")
cat("Range:", range_classB, "\n")

# Create boxplot
boxplot(classA, classB, 
        col = c("lightblue", "lightgreen"),
        main = "Exam Scores Comparison",
        names = c("Class A", "Class B"),
        ylab = "Scores")

# Add legend
legend("topright", legend = c("Class A", "Class B"), fill = c("lightblue", "lightgreen"))
