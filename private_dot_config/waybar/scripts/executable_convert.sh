#!/bin/bash

while read t rest
do
  ms=$(echo $t|sed -r "s/.*(.....)$/\1/")  # get Milliseconds  617mS
  se=$(echo $t|sed -r "s/(.....)$//")      # get seconds  1882224
  days=$(echo $se / 3600 / 24 |bc)

  d="$days:$(date -d "1970-01-01 $se seconds" +%H:%M:%S):$ms"
  echo "$d $rest"
done < $1

