# setting this option is a indication to plot2.R and plot3.R
# that they should not generate the plots. Sourcing these
# files makes the functions plot3 and plot3 available.

d <- read.csv('household_power_consumption_20070201-2007022.txt', 
              stringsAsFactors=FALSE)
d <- within(d, datetime <- as.POSIXct(datetime))
options('mk.plot'=FALSE)
source('plot2.R')
source('plot3.R')

png('plot4.png', height=480, width=480)
subm.cols <- c('black', 'red', 'blue')
par(mfrow=c(2,2))
plot2(d)
plot(Voltage ~ datetime, 
     data=d, 
     type='l',
     xlab='',
     ylab='Global Active Power (kilowatts)')
plot3(d)
plot(Global_reactive_power ~ datetime, 
     data=d, 
     type='l')
dev.off()
