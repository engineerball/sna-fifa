#!/bin/bash
for i in {343..352};
do
    cat data.txt | awk '$3 == '$i' { print $1 }'
done
