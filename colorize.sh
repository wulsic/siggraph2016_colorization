#!/bin/bash
FILE=colornet.t7
if [ -f $FILE ];
then 
for image in ./input/*
do
   set -x && th colorize.lua "$image" ./output/"${image##*/}" && { set +x; } 2>/dev/null
done
else
reset && echo "colornet.t7 does not exist. Run download_model.sh"
fi
