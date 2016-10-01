#!/bin/bash
# My first script
 

ARRAY=()

#! /bin/bash
cat testCase1 | while read LINE
do
echo $LINE
ARRAY+=($LINE)

echo "${ARRAY[2]}"
done

echo ${ARRAY[3]}

