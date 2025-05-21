## Creating and downloading the data

if (!file.exists("./data")) {
    dir.create("./data")
}

file_url <- paste0(
    "https://d396qusza40orc.cloudfront.net/",
    "exdata%2Fdata%2Fhousehold_power_consumption.zip"
)
download.file(file_url,
    destfile = "./ExData_Plotting1/data/household_power_consumption.zip"
)

unzip("./ExData_Plotting1/data/household_power_consumption.zip",
    exdir = "./ExData_Plotting1/data"
)

file_name <- "./ExData_Plotting1/data/household_power_consumption.txt"
data <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")
data <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
head(data)
library(lubridate)
data$DateTime <- dmy_hms(paste(data$Date, data$Time))
