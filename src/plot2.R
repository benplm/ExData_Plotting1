# run src/download_data.R to download and extract the dataset
# run src/load_data.R to load the dataset
# run this script to generate the 2nd plot

dir.create("plots", showWarnings = FALSE)

png("plots/plot2.png")

plot(hpc$DateTime, hpc$Global_active_power, type = "line",
     xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
