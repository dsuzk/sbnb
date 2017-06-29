#!/bin/bash

addData () {
input1=$1

echo -n "execute addData on "
echo $input1

fileName=$(basename $input1)
dirName=$(dirname $input1)

testCaseName=`echo $fileName |cut -d'_' -f1`
nodeSelection=`echo $fileName |cut -d'_' -f2`
branchingRule=`echo $fileName |cut -d'_' -f3`
alpha=`echo $fileName |cut -d'_' -f4`
branchLevel=`echo $fileName |cut -d'_' -f5`

outputFile=${dirName}/data_$testCaseName
outputFileAll=${dirName}/data

line=${nodeSelection}\ ${branchingRule}\ ${alpha}\ $branchLevel
#echo -n $h>>$outputFile


objVal=`grep "Objective Value: " $input1`
objVal=${objVal/Objective Value:\ /}
if [ -z "$objVal" ]; then
    objVal=nan
fi
line=$line\ $objVal
#echo -n " ">>$outputFile
#echo -n $objVal>>$outputFile


maxNodeLevel=`grep "Max Node Level: " $input1`
maxNodeLevel=${maxNodeLevel/Max\ Node\ Level:\ /}
if [ -z "$maxNodeLevel" ]; then
    maxNodeLevel=nan
fi
line=$line\ $maxNodeLevel
#echo -n " ">>$outputFile
#echo -n $maxNodeLevel>>$outputFile


computedNodes=`grep "Computed Nodes: " $input1`
computedNodes=${computedNodes/Computed\ Nodes:\ /}
if [ -z "$computedNodes" ]; then
    computedNodes=nan
fi
line=$line\ $computedNodes
#echo -n " ">>$outputFile
#echo -n $computedNodes>>$outputFile


time=`grep "Elapsed Time: " $input1`
time=${time/Elapsed\ Time:\ /}
time=${time/\ sec/}
if [ -z "$time" ]; then
    time=nan
fi
line=$line\ $time
#echo -n " ">>$outputFile
#echo -n $time>>$outputFile


line=$line\ $testCaseName
#echo -n " ">>$outputFile
echo $line>>$outputFile
echo $line>>$outputFileAll
}

addFunctionNames () {
echo $1

}


export -f addData


if [ -z "$1" ]; then
    input="/home/lukas/CODE/C++/c++seminar/output/standard/";
else
    input=$1
fi

find $input -maxdepth 1 -type f ! -name "*_*" -exec rm {} \;
mkdir -p ${input}errorFiles
find $input -maxdepth 1 -type f -name "*.err" -exec mv {} ${input}errorFiles/. \;
find $input -maxdepth 1 -type f -name "data*" -exec rm {} \;
find $input -maxdepth 1 -type f -exec bash -c 'addData "$0"' {} \;

#for file in ${input}* ; do
#    addData $file
#done

find $input -maxdepth 1 -type f -name "data*" -exec sed -i '1s/.*$/\#nodeSelection\ branchingRule\ alpha\ level\ value\ nodeLevel\ computedNodes\ time\ testcasename\n&/g' {} \;

