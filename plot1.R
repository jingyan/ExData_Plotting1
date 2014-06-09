plot1<-function(fn = "household_power_consumption.txt"){
        data <- read.csv(fn, na.strings=c("","?","NA"), sep=";")
        subdata <- subset(data,Date == "1/2/2007"|Date == "2/2/2007")
        hist(subdata$Global_active_power,breaks=12,col="red",xlab="Global Active Power(kilowatts)",ylab="Frequency",main="Global Active Power")
}