## Coursera Exploratory Data Analysis Assignment 1
## Plot 3

rawdata <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
subdata <- subset(rawdata, Date %in% c("1/2/2007","2/2/2007"))
subdata$Date <- as.Date(subdata$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(subdata$Date), subdata$Time)
subdata$Datetime <- as.POSIXct(datetime)

## saving the graph as a PNG

## Specifying the end file type, file name and pixels size
png("plot3.png", width=480, height=480)

with(subdata,
     {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, text.font = 8,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))



dev.off()