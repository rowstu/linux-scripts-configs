#!/bin/bash

# script to recursively convert
# current directory from flac to mp3 

echo "starting conversion..."

find -type f -name "*.flac" -print0 | while read -d $'\0' a; do
< /dev/null ffmpeg -i "$a" -qscale:a 0 "${a[@]/%flac/mp3}"
done

echo "conversion completed"
