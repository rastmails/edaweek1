## Author: Rodrigo Alvarez


setwd("~/Desktop/DataScience/Coursera/4Course- Exploratory-data-analysis/edaw1")

source("load_data.R")

plot2 <- paste(getwd(), "/graficos/plot2.png", sep = "")
if(!file.exists(plot2)){
	png("graficos/plot2.png", width = 480, height = 480)
	plot(cargardatos$Time, cargardatos$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
	dev.off()
} else {
	plot(cargardatos$Time, cargardatos$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}

