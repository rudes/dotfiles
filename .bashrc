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

export EDITOR=nvim
shopt -s histappend
export GPG_TTY=$(tty)
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
[ -d "$HOME/bin" ] && export PATH=$PATH:$HOME/bin
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
if [ -d "$HOME/.goenv" ];then
    export PATH=$PATH:$HOME/.goenv/bin
    eval "$(goenv init -)"
fi
if [ -d "/usr/local/go" ];then
    export PATH=$PATH:/usr/local/go/bin
fi
if [ -f "/etc/bash_completion" ]; then
	source /etc/bash_completion
	export PS1="\\w\[\033[0;32m\]\$(__git_ps1 ' (%s)')\[\033[0m\] \$ "
fi

# ================================= #
# ============== END ============== #
# ================================= #
