dir.create("plots", showWarnings = FALSE)

png("plots/plot2.png")

plot(hpc$DateTime, hpc$Global_active_power, type = "line",
     xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
