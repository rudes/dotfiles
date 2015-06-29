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
PATH=$PATH:$GOPATH/bin:$GOROOT/bin

# rsnapshot location
BACKUP=/home/backup/.snapshot

# KVM Virtual machines
if [ -f /usr/bin/virsh ]; then
								VMS=$(virsh list | grep running | awk '{print $2}')
								export VMS
fi

set -o emacs
export BACKUP
export GOPATH
export PATH
