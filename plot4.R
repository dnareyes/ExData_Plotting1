par(mfrow = c(2, 2))

## Top Right
with(data, plot(DateTime, Global_active_power,
    type = "l",
    xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n"
))
atPoints <- as.POSIXct(c("01/02/2007", "02/02/2007", "03/02/2007"), format = "%d/%m/%Y")
axis(1, at = atPoints, labels = c("Thu", "Fri", "Sat"))

## Top Left
with(data, plot(DateTime, Voltage,
    type = "l",
    xlab = "datetime", ylab = "Voltage", xaxt = "n"
))
axis(1, at = atPoints, labels = c("Thu", "Fri", "Sat"))

## Bottom Left
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

## Bottom Right
with(data, plot(DateTime, Global_reactive_power,
    type = "l",
    xlab = "datetime", ylab = "Global_reactive_power", xaxt = "n"
))

axis(1, at = atPoints, labels = c("Thu", "Fri", "Sat"))

dev.copy(png, file = "./plot4.png", height = 480, width = 480)
dev.off()
