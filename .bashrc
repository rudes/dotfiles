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
alias ,ev='vim ~/.vimrc'
alias ,et='vim ~/.tmux.conf'
alias dco='docker-compose'
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Image}}"'
case "$SHELL" in
	"/bin/bash") alias ,ea='vim ~/.bashrc';;
	"/bin/zsh") alias ,ea='vim ~/.zshrc';;
	"/usr/bin/fish") alias ,ea='vim ~/.config/fish/config.fish';;
esac

# ================================= #
# ============ GLOBALS ============ #
# ================================= #
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.cabal/bin"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export LD_LIBRARY_PATH=/usr/lib/neko
export PATH="$PATH:$HOME/.rvm/bin"
[ -f /etc/bashrc ] && source /etc/bashrc
[ -f /home/rudes/.travis/travis.sh ] && source /home/rudes/.travis/travis.sh

# ================================= #
# ============== END ============== #
# ================================= #
