# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

GOPATH=$HOME/go
BACKUP=/home/backup/.snapshot
PATH=$PATH:$HOME/bin:/usr/lib/golang/bin:$GOPATH/bin
VMS=$(virsh list | grep running | awk '{print $2}')

set -o emacs
export BACKUP
export GOPATH
export PATH
export VMS
