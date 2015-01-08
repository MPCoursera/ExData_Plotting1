plot3 <- function(d) {
    cols <- c('black', 'red', 'blue')
    d <- d[c('datetime', names(d)[grepl('Sub_metering', names(d))])]
    with(d, {
        plot(datetime, Sub_metering_1,
             type='l', xlab='', ylab='Energy sub metering', col=cols[1],
             ylim=range(d[-1]))
        lines(datetime, Sub_metering_2, col=cols[2])
        lines(datetime, Sub_metering_3, col=cols[3])
        legend('topright', legend=names(d[-1]), col=cols, lty=1)
    })
}

mk.plot <- function() {
    source('data_prep.R') # loads d, the data set 
    png('plot3.png', height=480, width=480)
    plot3(d)
    dev.off()
}

if (!getOption('sourced', FALSE)) 
    mk.plot()
