export SHELL=/bin/bash
export PYTHONPATH=/usr/bin/python
export PATH=/bin:$PATH
export PATH=/usr/local/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/lib64:$LD_LIBRARY_PATH

export PATH=$PATH:$HOME/.local/bin
export PATH=/usr/bin/:$PATH
export XP=/opt/xilinx/xrt/bin/

source $XP/../setup.sh

alias ls='ls --color=always'
alias ll='ls -Alth --color=always'
alias share='sudo mount -t 9p -o trans=virtio /sharepoint /share'

alias ^H='stty erase ^H'
alias ^?='stty errase ^?'

alias gitl='git lg'
alias gitll='gitl --stat'
alias gitr='git rebase -i '

#tmux
alias t='tmux'
alias tnw='tmux new -s '
alias tls='tmux ls'
alias tat='tmux attach -t '

function print_dash() {
        printf %"$COLUMNS"s |tr " " "-"
}

PROMPT_COMMAND='echo -en "\033]0;$(whoami)@$(hostname)|$(pwd|cut -d "/" -f 4-100)\a"'
export PS1="\`print_dash\`| \[\e[31m\]\u\[\e[m\] @ \[\e[34m\]\h\[\e[m\] | \[\e[31m\]\w\[\e[m\] | \[\e[35m\]\d\[\e[m\] | \[\e[32m\]\t\[\e[m\] | \[\n\\$ "

