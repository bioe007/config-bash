# ls
alias l.='ls -lAdF ${H} ${LS_COLOUR} .*'    # list only hidden things
alias la='ls -lAF ${H} ${LS_COLOUR}'        # list all
alias ll='ls -lF ${H} ${LS_COLOUR}'         # list long
alias ls='ls -F ${LS_COLOUR}'               # list with flags

# packaging
alias p="sudo pacman"
alias c="sudo clyde"
alias mp="makepkg"
alias mpf="makepkg -f"

# applications
alias v="/usr/bin/vim"
alias vi="/usr/bin/vim"
alias :q="exit"
alias vbxp2="VBoxSDL --nohostkeys r -vm xp2"
alias pg="less"
alias python=`which python2`
alias tma="tmux attach || tmux"
alias hstr='mplayer -demuxer ogg -cache 512 \
           http://xertia.homelinux.org:8000/mpd && \
           echo -e "\a" || echo -e "\a"'

# directories
alias cds="cd $SANDBOX"
alias src="cd $SANDBOX"
alias mv="mv -i"

# find
alias find_broken_links='find . -type l | \
                            (while read FN ; do \
                                test -e "$FN" || ls -ld "$FN"; \
                            done)'

# scm
alias gst="git status"
