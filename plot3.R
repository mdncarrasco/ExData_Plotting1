plot3 <- function() { 
  source('./getDataSet.R')
  hpc <- getDataSet()
  png(file="plot3.png",width=480, height=480)
  
  with(hpc, plot(datetime,Sub_metering_1 , type = "n", ylab="Energy sub metering", xlab=""))
  with(hpc, points(datetime,Sub_metering_1, col = "black",type = "l"))
  with(hpc, points(datetime,Sub_metering_2, col = "red",type = "l"))
  with(hpc, points(datetime,Sub_metering_3, col = "blue",type = "l"))
  legend("topright", col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lwd=1)

  dev.off()
}