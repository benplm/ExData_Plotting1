dir.create("plots", showWarnings = FALSE)

png("plots/plot1.png")

hist(hpc$Global_active_power, main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()
