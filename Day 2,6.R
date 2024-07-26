data(mtcars)
plot(mtcars$mpg, type = "l", col = "blue", xlab = "Index", ylab = "mpg", main = "Line Chart of mpg and qsec")
lines(mtcars$qsec, col = "red")
legend("topright", legend = c("mpg", "qsec"), col = c("blue", "red"), lty = 1)