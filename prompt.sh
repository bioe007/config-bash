[[ -r $BASH_COLORS ]] && . $BASH_COLORS

function _git_prompt() {
    local git_status="`git status -unormal 2>&1`"
    if ! [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
        if [[ "$git_status" =~ nothing\ to\ commit ]]; then
            local ansi=42
        elif [[ "$git_status" =~ nothing\ added\ to\ commit\ but\ untracked\ files\ present ]]; then
            local ansi=43
        else
            local ansi=45
        fi
        if [[ "$git_status" =~ On\ branch\ ([^[:space:]]+) ]]; then
            branch=${BASH_REMATCH[1]}
            test "$branch" != master || branch=' '
        else
            # Detached HEAD.  (branch=HEAD is a faster alternative.)
            branch="(`git describe --all --contains --abbrev=4 HEAD 2> /dev/null ||
                echo HEAD`)"
        fi
        echo -n '\[\e[0;37;'"$ansi"';1m\]'"$branch"'\[\e[0m\] '
    fi
}


prompt() {
    local PROMPT="\[$bldylw\]\$"
    [ $UID -eq "0" ] && PROMPT="\[$txtred\]\$"

    # Add the first part of the prompt: username,host, and time
    local USER="\n[\[$txtgrn\]\u"
    local HOST="\[$txtrst\]@\[$txtred\]\h"
    local TIME="\[$txtwht\] : \[$txtcyn\]\t \[$txtrst\]:"
    local DIR="\[$bldylw\]\w"

    local PS1_T1="$USER$HOST$TIME$DIR"

    #Len adjust for colors, time and var
    local ps_len=$(( ${#PS1_T1} - 12 * 6 + 6 + 4 ))
    local PS1_T2="\[$txtgrn\]]\n${PROMPT} \[$txtrst\]"
    local startpos=""

    local maxpwdlen=$(( COLUMNS - ps_len ))
    # Sometimes COLUMNS isn't initiliased, if it isn't, fall back on 80
    [ $maxpwdlen -lt 0 ] && maxpwdlen=$(( 79 - ps_len ))

    export PROMPT_DIRTRIM=$maxpwdlen

    PS1="${PS1_T1}${PS1_T2}"
}

prompt
