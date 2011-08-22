alias l.='ls -lAdF ${H} ${LS_COLOUR} .*'    # list only hidden things
alias la='ls -lAF ${H} ${LS_COLOUR}'        # list all
alias ll='ls -lF ${H} ${LS_COLOUR}'         # list long
alias ls='ls -F ${LS_COLOUR}'               # list with flags

alias python=`which python2`
alias gcc_w=__mgcc $@
alias p="sudo pacman"
alias mp="makepkg"
alias mpf="makepkg -f"
alias v="/usr/bin/vim"
alias vi="/usr/bin/vim"
alias :q="exit"
alias cds="cd $SANDBOX"
alias mv="mv -i"

alias g='grep'
alias gi='grep -i'
alias gn='grep -n'
alias G='| grep'
alias GI='| grep -i'
alias GN='| grep -n'

alias pg="less"
# alias R="PAGER=\"`which less`\" `which R` --save --quiet"
alias vbxp2="VBoxSDL --nohostkeys r -vm xp2"

alias find_broken_links='find . -type l | \
                            (while read FN ; do \
                                test -e "$FN" || ls -ld "$FN"; \
                            done)'

alias gst="git status"
