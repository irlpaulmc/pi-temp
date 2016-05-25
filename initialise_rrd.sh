#!/bin/bash
rrdtool create /home/paul/temperature/rrd/$1.rrd --start N --step 60 \
DS:temp:GAUGE:120:U:U \
RRA:AVERAGE:0.5:1:1500 \
RRA:AVERAGE:0.5:5:2016 \
RRA:AVERAGE:0.5:15:2688 \
RRA:AVERAGE:0.5:1440:365 \
