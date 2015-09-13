

png("plot2.png")
with(hh_s1, plot(datetime,Global_active_power, type = "l", xlab="", ylab = "Global Active Power (kilowatts)"))
dev.off()