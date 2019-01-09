#!/bin/bash 


source=".xlsx.txt"; destination=".xlsx";  IFS=$'\n' ; file=$(find . -type f -name "*$source") && for i in $file ; do mv "$i" `echo "$i" | sed s/$source$/$destination/`; done
