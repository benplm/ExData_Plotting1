# Load data

hpc <- read.table("data/household_power_consumption.txt",
                  sep = ";", header = TRUE, na.strings = "?",
                  colClasses = rep(c("character", "numeric"), c(2,7)))

# Format dates

hpc$DateTime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")

# Subset for dates of interest

hpc <- subset(hpc, as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))
