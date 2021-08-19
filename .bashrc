# ================================= #
# ============ .bashrc ============ #
# ================================= #

# ================================= #
# ============ ALIASES ============ #
# ================================= #

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -a'
alias rm='rm -i'
alias fzf='fzf --height 40%'
alias cp='cp -i'
alias mv='mv -i'
alias cls='clear'
alias ssh='ssh -X'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias ,ea='$EDITOR ~/.bashrc'
alias ,et='$EDITOR ~/.tmux.conf'
alias ,ev='$EDITOR ~/.config/nvim/init.vim'

alias dco='docker-compose'
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Image}}"'

# ================================= #
# ============ GLOBALS ============ #
# ================================= #

source /etc/bash_completion
source /usr/share/doc/fzf/examples/key-bindings.bash
export EDITOR=nvim
export GPG_TTY=$(tty)
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
export PS1="\\w\[\033[0;32m\]\$(__git_ps1 ' (%s)')\[\033[0m\] \$ "
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# ================================= #
# ============== END ============== #
# ================================= #
