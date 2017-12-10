# Plot 1: Histogram of global active power
png(filename = "Plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white",  res = NA,
    type = "quartz")
hist(as.numeric(df$Global_active_power),
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     main = "Global Active Power",
     col = "red")
dev.off()