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
alias cp='cp -i'
alias mv='mv -i'
alias cls='clear'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ssh='ssh -X'
alias ,ev='nvim ~/.config/nvim/init.vim'
alias ,et='nvim ~/.tmux.conf'
alias dco='docker-compose'
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Image}}"'
alias ,ea='nvim ~/.bashrc'

# ================================= #
# ============ GLOBALS ============ #
# ================================= #
export PS1="\\w\[\033[0;32m\]\$(__git_ps1 ' (%s)')\[\033[0m\] \$ "
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
. /etc/bash_completion
export GPG_TTY=$(tty)

# ================================= #
# ============== END ============== #
# ================================= #
