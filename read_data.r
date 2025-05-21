## Creating and downloading the data

if (!file.exists("./data")) {
    dir.create("./data")
}

file_url <- paste0(
    "https://d396qusza40orc.cloudfront.net/",
    "exdata%2Fdata%2Fhousehold_power_consumption.zip"
)
download.file(file_url,
    destfile = "./data/household_power_consumption.zip"
)

unzip("./data/household_power_consumption.zip",
    exdir = "./data"
)

file_name <- "data/household_power_consumption.txt"
data <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")
data <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$DateTime <- strptime(paste(data$Date, data$Time), format = "%Y-%m-%d %H:%M:%S")
