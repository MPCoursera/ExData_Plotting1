d <- read.csv('household_power_consumption_20070201-2007022.txt', 
              stringsAsFactors=FALSE)
png('plot1.png', height=480, width=480)
hist(d$Global_active_power, 
     col='red', 
     xlab='Global Active Power (kilowatts)',
     main='Global Active Power')
dev.off()


