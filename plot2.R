## Loading Data, here edata.rds is extraxted though CleaningData.R script

edata <- readRDS("edata.rds")


## Create Plot 2
plot(edata$Global_active_power~edata$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

## Save plot to png file
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()