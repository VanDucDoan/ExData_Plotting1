# Plot 3: Plot of Energy sub metering
png(filename = "Plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white",  res = NA,
    type = "quartz")
matplot(as.numeric(strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")), 
        cbind(as.numeric(df$Sub_metering_1), as.numeric(df$Sub_metering_2), as.numeric(df$Sub_metering_3)),
        xlab = "", ylab = "Energy sub metering",
        type = "l",
        lty = 1,
        xaxt = "n",
        col = c("black", "red", "blue"))
xsticks <- c(as.numeric(strptime(paste("1/2/2007", "00:00:00"), format = "%d/%m/%Y %H:%M:%S")), 
             as.numeric(strptime(paste("2/2/2007", "00:00:00"), format = "%d/%m/%Y %H:%M:%S")),
             as.numeric(strptime(paste("3/2/2007", "00:00:00"), format = "%d/%m/%Y %H:%M:%S")))
days <- c("Thu", "Fri", "Sat") 
axis(side = 1, at = xsticks, labels = days, tck = -0.025)
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()