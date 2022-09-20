#
# ~/.bashrc "editconfig"
#

# If not running interactively, don't do anything
	 [[ $- != *i* ]] && return

# Set PATH

systemctl --user import-environment PATH
export PATH="~/.local/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/bin:/sbin:~/Downloads/pycharm-2021.2.2/bin"

# Pipes bash through lolcat

#	bash | lolcat

# Adds bash header from the ~/.bash_header "header" file and pipes it through lolcat for the lolz

	cat ~/.bash_header | cowsay | lolcat

# Adds aliases from the ~/.bash_aliases "addalias" file

	if [ -f ~/.bash_aliases ]; then
        	. ~/.bash_aliases
	fi

# Changes PS scripts

PS1='\[\e[1;33m\]{\[\e[1;31m\]\u\[\e[1;32m\]@\[\e[1;34m\]\h\[\e[1;33m\]}-\[\e[1;33m\][\[\e[1;35m\]\w\[\e[1;33m\]]\[\e[1;37m\]\$\[\e[0;37m\] '
PS2='\[\e[1;35m\]>\[\e[0;37m\] '


	## Extra fun things


# Color (hopefully)

	TERM=xterm-color
	# export LS_COLORS="--color=auto"
	export GREP_OPTIONS="--color=auto"

# Remove duplicate commands in bash history

	export HISTCONTROL=ignoredups

# Automatically cd into a directory without using cd command

	shopt -s autocd


	## Some QoL things


# Run "pwd" using ctrl+p (doesn't delete current line)

	bind -x '"\C-p":"pwd"'

# Use ctrl-n for neofetch

	bind -x '"\C-n":"neofetch"'

# Initialize Wacom tablet ExpressButtons

~/wacom-config.sh

export QSYS_ROOTDIR="/home/CosmicElijah/intelFPGA_lite/21.1/quartus/sopc_builder/bin"

eval "$(thefuck --alias)"
export LD_LIBRARY_PATH=/usr/arm-linux-gnueabihf/sys-root/lib/

