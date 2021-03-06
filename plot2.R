setwd("/Users/Eli/Downloads/")

householdFile <- "/Users/Eli/Downloads/household_power_consumption.txt"
plotData <- read.table(householdFile, header=T, sep=";", na.strings="?")
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)
plot(finalData$SetTime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png,'plot2.png')
dev.off()
