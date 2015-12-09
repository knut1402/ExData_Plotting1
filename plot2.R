setwd("C:/Users/lmpro/Desktop/Coursera/ExData_Plotting1")
getwd()

#Fetching data
data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = '?')
data2 <- subset(data, data$Date == "2/2/2007" | data$Date == "1/2/2007")
head(data2)


#Output -> .png
png(filename = "plot2.png", width = 480, height = 480, units = "px")

#Plot
n = 1:2880
plot(n, data2$Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l" , xlab = '', xaxt = 'n')
axis(side=1, at = c(0,1440,2880), label = c("Thu","Fri","Sat"))

dev.off()
