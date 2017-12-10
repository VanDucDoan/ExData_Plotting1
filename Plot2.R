# Plot 2: Plot of global active power
png(filename = "Plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white",  res = NA,
    type = "quartz")
plot(as.numeric(strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")), as.numeric(df$Global_active_power),
     xlab = "", ylab = "Global Active Power (kilowatts)",
     col = "black",
     type = "l",
     xaxt = "n")
xsticks <- c(as.numeric(strptime(paste("1/2/2007", "00:00:00"), format = "%d/%m/%Y %H:%M:%S")), 
             as.numeric(strptime(paste("2/2/2007", "00:00:00"), format = "%d/%m/%Y %H:%M:%S")),
             as.numeric(strptime(paste("3/2/2007", "00:00:00"), format = "%d/%m/%Y %H:%M:%S")))
days <- c("Thu", "Fri", "Sat") 
axis(side = 1, at = xsticks, labels = days, tck = -0.025)
dev.off()