plot(data$DateTime, data$Sub_metering_1,
    type = "n", xlab = "",
    ylab = "Energy sub metering", xaxt = "n"
)

lines(data$DateTime, data$Sub_metering_1, type = "l", col = "black")

lines(data$DateTime, data$Sub_metering_2, type = "l", col = "red")

lines(data$DateTime, data$Sub_metering_3, type = "l", col = "blue")

legend("topright",
    lty = c(1, 1, 1), col = c("black", "red", "blue"),
    c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)

atPoints <- as.POSIXct(c("01/02/2007", "02/02/2007", "03/02/2007"), format = "%d/%m/%Y")

axis(1, at = atPoints, labels = c("Thu", "Fri", "Sat"))

dev.copy(png, file = "./plot3.png", height = 480, width = 480)
dev.off()
