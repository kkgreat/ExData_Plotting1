data<-read.table("C:/Users/e9906576/Documents/study material/Coursera/Data Science JH/explorary data analysis/household_power_consumption.txt", sep=";", header=T)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

dataC<-subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

dataC$datetime<-as.POSIXct(paste(as.Date(dataC$Date), dataC$Time))


plot(dataC$datetime, dataC$Global_active_power,type="l", ylab="Global Active Power (kilowatts)")

