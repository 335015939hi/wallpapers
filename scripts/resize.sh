#!/bin/bash

shopt -s nullglob

mkdir -p resized

for a in ./*.png ./*.PNG ./*.jpg ./*.JPG ./*.jpeg ./*.JPEG ./*.weebp ./*.WEBP; do
  echo $a
  magick "$a" -resize '1920x1200^' -gravity center -crop 1920x1200+0+0 +repage "resized/$a"
done
