# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# add $HOME/bin to path
if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
fi

# User specific environment and startup programs

set -o emacs
