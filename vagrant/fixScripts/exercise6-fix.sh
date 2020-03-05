#!/bin/bash

bytes=0

# Finds if running server is server1 or server2
hs="$(hostname)"

for last; do true; done
LAST_PATH=$last

# Goes through the input array and copies each file to the destination path
for FILE in "$@"
do
	bytes+="$(wc -c $FILE | awk '{print $1}')"
	
	# Copies the file to the other server
	if [[ $hs -eq "server1" ]]
	then	
		scp -3 root@server1:$FILE root@server2:$LAST_PATH
	else
		scp -3 root@server2:$FILE root@server1:$LAST_PATH
	fi	
done

echo "$bytes"
