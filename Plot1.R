
## Load Household Power Consumption Data and subset to dates Feb 1st-2nd, 2007
dataFile <- "C:/Users/maggi/Dropbox/Rademacher/Maggi/University San Diego/Coursera/R Programming/Exploratory Analysis/Data/household_power_consumption.txt"
	data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings = "?")

##Create sub sample for dates 1/2 - 2/2/ 2007 from customer data	
		DataSample <subset(data, Date == "1/2/2007" | Date == "2/2/2007")
		
##str(subSetData)
	GlobalActivePower <- as.numeric(DataSample$Global_active_power)
	
##  Create bitmap plot with specifications
	png("plot1.png", width=480, height=480)
	hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
	dev.off()
	
	