#!/bin/bash
for var in "$@"
do
    vartag="Watched"
    varpath=$(readlink -f "$var")
    setfattr -n user.xdg.tags -v "$vartag" -h "$varpath"
done
