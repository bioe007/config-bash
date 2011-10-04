#!/bin/bash
OPTS="--color=always"

FILES=(
    '*.o'
    '*.pyc'
    'tags'
    '*.out'
    '*.git'
    '*.zip'
    )

DIRS=(
    '*.svn'
    '*.git'
    )

EXF=""
for f in "${FILES[@]}" ; do
    EXF="--exclude=$f $EXF"
done


EXD=""
for f in "${DIRS[@]}" ; do
    EXD="--exclude-dir=$f $EXD"
done

G_OPTS="$OPTS $EXF $EXD"

alias g="grep $G_OPTS"

alias gi="grep -i $G_OPTS"
alias gn="grep -n $G_OPTS"
alias gr="grep -r $G_OPTS"
alias gw="grep -w $G_OPTS"
