#!/usr/bin/env bash

FULL_URL="https://raw.githubusercontent.com/Dragos-Florin-Pojoga/files/refs/heads/resume/Resume.pdf"
SHORT_URL="is.gd/ResumeDragos"

qrencode -o qr.png -s 10 "$FULL_URL"

magick qr.png \
    -gravity south \
    -background white -splice 0x30 \
    -font Arial -pointsize 40 \
    -annotate +0+15 "$SHORT_URL" \
    qr.png

