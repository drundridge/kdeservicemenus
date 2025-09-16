#!/bin/bash
for var in "$@"
do
    vartag="Watched"
    varpath=$(readlink -f "$var")
    setfattr -x user.xdg.tags -h "$varpath"
done
