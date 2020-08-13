#!/bin/bash
# convert images to resized png and webp

FILE=$1
NAME="${FILE%.*}"

convert $FILE -resize 400 "$NAME.png"
convert $FILE -resize 100 "$NAME-small.png"
cwebp -lossless "$NAME.png" -o "$NAME.webp"
cwebp -lossless "$NAME-small.png" -o "$NAME-small.webp"
