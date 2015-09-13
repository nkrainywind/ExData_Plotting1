

setwd("C:/Users/CLT/google Drive/Data scientist/course4")

datainput <- read.table("household_power_consumption.txt", header=TRUE, sep=";",  colClasses=c("character", "character", rep("numeric",7)), na="?")

data2 <- subset(datainput, Date %in% c("1/2/2007","2/2/2007"))

data2$DateTime <- strptime(paste(data2$Date, data2$Time), "%d/%m/%Y %H:%M:%S")

# Create the 1st plot
png(filename="plot1.png", width=480,  height=480, units="px", bg ="transparent")

hist(data2$Global_active_power, col='red', xlab = "Global Active Power (kilowatts)", main="Global Active Power", ylim=c(0,1200))

dev.off()



