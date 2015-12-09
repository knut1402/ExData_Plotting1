setwd("C:/Users/lmpro/Desktop/Coursera/ExData_Plotting1")
getwd()

#Fetching data
data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = '?')
data2 <- subset(data, data$Date == "2/2/2007" | data$Date == "1/2/2007")

#Output -> .png
png(filename = "plot1.png", width = 480, height = 480, units = "px")

#Plot
hist(data2$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")

dev.off()
