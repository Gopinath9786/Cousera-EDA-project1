rm(list=ls())#clear all data from your current Global Environment

setwd("F:/Github/Cousera-EDA-project1")


Analysis_data <- read.table("Analysis_data.txt", header= TRUE,
                            sep=" ", stringsAsFactors=FALSE)

globalActivePower <- as.numeric(Analysis_data$Global_active_power)
datetime <- strptime(paste(Analysis_data$Date, 
                            Analysis_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png(file="plot2.png",
    width=600, height=350)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
