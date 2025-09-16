#!/bin/bash

#!/bin/bash
for var in "$@"
do
    cd "$var"
    wget "https://myanimelist.net/anime.php?q=$(grep -o -P "(?<=\] ).*" <<< $var)&cat=anime" -O .temp.log
    wget "https://cdn.myanimelist.net/images/anime/$(grep -o -P '(?<=images/anime/).*?(?=\.)' .temp.log | head -1)l.jpg" -O .folder.jpg
    magick .folder.jpg .folder.png
    echo -e "[Desktop Entry]\nIcon=./.folder.png" > .directory
    rm .temp.log
done
