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
alias egrep='grep --color=auto'
alias fgrep='grep --color=auto'
alias openfire='/opt/openfire/bin/openfire'
alias ssh='ssh -X'
alias ,ev='vim ~/.vimrc'
alias ,et='vim ~/.tmux.conf'
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export LD_LIBRARY_PATH=/usr/lib/neko
case "$SHELL" in
	"/bin/bash") alias ,ea='vim ~/.bashrc';;
	"/bin/zsh") alias ,ea='vim ~/.zshrc';;
esac

# ================================= #
# ============ GLOBALS ============ #
# ================================= #
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# ================================= #
# =========== FUNCTIONS =========== #
# ================================= #
colortest() {
	T='Cent'   # The test text
	echo -e "\n                 40m     41m     42m     43m\
     44m     45m     46m     47m";
	for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
		'1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
		'  36m' '1;36m' '  37m' '1;37m';
	do FG=${FGs// /}
		echo -en " $FGs \033[$FG  $T  "
		for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
		do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
		done
		echo
	done
	echo
}

# ================================= #
# ============== END ============== #
# ================================= #

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.cabal/bin" # Add CABAL to PATH for haskell

# added by travis gem
[ -f /home/rudes/.travis/travis.sh ] && source /home/rudes/.travis/travis.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
