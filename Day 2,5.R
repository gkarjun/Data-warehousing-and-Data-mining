data("AirPassengers")
hist(AirPassengers, breaks = seq(100, 700, by = 150), col = "skyblue", 
     main = "Histogram of AirPassengers", xlab = "Number of Passengers", ylab = "Frequency")
