BASHRC=/home/vagrant/.bashrc

if ! grep '#3410 VM init' $BASHRC; then
    echo '#3410 VM init' >> $BASHRC
    cat >> $BASHRC << 'EOF'
function prompt_command {
    exitstatus="$?"

    BOLD="\[\033[1m\]"
    RED="\[\033[0;38;5;9m\]"
    GREEN="\[\033[0;38;5;10m\]"
    BLUE="\[\033[0;38;5;27m\]"
    PURPLE="\[\033[0;38;5;21m\]"
    CYAN="\[\033[0;38;5;39m\]"
    YELLOW="\[\033[0;38;5;226m\]"
    OFF="\[\033[0m\]"

    changes=`git status -s 2> /dev/null | wc -l | sed -e 's/ *//'`
    if [ ${changes} -eq 0 ]; then
        dirty=" ${GREEN}v${OFF}"
    else
        dirty=" ${RED}x${OFF}"
    fi
    branch=`git symbolic-ref HEAD 2> /dev/null | cut -f3 -d/`
    if [ ! -z ${branch} ]; then
        if [ ${branch} == "master" ]; then
            branch=`echo " (${BLUE}${branch}${dirty}${OFF})"`
        else
            branch=`echo " (${PURPLE}${branch}${dirty}${OFF})"`
        fi
    fi

    prompt_prefix="(CS3410 VM) "
    prompt="${OFF}${CYAN}${prompt_prefix}${OFF}\u: ${CYAN}\w${OFF}${branch}"

    if [ ${exitstatus} -eq 0 ]; then
        PS1="${prompt} ${GREEN}$ ${OFF}"
    else
        PS1="${prompt} ${RED}$ ${OFF}"
    fi

    PS2="${BOLD}>${OFF} "
}
PROMPT_COMMAND=prompt_command
export EDITOR=vim
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'
EOF

fi
