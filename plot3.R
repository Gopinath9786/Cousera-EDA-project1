rm(list=ls())#clear all data from your current Global Environment

setwd("F:/Github/Cousera-EDA-project1")


Analysis_data <- read.table("Analysis_data.txt", header= TRUE,
                            sep=" ", stringsAsFactors=FALSE)

subMetering1 <- as.numeric(Analysis_data$Sub_metering_1)
subMetering2 <- as.numeric(Analysis_data$Sub_metering_2)
subMetering3 <- as.numeric(Analysis_data$Sub_metering_3)
datetime <- strptime(paste(Analysis_data$Date, 
                           Analysis_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png(file="plot3.png",
    width=600, height=350)

plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=, lwd=2.5, cex=1, col=c("black", "red", "blue"), bty="n")

dev.off()

