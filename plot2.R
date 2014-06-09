plot2<-function(fn = "household_power_consumption.txt"){
        data <- read.csv(fn, na.strings=c("","?","NA"), sep=";")
        subdata <- subset(data,Date == "1/2/2007"|Date == "2/2/2007")
        times <- paste(subdata$Date,subdata$Time)
        times<-strptime(times,"%d/%m/%Y %H:%M:%S")
        plot(times,y=subdata$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
}