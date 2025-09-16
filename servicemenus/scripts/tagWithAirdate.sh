#!/bin/bash
for var in "$@"
do
    vartag=$(grep -o -P '(?<=\[).*?(?=\])' <<< "$var")
    varpath=$(readlink -f "$var")
    setfattr -n user.xdg.tags -v "$vartag" -h "$varpath"
done
