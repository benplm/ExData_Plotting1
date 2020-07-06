dir.create("plots", showWarnings = FALSE)

png("plots/plot3.png")

plot(hpc$DateTime, hpc$Sub_metering_1, type = "line", xlab = "",
     ylab = "Energy sub metering")
lines(hpc$DateTime, hpc$Sub_metering_2, type = "line", col = "red")
lines(hpc$DateTime, hpc$Sub_metering_3, type = "line", col = "blue")
legend("topright", grep("^Sub_metering_", colnames(hpc), value = TRUE),
       col = c("black", "red", "blue"), lty = c(1, 1, 1))

dev.off()
