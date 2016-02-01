#!/usr/bin/env bash

NUM_WORDS=$1
FILE=$2

echo The top $NUM_WORDS words are 
cat $FILE | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' | sort | uniq -c | sort -nr | head -n $NUM_WORDS 

echo The bottom $NUM_WORDS words are
cat $FILE | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' | sort | uniq -c | sort -nr | tail -n $NUM_WORDS
