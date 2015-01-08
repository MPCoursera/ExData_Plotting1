# setting this option is a indication to plot2.R and plot3.R
# that they should not generate the plots. Sourcing these
# files makes the functions plot3 and plot3 available.
options('sourced'=TRUE)

source('data_prep.R') # loads d, the data set
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
