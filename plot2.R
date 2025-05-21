Sys.setlocale("LC_TIME", "English")
plot(data$Global_active_power ~ data$DateTime,
    type = "l",
    ylab = "Global Active Power (kilowatts)", xlab = ""
)
dev.copy(png, file = "./ExData_Plotting1/plot2.png", height = 480, width = 480)
dev.off()
