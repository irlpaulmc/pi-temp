#!/bin/bash
DIR="/home/paul/temperature/graphs"
RRDDIR="/home/paul/temperature/rrd"
 
#define the desired colors for the graphs
TEMP_COLOUR="#298036"
MIN_COLOUR="#69BFF5"
MAX_COLOUR="#FF2929"
 
#last-hour
rrdtool graph $DIR/$2_last-hourly.png --start -1h \
-w 430 -h 120 -a PNG \
--title "$2 (Last Hour)" \
--watermark "`date`" \
--vertical-label "deg C" \
DEF:temp=$RRDDIR/$1.rrd:temp:AVERAGE \
LINE2:temp$TEMP_COLOUR:"Temperature\t" \
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
LINE2:temp$TEMP_COLOUR:"Temperature" \
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
DEF:maxtemp=$RRDDIR/$1.rrd:temp:MAX \
DEF:mintemp=$RRDDIR/$1.rrd:temp:MIN \
GPRINT:temp:LAST:"Current\: %5.2lf\t" \
AREA:temp$TEMP_COLOUR:"Avg\:" \
GPRINT:temp:AVERAGE:"%5.2lf\t" \
LINE2:mintemp$MIN_COLOUR:"Min\:" \
GPRINT:mintemp:MIN:"%5.2lf\t" \
LINE2:maxtemp$MAX_COLOUR:"Max\:" \
GPRINT:maxtemp:MAX:"%5.2lf\n" \
 
#weekly
rrdtool graph $DIR/$2_weekly.png --start -1w \
-w 430 -h 120 -a PNG \
--title "$2 (Weekly)" \
--watermark "`date`" \
--vertical-label "deg C" \
DEF:temp=$RRDDIR/$1.rrd:temp:AVERAGE \
DEF:maxtemp=$RRDDIR/$1.rrd:temp:MAX \
DEF:mintemp=$RRDDIR/$1.rrd:temp:MIN \
GPRINT:temp:LAST:"Current\: %5.2lf\t" \
AREA:temp$TEMP_COLOUR:"Avg\:" \
GPRINT:temp:AVERAGE:"%5.2lf\t" \
LINE2:mintemp$MIN_COLOUR:"Min\:" \
GPRINT:mintemp:MIN:"%5.2lf\t" \
LINE2:maxtemp$MAX_COLOUR:"Max\:" \
GPRINT:maxtemp:MAX:"%5.2lf\n" \
 
#monthly
rrdtool graph $DIR/$2_monthly.png --start -1m \
-w 430 -h 120 -a PNG \
--title "$2 (Monthly)" \
--watermark "`date`" \
--vertical-label "deg C" \
DEF:temp=$RRDDIR/$1.rrd:temp:AVERAGE \
DEF:maxtemp=$RRDDIR/$1.rrd:temp:MAX \
DEF:mintemp=$RRDDIR/$1.rrd:temp:MIN \
GPRINT:temp:LAST:"Current\: %5.2lf\t" \
AREA:temp$TEMP_COLOUR:"Avg\:" \
GPRINT:temp:AVERAGE:"%5.2lf\t" \
LINE2:mintemp$MIN_COLOUR:"Min\:" \
GPRINT:mintemp:MIN:"%5.2lf\t" \
LINE2:maxtemp$MAX_COLOUR:"Max\:" \
GPRINT:maxtemp:MAX:"%5.2lf\n" \
 
#yearly
rrdtool graph $DIR/$2_yearly.png --start -1y \
-w 430 -h 120 -a PNG \
--title "$2 (Yearly)" \
--watermark "`date`" \
--vertical-label "deg C" \
DEF:temp=$RRDDIR/$1.rrd:temp:AVERAGE \
DEF:maxtemp=$RRDDIR/$1.rrd:temp:MAX \
DEF:mintemp=$RRDDIR/$1.rrd:temp:MIN \
GPRINT:temp:LAST:"Current\: %5.2lf\t" \
AREA:temp$TEMP_COLOUR:"Avg\:" \
GPRINT:temp:AVERAGE:"%5.2lf\t" \
LINE2:mintemp$MIN_COLOUR:"Min\:" \
GPRINT:mintemp:MIN:"%5.2lf\t" \
LINE2:maxtemp$MAX_COLOUR:"Max\:" \
GPRINT:maxtemp:MAX:"%5.2lf\n" \
