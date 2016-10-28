BASHRC=/home/vagrant/.bashrc

sed '/#===CS3410 VM init===/,/#===CS3410 VM end===/d' $BASHRC > $BASHRC.tmp
cat $BASHRC.tmp > $BASHRC
rm $BASHRC.tmp

echo '#===CS3410 VM init===' >> $BASHRC
cat >> $BASHRC << 'EOF'
function prompt_command {
    exitstatus="$?"

    BOLD="\[\033[1m\]"
    RED="\[\033[0;31m\]"
    GREEN="\[\033[0;32m\]"
    YELLOW="\[\033[0;33m\]"
    BLUE="\[\033[0;34m\]"
    PURPLE="\[\033[0;35m\]"
    CYAN="\[\033[0;36m\]"
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
    prompt="${OFF}${YELLOW}${prompt_prefix}${OFF}\u: ${CYAN}\w${OFF}${branch}"

    if [ ${exitstatus} -eq 0 ]; then
        PS1="${prompt} ${GREEN}$ ${OFF}"
    else
        PS1="${prompt} ${RED}$ ${OFF}"
    fi

    PS2="${BOLD}>${OFF} "
}
PROMPT_COMMAND=prompt_command
LS_COLORS=$LS_COLORS:'di=1;36:'; export LS_COLORS
export EDITOR=vim
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'
EOF
echo '#===CS3410 VM end===' >> $BASHRC

