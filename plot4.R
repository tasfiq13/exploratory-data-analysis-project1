## Loading Data, here edata.rds is extraxted though CleaningData.R script

edata <- readRDS("edata.rds")

## Create Plot 4
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(edata, {
  plot(Global_active_power~dateTime, type="l", 
       ylab="Global Active Power", xlab="")
  plot(Voltage~dateTime, type="l", 
       ylab="Voltage (volt)", xlab="")
  plot(Sub_metering_1~dateTime, type="l", 
       ylab="Global Active Power", xlab="")
  lines(Sub_metering_2~dateTime,col='Red')
  lines(Sub_metering_3~dateTime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~dateTime, type="l", 
       ylab="Global Rective Power",xlab="")
})


## Save plot to png file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()