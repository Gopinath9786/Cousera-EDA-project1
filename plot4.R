rm(list=ls())#clear all data from your current Global Environment

setwd("F:/Github/Cousera-EDA-project1")


Analysis_data <- read.table("Analysis_data.txt", header= TRUE,
                            sep=" ", stringsAsFactors=FALSE)

globalActivePower <- as.numeric(Analysis_data$Global_active_power)
globalReactivePower <- as.numeric(Analysis_data$Global_reactive_power)
voltage <- as.numeric(Analysis_data$Voltage)
subMetering1 <- as.numeric(Analysis_data$Sub_metering_1)
subMetering2 <- as.numeric(Analysis_data$Sub_metering_2)
subMetering3 <- as.numeric(Analysis_data$Sub_metering_3)

png(file="plot4.png",
    width=600, height=350)

par(mfrow = c(2, 2)) 
# First plot
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
# Second plot
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
# Third plot
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, cex=0.5, col=c("black", "red", "blue"), bty="n")
# Fourth plot
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power",cex=0.2)

dev.off()
