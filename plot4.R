## Author: Rodrigo Alvarez


setwd("~/Desktop/DataScience/Coursera/4Course- Exploratory-data-analysis/edaw1")

source("load_data.R")

plot4 <- paste(getwd(), "/graficos/plot4.png", sep = "")
if(!file.exists(plot4)){
	png("graficos/plot4.png", width = 480, height = 480)
	par(mfrow=c(2,2))	
	plot(cargardatos$Time, cargardatos$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
	plot(cargardatos$Time, cargardatos$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
	plot(cargardatos$Time, cargardatos$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(cargardatos$Time, cargardatos$Sub_metering_2, type="l", col="red")
	lines(cargardatos$Time, cargardatos$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
	plot(cargardatos$Time, cargardatos$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
	dev.off()
} else {
	par(mfrow=c(2,2))	
	plot(cargardatos$Time, cargardatos$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
	plot(cargardatos$Time, cargardatos$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
	plot(cargardatos$Time, cargardatos$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(cargardatos$Time, cargardatos$Sub_metering_2, type="l", col="red")
	lines(cargardatos$Time, cargardatos$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
	plot(cargardatos$Time, cargardatos$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
}

