plot2 <- function(d) {
    plot(Global_active_power ~ datetime, 
         data=d, 
         type='l',
         xlab='',
         ylab='Global Active Power (kilowatts)')
}

mk.plot <- function() {
    source('data_prep.R') # loads d, the data set 
    png('plot2.png', height=480, width=480)
    plot2(d)
    dev.off()
}

if (!getOption('sourced', FALSE)) 
    mk.plot()
