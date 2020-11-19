plot4 <- function() { 
  source('./getDataSet.R')
  hpc <- getDataSet()
  png(file="plot4.png",width=480, height=480)
  
  par(mfrow = c(2, 2), mar = c(4, 4, 2, 1)) 
  # Plot 1
  with(hpc,plot(datetime,Global_active_power,type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))
  # Plot 2
  with(hpc,plot(datetime,Voltage,type = "l"))
  # Plot 3
  with(hpc, plot(datetime,Sub_metering_1 , type = "n", ylab="Energy sub metering", xlab=""))
  with(hpc, points(datetime,Sub_metering_1, col = "black",type = "l"))
  with(hpc, points(datetime,Sub_metering_2, col = "red",type = "l"))
  with(hpc, points(datetime,Sub_metering_3, col = "blue",type = "l"))
  legend("topright", col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lwd=1)
  #Plot 4
  with(hpc,plot(datetime,Global_reactive_power,type = "l"))
  
  dev.off()
}