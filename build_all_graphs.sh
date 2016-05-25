#!/bin/sh

sleep 40

cat /home/paul/temperature/probe_config | while read line
do
	sensor=`echo $line | cut -d ' ' -f 1`
	name=`echo $line | cut -d ' ' -f 2`
	/home/paul/temperature/create_graph.sh $sensor $name
done
