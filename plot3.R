plot3<-function(){
    x<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
    x$Time1<-as.POSIXct(paste(x$Date, x$Time), format="%d/%m/%Y %H:%M:%S")
    x$Date1<-as.Date(x$Date,"%d/%m/%Y")
    y<-filter(x, (Date1==as.Date("2007-02-01")) | (Date1==as.Date("2007-02-02")))
    plot(y$Time1, y$Sub_metering_1,  type="S", xlab=" ", ylab="Energy sub metering")
    lines(y$Time1, y$Sub_metering_2, col="red")
    lines(y$Time1, y$Sub_metering_3, col="blue")
    legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
           col=c("black","red","blue"), lty=c(1,1,1))
}
