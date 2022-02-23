#!/bin/sh

cat /dev/null > numbers.txt
i=1
while [ $i -le 150 ]
do
  echo "$(od -A n -t d -N 1 /dev/random)" >> numbers.txt
  i=$(($i+1))
done