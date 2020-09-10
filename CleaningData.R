## Setting Working Direcotry
 
setwd("F:/R/Coursera/Course4/assignment")

## Getting Raw Data and set it to Electricity data(edata)

edata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

## Format date
edata$Date <- as.Date(edata$Date, "%d/%m/%Y")

## Sub-setting the data. 1, 2007 to Feb. 2, 2007
edata <- subset(edata,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Remove incomplete observation
edata <- edata[complete.cases(edata),]

## Merge Date and Time
dateTime <- paste(edata$Date, edata$Time)

## Name the dateTime
dateTime <- setNames(dateTime, "DateTime")

## Repalce DataTime
edata <- edata[ ,!(names(edata) %in% c("Date","Time"))]
edata <- cbind(dateTime, edata)

## Format dateTime Column
edata$dateTime <- as.POSIXct(dateTime)


## Save the cleaned data

saveRDS(edata , "edata.rds")
 