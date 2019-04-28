#!/bin/bash
if [ "$1" == "-h" ]; then
  echo "Usage: ./ncbannergrabber [IP] [portfile]"
elif [ "$1" == "" ]; then
  echo "Usage: ./ncbannergrabber [IP] [portfile]"
elif [ "$2" == "" ]; then 
  echo "Usage: ./ncbannergrabber [IP] [portfile]"
  exit 0
fi

MACHINE="$1"
PORTFILE="$2"

echo "Scanning banners on $MACHINE"
echo "---------------------------------------------------------"
for PORT in $(cat $2)
do
  echo " " | nc -v -n -w1 $MACHINE $PORT
  echo "---------------------------------------------------------"
done
