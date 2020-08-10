## Coursera Exploratory Data Analysis Assignment 1
## Plot 1

rawdata <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
subdata <- subset(rawdata, Date %in% c("1/2/2007","2/2/2007"))
subdata$Date <- as.Date(subdata$Date, format="%d/%m/%Y")

## saving the graph as a PNG

## Specifying the end file type, file name and pixels size
png("plot1.png", width=480, height=480)

## Creating/Plotting the graph
hist(subdata$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Marking the end of the graph plot to be saved as PNG
dev.off()