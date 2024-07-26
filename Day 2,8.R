data(mtcars)
boxplot(mpg ~ cyl, data = mtcars, col = "skyblue", 
        main = "Boxplot of mpg vs. cyl", xlab = "Number of Cylinders", ylab = "Miles per Gallon")