plot2 <- function() { 
  source('./getDataSet.R')
  hpc <- getDataSet()
  png(file="plot2.png",width=480, height=480)
  plot(hpc$datetime,hpc$Global_active_power,type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  dev.off()
}