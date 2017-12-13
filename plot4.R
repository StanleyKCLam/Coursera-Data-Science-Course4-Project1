png("plot4.png", width=480, height=480)

par(mfrow = c(2, 2))

# Read data
hDF <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", skip=66636, nrows=2880)
datetime <- strptime(paste(hDF[,1], hDF[,2], sep=" "), "%d/%m/%Y %H:%M:%S")

# Plot 1
plot(datetime, hDF[,3], type="l", xlab="", ylab="Global Active Power")

# Plot 2
plot(datetime, hDF[,5], type="l", xlab="datetime", ylab="Voltage")

# Plot 3
plot(datetime, hDF[,7], type="l", xlab="", ylab="Energy sub metering")
points(datetime, hDF[,8], type="l", xlab="", col="red")
points(datetime, hDF[,9], type="l", xlab="", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c(1,2,4), lty=c(1,1,1), lwd=2.5,bty="o")

# Plot 4
plot(datetime, hDF[,4], type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()