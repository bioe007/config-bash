#!/bin/bash

config=(
    'env'
    'options'
    'colors'
    'alias'
    'prompt'
    )

for f in ${config[@]}; do
    [[ -r "$BASH/$f.sh" ]] && . "$BASH/$f.sh"
done

[[ -r $BASH/colors.sh ]] && export BASH_COLORS="$BASH/colors.sh"

[[ -f /etc/cdargs-bash.sh ]] && source cdargs-bash.sh

for f in $BASH/lib/*.sh ; do
    source $f
done
