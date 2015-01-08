source('data_prep.R') # loads d, the data set 
png('plot1.png', height=480, width=480)
hist(d$Global_active_power, 
     col='red', 
     xlab='Global Active Power (kilowatts)',
     main='Global Active Power')
dev.off()


