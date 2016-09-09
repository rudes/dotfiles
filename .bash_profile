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

# Variables for GOLANG
GOROOT=/usr/local/go
GOPATH=$HOME/go

# Add golang variables to PATH
PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# rsnapshot location
if [ -d "/home/backup/.snapshot" ];then
	BACKUP=/home/backup/.snapshot
	export BACKUP
fi

# KVM Virtual machines
if [ -f /usr/bin/virsh ]; then
	VMS=$(virsh list | grep running | awk '{print $2}')
	export VMS
fi

set -o emacs
export GOROOT
export GOPATH
export PATH


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
