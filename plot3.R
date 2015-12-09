setwd("C:/Users/lmpro/Desktop/Coursera/ExData_Plotting1")
getwd()

#Fetching Data
data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = '?')
data2 <- subset(data, data$Date == "2/2/2007" | data$Date == "1/2/2007")

#Output -> png
png(filename = "plot3.png", width = 480, height = 480, units = "px")

#Plot
n = 1:2880
with(data2, plot(n, data2$Sub_metering_1 , ylab = "Energy sub metering", 
                 xlab = '', xaxt = 'n', type = 'n'))
axis(side=1, at = c(0,1440,2880), label = c("Thu","Fri","Sat"))
points(n, data2$Sub_metering_1, type = 'l', col = 'black')
points(n, data2$Sub_metering_2, type = 'l', col = "red")
points(n, data2$Sub_metering_3, type = 'l', col = "blue")
legend("topright", pch = ".", lwd = 1, col = c("black","red","blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
