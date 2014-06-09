plot3<-function(fn = "household_power_consumption.txt"){
        data <- read.csv(fn, na.strings=c("","?","NA"), sep=";")
        subdata <- subset(data,Date == "1/2/2007"|Date == "2/2/2007")
        times <- paste(subdata$Date,subdata$Time)
        times<-strptime(times,"%d/%m/%Y %H:%M:%S")
        plot(times,y=subdata$Sub_metering_1,type="l",xlab="",ylab="Energe sub metering")
        lines(times,y=subdata$Sub_metering_2,type="l",col="red")
        lines(times,y=subdata$Sub_metering_3,type="l",col="blue")
        legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1),col=c("black","red","blue"))
}