# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

BACKUP=/home/backup/.snapshot
PATH=$PATH:$HOME/bin:/usr/lib/golang/bin
VMS=$(virsh list | grep running | awk '{print $2}')

set -o emacs
export BACKUP
export PATH
export VMS
