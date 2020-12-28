#!/bin/bash
export PATH=.:$PATH
DUMPED="$(java -ea -jar aprove.jar -s current.strategy -t 60 $1 | grep Dumped)"
FILE=${DUMPED:10}
PATH=.:$PATH ./tct -t 60 $FILE
