png("plot3.png")
with(hh_s1, plot(datetime,Sub_metering_1, type = "n", xlab="", ylab = "Energy sub metering"))
with(hh_s1, lines(datetime, Sub_metering_1, col = 'black'))
with(hh_s1, lines(datetime, Sub_metering_2, col = 'red'))
with(hh_s1, lines(datetime, Sub_metering_3, col = 'blue'))



legend("topright", names(hh_s1)[5:7], lty = 1, col = c('black', 'red', 'blue'))


dev.off()