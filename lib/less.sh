# less.sh
# auth: Perry Hargrave
# date: 2010-07-12
#

PAGER="less"
LESS="-FRSXiqg"

# us seems to be ref text and stuff like options in manpages
export LESS_TERMCAP_me=$'\E[0m' LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_se=$'\E[0m' LESS_TERMCAP_so=$'\E[01;47;30m'
export LESS_TERMCAP_ue=$'\E[0m' LESS_TERMCAP_us=$'\E[00;33m'
export PAGER LESS LESS_TERMCAP_mb=$'\E[01;31m'
