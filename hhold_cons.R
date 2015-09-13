library(lubridate)
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "hh.zip")
unzip("hh.zip")

hh <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE) ## turns out that file is ; separated

hh$datetime <- with(hh, paste(Date,"",Time)) ##create a new datetime variable
hh$datetime <- dmy_hms(hh$datetime) ## convert to date time from character to POSIXct format

hh_s <- subset(hh, dmy(Date) == "2007-02-01" | dmy(Date) == "2007-02-02") ## subset the data set for 1st and 2nd Feb and store to a new variable
hh_s1 <-apply(hh_s[, 3:8], 2, function(x) as.numeric(x)) ## convert character data back to numeric
hh_s1 <- cbind(as.data.frame(hh_s1), hh_s[,c(9:10)]) ## recombine back into data frame