# Plot 4: Multiple plots
png(filename = "Plot4.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white",  res = NA,
    type = "quartz")
par(mfrow = c(2, 2), 
    oma = c(0, 0, 0, 0),
    omd = c(0, 0, 0, 0),
    omi = c(0, 0, 0, 0),
    mai = c(0.8, 0.8, 0.2, 0.2))

# Plot 4.1: Plot of global active power
plot(as.numeric(strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")), as.numeric(df$Global_active_power),
     xlab = "", ylab = "Global Active Power (kilowatts)",
     col = "black",
     type = "l",
     xaxt = "n")
xsticks <- c(as.numeric(strptime(paste("1/2/2007", "00:00:00"), format = "%d/%m/%Y %H:%M:%S")), 
             as.numeric(strptime(paste("2/2/2007", "00:00:00"), format = "%d/%m/%Y %H:%M:%S")),
             as.numeric(strptime(paste("3/2/2007", "00:00:00"), format = "%d/%m/%Y %H:%M:%S")))
days <- c("Thu", "Fri", "Sat") 
axis(side = 1, at = xsticks, labels = days, tck = -0.05)

# Plot 4.2: Plot of voltage
plot(as.numeric(strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")), as.numeric(df$Voltage),
     xlab = "datetime", ylab = "Voltage",
     col = "black",
     type = "l",
     xaxt = "n")
axis(side = 1, at = xsticks, labels = days, tck = -0.05)

# Plot 4.3: Plot of Energy sub metering
matplot(as.numeric(strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")), 
        cbind(as.numeric(df$Sub_metering_1), as.numeric(df$Sub_metering_2), as.numeric(df$Sub_metering_3)),
        xlab = "", ylab = "Energy sub metering",
        type = "l",
        lty = 1,
        xaxt = "n",
        col = c("black", "red", "blue"))
axis(side = 1, at = xsticks, labels = days, tck = -0.05)
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

# Plot 4.4: Plot of global reactive power
plot(as.numeric(strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")), as.numeric(df$Global_reactive_power),
     xlab = "datetime", ylab = "Voltage",
     col = "black",
     type = "l",
     xaxt = "n")
axis(side = 1, at = xsticks, labels = days, tck = -0.05)
dev.off()

