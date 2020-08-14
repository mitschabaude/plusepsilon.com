#!/bin/bash
# convert image to webp in medium & small version
FILE=$1
NAME="${FILE%.*}"

# convert to png & resize
convert $FILE -resize 400 "$NAME.png"
convert $FILE -resize 100 "$NAME-small.png"

# convert resized pngs to webp and save to public folder
cwebp -lossless "$NAME.png" -o "public/$NAME.webp"
cwebp -lossless "$NAME-small.png" -o "public/$NAME-small.webp"

# clean up
rm "$NAME.png" "$NAME-small.png"
