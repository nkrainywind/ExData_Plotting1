

setwd("C:/Users/CLT/google Drive/Data scientist/course4")

datainput <- read.table("household_power_consumption.txt", header=TRUE, sep=";",  colClasses=c("character", "character", rep("numeric",7)), na="?")

data2 <- subset(datainput, Date %in% c("1/2/2007","2/2/2007"))

data2$DateTime <- strptime(paste(data2$Date, data2$Time), "%d/%m/%Y %H:%M:%S")


# Create the 3rd plot 

png(filename="plot3.png", width=480,  height=480, units="px", bg ="transparent")
plot(data2$DateTime, data2$Sub_metering_1, type='n', ylab = "Energy sub metering", xlab="") 
lines(data2$DateTime, data2$Sub_metering_1, col="black") 
lines(data2$DateTime, data2$Sub_metering_2, col="red") 
lines(data2$DateTime, data2$Sub_metering_3, col="blue") 
legend("topright", col=c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=1)
dev.off()
