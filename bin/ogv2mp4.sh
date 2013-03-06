#!/bin/bash
# ogv to mp4

# 1-pass CRF encoding using ffmpeg
# Adjust -crf to change the quality. Lower numbers mean higher quality and a larger output file size. A sane range is 18 to 28.

ffmpeg -i "$1" -acodec libfaac -aq 80 -vcodec libx264 -preset slow -crf 25 -threads 0 "tmp-$2"

# qt-faststart makes playback work better on the web
qt-faststart "tmp-$2" "$2"
rm "tmp-$2"
