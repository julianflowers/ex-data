library(lubridate)
url <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
download.file(url, destfile = "act.zip")
unzip("act.zip")

act <- read.csv("activity.csv", header = TRUE, stringsAsFactors = FALSE)