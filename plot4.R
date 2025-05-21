par(mfrow = c(2, 2))

plot(data$DateTime, data$Global_active_power,
    type = "l",
    ylab = "Global Active Power",
    xlab = ""
)

plot(data$DateTime, data$Voltage,
    type = "l",
    ylab = "Voltage",
    xlab = "datetime"
)

plot(data$DateTime, data$Sub_metering_1,
    type = "l",
    ylab = "Energy sub metering",
    xlab = ""
)

lines(data$DateTime, data$Sub_metering_2,
    type = "l",
    col = "red"
)

lines(data$DateTime, data$Sub_metering_3,
    type = "l",
    col = "blue"
)

legend(
    x = "topright",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    lty = 1,
    lwd = 2.5,
    col = c("black", "red", "blue")
)

plot(data$DateTime, data$Voltage,
    type = "l",
    ylab = "Voltage",
    xlab = "datetime"
)

dev.copy(png, file = "./ExData_Plotting1/plot4.png", height = 480, width = 480)
dev.off()
