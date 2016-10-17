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
alias ,ev='eval $EDITOR ~/.config/nvim/init.vim'
alias ,et='eval $EDITOR ~/.tmux.conf'
alias dco='docker-compose'

switch "$SHELL"
    case "/bin/bash"
	alias ,ea='eval $EDITOR ~/.bashrc'
    case "/bin/zsh"
	alias ,ea='eval $EDITOR ~/.zshrc'
    case "/usr/bin/fish"
	alias ,ea='eval $EDITOR ~/.config/fish/config.fish'
end

set fish_greeting
set -x GCC_COLORS "error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"
set -x LD_LIBRARY_PATH "/usr/lib/neko"
set -x GOROOT "/usr/local/go"
set -x GOPATH "$HOME/go"
set -x PATH "$GOROOT/bin" $PATH
set -x PATH "$HOME/bin" $PATH
set -x PATH "$GOPATH/bin" $PATH
set -x PATH "$HOME/.rvm/bin" $PATH
set -x PATH "$HOME/.cabal/bin" $PATH
set -x EDITOR "nvim"
