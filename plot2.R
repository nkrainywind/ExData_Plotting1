

setwd("C:/Users/CLT/google Drive/Data scientist/course4")

datainput <- read.table("household_power_consumption.txt", header=TRUE, sep=";",  colClasses=c("character", "character", rep("numeric",7)), na="?")

data2 <- subset(datainput, Date %in% c("1/2/2007","2/2/2007"))

data2$DateTime <- strptime(paste(data2$Date, data2$Time), "%d/%m/%Y %H:%M:%S")


# Create the 2nd plot 

png(filename="plot2.png", width=480,  height=480, units="px", bg ="transparent")

plot(data2$DateTime, data2$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()


