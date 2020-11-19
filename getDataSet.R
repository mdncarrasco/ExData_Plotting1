downloadDataSet <- function() {
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  destfile <- "Dataset.zip"
  
  if(!file.exists(destfile)){
    download.file(url,destfile,method = "curl")
    dataDownloaded <- date()
  }
  
  unzip(destfile)
}

getDataSet <- function() {
  destfile <- "household_power_consumption.txt"
  
  if(!file.exists(destfile)){
    print("Downsload Individual household electric power consumption Data Set")
    downloadDataSet()
  }
  library(lubridate)
  hpc <- read.table(destfile,sep=";",header=T)
  hpc$Date <- as.Date(hpc$Date,format="%d/%m/%Y")
  hpc <- hpc[hpc$Date == as.Date("2007-02-01") |hpc$Date == as.Date("2007-02-02") ,]
  hpc$Time <- hms(hpc$Time)
  hpc$Global_active_power <- as.numeric(hpc$Global_active_power)
  hpc$Global_reactive_power <- as.numeric(hpc$Global_reactive_power)
  hpc$Voltage <- as.numeric(hpc$Voltage)
  hpc$Sub_metering_1 <- as.numeric(hpc$Sub_metering_1)
  hpc$Sub_metering_2 <- as.numeric(hpc$Sub_metering_2)
  hpc$Sub_metering_3 <- as.numeric(hpc$Sub_metering_3)
  hpc$datetime <- hpc$Date + hpc$Time
  hpc
}