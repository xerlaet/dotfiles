#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias la="ls -AlF --color=auto"
alias ll="ls -lFh --color=auto" # Long, human-readable

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export VISUAL="nvim"
export EDITOR="nvim"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/robert/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/robert/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/robert/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/robert/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

force_color_prompt=yes
# Define a colored prompt for PS1
# The format is: [Green User@Host] [Blue Current Dir] $
PS1='\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '

source /usr/share/fzf/key-bindings.bash

