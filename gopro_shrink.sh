#!/bin/bash

ffmpeg -i "$1" -c:a copy -threads 2 "$1.mp4"

mv "$1" "$1".bak
mv "$1".mp4 "$1"


