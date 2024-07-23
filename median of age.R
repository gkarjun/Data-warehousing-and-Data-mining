# Age data
ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# (a) Mean and Median
mean_age <- mean(ages)
median_age <- median(ages)

print(paste("Mean age:", mean_age))
print(paste("Median age:", median_age))

# (b) Mode and Modality
age_table <- table(ages)
modes <- as.numeric(names(age_table)[which.max(age_table)])
modality <- length(modes)

if (modality == 1) {
  print(paste("Mode of age:", modes))
  print("The data is unimodal.")
} else {
  print(paste("Modes of age:", paste(modes, collapse = ", ")))
  print(paste("The data is", ifelse(modality == 2, "bimodal.", paste(modality, "modal."))))
}

# (c) Midrange
midrange <- (min(ages) + max(ages)) / 2
print(paste("Midrange of age:", midrange))

# (d) Quartiles
Q1 <- quantile(ages, 0.25)
Q3 <- quantile(ages, 0.75)

print(paste("First quartile (Q1):", Q1))
print(paste("Third quartile (Q3):", Q3))
