for i in `cat /home/paul/temperature/probe_config | awk '{print $1}'` ; do /home/paul/temperature/get-temp.py $i > /home/paul/temperature/results/$i; done
