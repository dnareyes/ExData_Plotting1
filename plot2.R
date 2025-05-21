with(data, plot(DateTime, Global_active_power,
    type = "l",
    xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n"
))
atPoints <- as.POSIXct(c("01/02/2007", "02/02/2007", "03/02/2007"), format = "%d/%m/%Y")
axis(1, at = atPoints, labels = c("Thu", "Fri", "Sat"))
dev.copy(png, file = "./plot2.png", height = 480, width = 480)
dev.off()
