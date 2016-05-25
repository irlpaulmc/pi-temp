#!/bin/sh
#
### set the paths
 
### change to the script directory
 
### update the database

sleep 20

for i in `cat /home/paul/temperature/probe_config | awk '{print $1}'` 
 do
	temp=`cat /home/paul/temperature/results/$i` 
	echo "Temperature for $i is $temp, updating $i.rrd"
	rrdtool update /home/paul/temperature/rrd/$i.rrd N:$temp
done
