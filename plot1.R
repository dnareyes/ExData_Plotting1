hist(data$Global_active_power,
    main = "Global Active Power",
    xlab = "Global Active Power (kilowatts)",
    col = "red",
    breaks = 15
)
dev.copy(png, file = "./plot1.png", height = 480, width = 480)
dev.off()
