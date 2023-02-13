rm(list=ls())#clear all data from your current Global Environment

setwd("F:/Github/Cousera-EDA-project1")


Zipfile <- "Coursera_Power_Data.zip"

# Checking if Zipfile exists already exists.
if (!file.exists(Zipfile)){
  fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileurl, Zipfile)
}  

# Checking if folder is unzipped exists
if (!file.exists("household_power_consumption.txt")) { 
  unzip(Zipfile)
}

data <- read.table("household_power_consumption.txt", header= TRUE,
                  sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)

#getting the Data from dates 2007-02-01 and 2007-02-02
Analysis_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

if (!file.exists("Analysis_data.txt")) { 
  write.table(Analysis_data, "Analysis_data.txt",row.name=FALSE)
}

