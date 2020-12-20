plot1<-function() {
    x<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
    x$Date1<-as.Date(x$Date,"%d/%m/%Y")
    y<-filter(x, (Date1==as.Date("2007-02-01")) | (Date1==as.Date("2007-02-02")))
    png("plot1.png")
    par(mar=c(4,4,0,4))
    hist(as.numeric(y$Global_active_power), xlab="Global Active Power (kilowatts)",
         ylab="Frequency", main=" ", col="red")
    dev.off()
}
