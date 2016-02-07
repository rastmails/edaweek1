## Author: Rodrigo Alvarez

setwd("~/Desktop/DataScience/Coursera/4Course- Exploratory-data-analysis/edaw1")

library(httr) 


datos <- "datos"
if(!file.exists(datos)){
	dir.create(datos)
} 
graficos <- "graficos" 
if(!file.exists(graficos)){
	dir.create(graficos)
}

archivo <- paste(getwd(), "/datos/household_power_consumption.txt", sep = "")
if(!file.exists(archivo)){
	unzip(archivo, list = FALSE, overwrite = FALSE, exdir = datos)
}

datosresumidos <- paste(getwd(), "/datos/datosresumidos.rds", sep = "")
if(!file.exists(datosresumidos)){
	datos <- "datos/household_power_consumption.txt"
	cargardatos <- read.table(datos, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
	cargardatos$Time <- strptime(paste(cargardatos$Date, cargardatos$Time), "%d/%m/%Y %H:%M:%S")
	cargardatos$Date <- as.Date(cargardatos$Date, "%d/%m/%Y")
	fechas <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
	cargardatos <- subset(cargardatos, Date %in% fechas)
	datosresumidos <- paste(getwd(), "/", "datos", "/", "datosresumidos", ".rds", sep="")
	saveRDS(cargardatos, datosresumidos)
} else {
	datos <- "datos/datosresumidos.rds"
	cargardatos <- readRDS(datos)
}

