## Loading Data, here edata.rds is extraxted though CleaningData.R script

edata <- readRDS("edata.rds")

## Create plot 1
hist(edata$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")

## Save plot to png file
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()