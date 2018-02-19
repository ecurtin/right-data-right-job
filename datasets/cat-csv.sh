#!/bin/bash

dir="$1"
newFile="$2"

csvFiles=$(ls $dir)

set -- $csvFiles
head -n 1 $dir$1 > $newFile

for eachFile in $csvFiles
do
    echo $dir$eachFile
    tail -n +2 $dir$eachFile >> $newFile
done
