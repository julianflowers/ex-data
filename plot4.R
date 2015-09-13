png("plot4.png")

par(mfrow = c(2,2))
##plot1
with(hh_s1,(hist(Global_active_power, col = 'red', xlab = "Global Active Power (kilowatts)", main = "Global Active Power")))

##plot2
with(hh_s1, plot(datetime, Voltage, type = 'l'))

##plot3
with(hh_s1, plot(datetime,Sub_metering_1, type = "n", xlab="", ylab = "Energy sub metering"))
with(hh_s1, lines(datetime, Sub_metering_1, col = 'black'))
with(hh_s1, lines(datetime, Sub_metering_2, col = 'red'))
with(hh_s1, lines(datetime, Sub_metering_3, col = 'blue'))
legend("topright", names(hh_s1)[5:7], lty = 1, col = c('black', 'red', 'blue'))

##plot4
with(hh_s1, plot(datetime, Global_reactive_power, type = 'l'))

dev.off()