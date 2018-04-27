#!/bin/bash
echo i am running

echo "${PATH}"

myPATH="$(echo $PATH | sed 's/ /\\ /g')"

echo "${myPath}"

