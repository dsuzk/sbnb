#!/bin/bash

renameFile () {
fileNameIN=$1
fileNameOUT=` echo $fileNameIN | sed 's/_cplex//g'  | sed 's/$/_-1_-1_-1_-1/g'`
mv $fileNameIN $fileNameOUT
}

input=$1

for file in ${input}* ; do
    renameFile $file
done
