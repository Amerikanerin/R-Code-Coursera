
## Load Household Power Consumption Data and subset to dates Feb 1st-2nd, 2007
dataFile <- "C:/Users/maggi/Dropbox/Rademacher/Maggi/University San Diego/Coursera/R Programming/Exploratory Analysis/Data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".",na.strings = "?")
DataSample <subset(data, Date == "1/2/2007" | Date == "2/2/2007")

#Create Subsets of Data for Plot
datetime <- strptime(paste(DataSample$Date, DataSample$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(DataSample$Global_active_power)
GlobalReactivePower <- as.numeric(DataSample$Global_reactive_power)
voltage <- as.numeric(DataSample$Voltage)
Group1 <- as.numeric(DataSample$Sub_metering_1)
Group2 <- as.numeric(DataSample$Sub_metering_2)
Group3 <- as.numeric(DataSample$Sub_metering_3)

## Create Plot 4
png("plot4.png", width=480, height=480)
## which contains four graphs
par(mfrow = c(2, 2)) 

## Create four graphs
## Graph1
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power")
## Graph2
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
## Graph3
plot(datetime, Group1, type="l", ylab="Energy Sub metering", xlab="")
lines(datetime, Group2, type="l", col="red")
lines(datetime, Group3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
## Graph4
plot(datetime, GlobalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

## close plotting function
dev.off()

