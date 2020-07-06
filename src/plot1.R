# run src/download_data.R to download and extract the dataset
# run src/load_data.R to load the dataset
# run this script to generate the 1st plot

dir.create("plots", showWarnings = FALSE)

png("plots/plot1.png")

hist(hpc$Global_active_power, main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()
