rm(list=ls())#clear all data from your current Global Environment

setwd("F:/Github/Cousera-EDA-project1")


Analysis_data <- read.table("Analysis_data.txt", header= TRUE,
                   sep=" ", stringsAsFactors=FALSE)

globalActivePower <- as.numeric(Analysis_data$Global_active_power)


png(file="plot1.png",
    width=600, height=350)

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")


dev.off()
