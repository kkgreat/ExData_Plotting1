data<-read.table("C:/Users/e9906576/Documents/study material/Coursera/Data Science JH/explorary data analysis/household_power_consumption.txt", sep=";", header=T)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

data$datetime<-strptime(paste(data$Date, data$Time),"%d/%m/%Y %H:%M:%S")

dataC<-subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
dataC$Global_active_power<-as.numeric(dataC$Global_active_power)

hist(dataC$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")

