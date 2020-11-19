plot1 <- function() { 
  source('./getDataSet.R')
  hpc <- getDataSet()
  png(file="plot1.png",width=480, height=480)
  hist(hpc$Global_active_power,col = "red",breaks = 12,main ="Global Active Power",xlab = "Global Active Power (kilowatts)")
  dev.off()
  }
