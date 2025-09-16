#!/bin/bash
for var in "$@"
do
    cd "$var"
    magick .folder.jpg .folder.png
    echo -e "[Desktop Entry]\nIcon=./.folder.png" > .directory
done
