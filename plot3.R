data<-read.table("C:/Users/e9906576/Documents/study material/Coursera/Data Science JH/explorary data analysis/household_power_consumption.txt", sep=";", header=T)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

dataC<-subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
dataC$datetime<-as.POSIXct(paste(as.Date(dataC$Date), dataC$Time))


plot( dataC$datetime,dataC$Sub_metering_1, type="l", col="black",ylab="Energy sub metering")
points(dataC$datetime,dataC$Sub_metering_2, type="l", col="red")
points(dataC$datetime,dataC$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black","red","blue"),lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
