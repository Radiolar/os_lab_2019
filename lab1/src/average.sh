#!/bin/sh

if [ $# -ne 0 ]
then
  sum=0
  for parameter in "$@"
  do
    sum=$(($sum + $parameter))
  done

  echo "Average value: $(($sum / $#))"
  echo "Arguments given: $#"
else
  echo "Error: no parameters provided :("
fi