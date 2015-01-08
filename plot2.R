plot2 <- function(d) {
    plot(Global_active_power ~ datetime, 
         data=d, 
         type='l',
         xlab='',
         ylab='Global Active Power (kilowatts)')
}

mk.plot <- function() {
    d <- read.csv('household_power_consumption_20070201-2007022.txt', 
                  stringsAsFactors=FALSE)
    d <- within(d, datetime <- as.POSIXct(datetime))
    png('plot2.png', height=480, width=480)
    plot2(d)
    dev.off()
}

if (getOption('mk.plot', TRUE)) 
    mk.plot()
