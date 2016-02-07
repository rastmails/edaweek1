## Author: Rodrigo Alvarez Plot1 file


setwd("~/Desktop/DataScience/Coursera/4Course- Exploratory-data-analysis/edaw1")

source("load_data.R")

plot1 <- paste(getwd(), "/graficos/plot1.png", sep = "")
if(!file.exists(plot1)){
	png("graficos/plot1.png", width = 480, height = 480)
	hist(cargardatos$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
	dev.off()
} else {
	hist(cargardatos$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}


