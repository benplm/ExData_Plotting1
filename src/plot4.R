# run src/download_data.R to download and extract the dataset
# run src/load_data.R to load the dataset
# run this script to generate the 4th plot

dir.create("plots", showWarnings = FALSE)

png("plots/plot4.png")

par(mfrow = c(2,2))

plot(hpc$DateTime, hpc$Global_active_power, type = "line",
     xlab = "", ylab = "Global Active Power")

plot(hpc$DateTime, hpc$Voltage, type = "line", xlab = "datetime",
     ylab = "Voltage")

plot(hpc$DateTime, hpc$Sub_metering_1, type = "line", xlab = "",
     ylab = "Energy sub metering")
lines(hpc$DateTime, hpc$Sub_metering_2, type = "line", col = "red")
lines(hpc$DateTime, hpc$Sub_metering_3, type = "line", col = "blue")
legend("topright", grep("^Sub_metering_", colnames(hpc), value = TRUE),
       col = c("black", "red", "blue"), lty = c(1, 1, 1), bty = "n")

plot(hpc$DateTime, hpc$Global_reactive_power, type = "line", xlab = "datetime",
     ylab = "Global_reactive_power")


dev.off()
