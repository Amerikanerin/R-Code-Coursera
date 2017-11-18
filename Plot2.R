
## Load Household Power Consumption Data and subset to dates Feb 1st-2nd, 2007
dataFile <- "C:/Users/maggi/Dropbox/Rademacher/Maggi/University San Diego/Coursera/R Programming/Exploratory Analysis/Data/household_power_consumption.txt"
	data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".",na.strings = "?")
	DataSample <subset(data, Date == "1/2/2007" | Date == "2/2/2007")
	


#str(DataSample)
	datetime <- strptime(paste(DataSample$Date, DataSample $Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
	globalActivePower <- as.numeric(DataSample$Global_active_power)
	png("plot2.png", width=480, height=480)
	plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
	dev.off()
	
	