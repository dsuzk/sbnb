#!/bin/bash

echo "PID: " $$

sbnbPath=/home/bildhauer/c++Seminar/sbnb/bin/sbnb

testcaseDir=/home/bildhauer/c++Seminar/testcasesFINAL/

timeout=10m

#sbnbPath=/home/lukas/CODE/C++/c++seminar/sbnb/bin/sbnb
#testcaseDir=/home/lukas/CODE/C++/c++seminar/sbnb/test/models/samples/

alphaArray=(0.0 0.2 0.5 0.8 0.9 1.0)
branchArray=(05 10 15 20 40)

nodeSelectionArrayC=(d b e)
nodeSelectionArrayI=(0 1 2)
nodeSelectionArrayS=(depth breadth best)

branchingRuleArrayC=(f g i j)
branchingRuleArrayI=(0 1 2 3)
branchingRuleArrayS=(firstFractional closeHalf closeHalfExpensive strongBranching)



##### without strong branching (any other combination)
branchingRuleArrayI=(0 1 2)


##### best first with strong branching, see above alpha and #pseudonode values
branchingRuleArrayI=(3)
nodeSelectionArrayI=(2)

##### only computing with cplex solver
cplexSwitch=0

##### enables cluster commands (qsub etc.)
clusterSwitch=1

if [ -z "$1" ]; then
    outputDir=../output/standard
else
    outputDir=$(dirname $1)/$(basename $1)
fi

echo $outputDir

mainOutputDir=$(dirname "${outputDir}")

if [ ! -f ${mainOutputDir}/sbnb_scriptDir_identifier ]; then
    echo "IdentifierFile not found!"
    exit 1
fi

if [ ! -d ${outputDir} ]; then
    echo "not a directory"
    mkdir -p $outputDir
else
    echo "is a directory"
#    mkdir -p ${mainOutputDir}/backup
#    rm -rf ${mainOutputDir}/backup/*
#    mv ${outputDir}/* ${mainOutputDir}/backup/.
#    rm -rf $outputDir/*
fi


getCommandline () {
outputFile=${outputDir}/$fileName
            
commandline_cluster=`echo qsub -q koebes.q -N sbnb_$problemName -cwd -o $outputFile -e ${outputFile}.err -b y`
commandline_sbnb=`echo timeout --kill-after=10s $timeout $sbnbPath -$sbnb_arguments $file`

if [ $clusterSwitch == 1 ]; then
    commandline=$commandline_cluster\ $commandline_sbnb
else
    commandline=$commandline_sbnb\ \>\ $outputFile
fi
echo $commandline
}

for file in ${testcaseDir}* ; do 
        echo $file 
        
        problemName=$(basename ${file%.*})
        
        if [[ $cplexSwitch == 1 ]]; then
            
            fileName=${problemName}_-1_-1_-1_-1
            
            sbnb_arguments=-c

            getCommandline
            
            eval $commandline
            continue
        fi

        for nodeSelection in ${nodeSelectionArrayI[@]} ; do
            for branchingRule in ${branchingRuleArrayI[@]} ; do

                if [[ $branchingRule != 3 ]]; then

                    fileName=$(basename ${file%.*})_${nodeSelection}_${branchingRule}_-1_-1
                    
                    sbnb_arguments=`echo ${nodeSelectionArrayC[$nodeSelection]} -${branchingRuleArrayC[$branchingRule]}`
		    
                    getCommandline
                    
                    eval $commandline
                    continue
                fi

                for alpha in ${alphaArray[@]} ; do
                    for level in ${branchArray[@]} ; do

                        fileName=$(basename ${file%.*})_${nodeSelection}_${branchingRule}_${alpha}_${level}
                        
                        sbnb_arguments=`echo ${nodeSelectionArrayC[$nodeSelection]}\ -${branchingRuleArrayC[$branchingRule]}$level\ -a$alpha`
                        
                        getCommandline
                        
                        eval $commandline
                    done
                done
            done
        done
done

echo "ls"
ls $outputDir
