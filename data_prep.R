# Each of the plotN.R files can source this file 
# to load and subset the data set to 2007-2-1 -- 2007-2-3.
Sys.setenv(TZ='EST') # To avoid any daylight saving's related NAs
d <- read.table('household_power_consumption.txt', sep=';', 
                header=TRUE, stringsAsFactors=FALSE, na.strings='?')
dtime.fmt <- '%d/%m/%Y %H:%M:%S'
d <- within(d, datetime <- as.POSIXct(paste(Date, Time), format=dtime.fmt))
stopifnot(all(!is.na(d$datetime)))
start <- as.POSIXct('2007-2-1')
end <- as.POSIXct('2007-2-3')
d <- d[d$datetime >= start & d$datetime < end,]
