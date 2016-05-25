#!/bin/sh
#
### set the paths
 
### change to the script directory
 
### update the database

sleep 20

temp=`cat /home/paul/temperature/results/outside` 
echo "Temperature for Outside is $temp, updating outside.rrd"
rrdtool update /home/paul/temperature/rrd/outside.rrd N:$temp
