hDF <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", skip=66636, nrows=2880)
png("plot1.png", width=480, height=480)
hist(hDF[,3], col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
