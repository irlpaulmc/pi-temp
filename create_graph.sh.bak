#!/bin/bash
DIR="/home/paul/temperature/graphs"
RRDDIR="/home/paul/temperature/rrd"
 
#define the desired colors for the graphs
TEMP_COLOUR="#0000CC"
 
#last-hour
rrdtool graph $DIR/$2_last-hourly.png --start -1h \
-w 430 -h 120 -a PNG \
--title "$2 (Last Hour)" \
--watermark "`date`" \
--vertical-label "deg C" \
DEF:temp=$RRDDIR/$1.rrd:temp:AVERAGE \
LINE2:temp$TEMP_COLOUR:"$2 Temperature [deg C]\t" \
GPRINT:temp:LAST:"Cur\: %5.2lf\n" \
GPRINT:temp:AVERAGE:"Avg\: %5.2lf" \
GPRINT:temp:MAX:"Max\: %5.2lf" \
GPRINT:temp:MIN:"Min\: %5.2lf\t\t\t" \

#hourly
rrdtool graph $DIR/$2_hourly.png --start -4h \
-w 430 -h 120 -a PNG \
--title "$2 (Last 4 Hours)" \
--watermark "`date`" \
--vertical-label "deg C" \
DEF:temp=$RRDDIR/$1.rrd:temp:AVERAGE \
LINE2:temp$TEMP_COLOUR:"$2 Temperature [deg C]" \
GPRINT:temp:LAST:"Cur\: %5.2lf\n" \
GPRINT:temp:AVERAGE:"Avg\: %5.2lf" \
GPRINT:temp:MAX:"Max\: %5.2lf" \
GPRINT:temp:MIN:"Min\: %5.2lf\t\t\t" \
 
#daily
rrdtool graph $DIR/$2_daily.png --start -1d \
-w 430 -h 120 -a PNG \
--title "$2 (Daily)" \
--watermark "`date`" \
--vertical-label "deg C" \
DEF:temp=$RRDDIR/$1.rrd:temp:AVERAGE \
LINE2:temp$TEMP_COLOUR:"$2 Temperature [deg C]" \
GPRINT:temp:LAST:"Cur\: %5.2lf\n" \
GPRINT:temp:AVERAGE:"Avg\: %5.2lf" \
GPRINT:temp:MAX:"Max\: %5.2lf" \
GPRINT:temp:MIN:"Min\: %5.2lf\t\t\t" \
 
#weekly
rrdtool graph $DIR/$2_weekly.png --start -1w \
-w 430 -h 120 -a PNG \
--title "$2 (Weekly)" \
--watermark "`date`" \
--vertical-label "deg C" \
DEF:temp=$RRDDIR/$1.rrd:temp:AVERAGE \
LINE2:temp$TEMP_COLOUR:"$2 Temperature [deg C]" \
GPRINT:temp:LAST:"Cur\: %5.2lf\n" \
GPRINT:temp:AVERAGE:"Avg\: %5.2lf" \
GPRINT:temp:MAX:"Max\: %5.2lf" \
GPRINT:temp:MIN:"Min\: %5.2lf\t\t\t" \
 
#monthly
rrdtool graph $DIR/$2_monthly.png --start -1m \
-w 430 -h 120 -a PNG \
--title "$2 (Monthly)" \
--watermark "`date`" \
--vertical-label "deg C" \
DEF:temp=$RRDDIR/$1.rrd:temp:AVERAGE \
LINE2:temp$TEMP_COLOUR:"$2 Temperature [deg C]" \
GPRINT:temp:LAST:"Cur\: %5.2lf\n" \
GPRINT:temp:AVERAGE:"Avg\: %5.2lf" \
GPRINT:temp:MAX:"Max\: %5.2lf" \
GPRINT:temp:MIN:"Min\: %5.2lf\t\t\t" \
 
#yearly
rrdtool graph $DIR/$2_yearly.png --start -1y \
-w 430 -h 120 -a PNG \
--title "$2 (Yearly)" \
--watermark "`date`" \
--vertical-label "deg C" \
DEF:temp=$RRDDIR/$1.rrd:temp:AVERAGE \
LINE2:temp$TEMP_COLOUR:"$2 Temperature [deg C]" \
GPRINT:temp:LAST:"Cur\: %5.2lf\n" \
GPRINT:temp:AVERAGE:"Avg\: %5.2lf" \
GPRINT:temp:MAX:"Max\: %5.2lf" \
GPRINT:temp:MIN:"Min\: %5.2lf\t\t\t" \
GPRINT:temp:MIN:"Min\: %5.2lf\t\t\t" \
