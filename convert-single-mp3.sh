#!/bin/bash

# will need to make this more simple from the command line eventually but for now

INPUT_FILE="$1"
OUTPUT_FILE="$2"

#ffmpeg -i Candy.m4a -b:a 192K Candy.mp3

ffmpeg -i "$INPUT_FILE" -b:a 192K "$OUTPUT_FILE"
