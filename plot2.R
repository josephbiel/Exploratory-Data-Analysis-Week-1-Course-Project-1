plot2<-function(){
  x<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
  x$Time1<-as.POSIXct(paste(x$Date, x$Time), format="%d/%m/%Y %H:%M:%S")
  x$Date1<-as.Date(x$Date,"%d/%m/%Y")
  y<-filter(x, (Date1==as.Date("2007-02-01")) | (Date1==as.Date("2007-02-02")))
  plot(y$Time1, y$Global_active_power,  type="S", xlab=" ", ylab="Global Active Power (kilowatts)")
}
