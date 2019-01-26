#!/bin/bash 


# This one liner renames all the files in the current directory and replaces the extension by editing the source and destination variables.  

source=".xlsx.txt"; destination=".xlsx";  IFS=$'\n' ; file=$(find . -type f -name "*$source") && for i in $file ; do mv "$i" `echo "$i" | sed s/$source$/$destination/`; done

# This one liner renames all the files in the current directory and removes all the text before the specified character in del variable.


del='_' ;IFS=$'\n' ; file=$(find . -type f) && for i in $file ; do mv "$i" $(dirname "$i")/`echo $(basename "$i")  | cut -d"$del" -f2-`; done
