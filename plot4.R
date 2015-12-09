setwd("C:/Users/lmpro/Desktop/Coursera/ExData_Plotting1")
getwd()

#Fetching data
data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = '?')
data2 <- subset(data, data$Date == "2/2/2007" | data$Date == "1/2/2007")

#Output -> .png
png(filename = "plot4.png", width = 480, height = 480, units = "px")

#Plots
n = 1:2880
par(mfcol = c(2,2))

#plot[0,0]
plot(n, data2$Global_active_power, ylab = "Global Active Power", type = 'l', xlab = '', xaxt = 'n')
axis(side=1, at = c(0,1440,2880), label = c("Thu","Fri","Sat"))

#plot[1,0]
with(data2, plot(n, data2$Sub_metering_1 , ylab = "Energy sub metering", 
                 xlab = '', xaxt = 'n', type = 'n'))
axis(side=1, at = c(0,1440,2880), label = c("Thu","Fri","Sat"))
points(n, data2$Sub_metering_1, type = 'l', col = "black")
points(n, data2$Sub_metering_2, type = 'l', col = "red")
points(n, data2$Sub_metering_3, type = 'l', col = "blue")
legend("topright", bty = "n" ,pch = ".", lwd = 1, col = c("black","red","blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plot[0,1]
plot(n, data2$Voltage, ylab = "Voltage", type = 'l', xlab = "datetime", xaxt = 'n')
axis(side=1, at = c(0,1440,2880), label = c("Thu","Fri","Sat"))

#plot[1,1]
plot(n, data2$Global_reactive_power , ylab = "Global_reactive_power", type = 'l', xlab = "datetime", xaxt = 'n')
axis(side=1, at = c(0,1440,2880), label = c("Thu","Fri","Sat"))

dev.off()




