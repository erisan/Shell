#!/bin/bash

export LOG="sample.log"

echo -- TIME -- linecount -- total -- average -- zerototal 

for time in `cat $LOG | awk '{print $1}' | sort | uniq `
do
    grep $time $LOG | awk '
         BEGIN{ zerocount=0; sum=0 }
                     { sum+=$NF } 
                     { if( 0==$NF) { zerocount+=1 } }
         END{ print $1, NR, sum, sum/NR ,zerocount }
         '
done
