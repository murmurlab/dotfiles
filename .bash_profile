# /var/lib/flatpak/app/com.visualstudio.code/x86_64/stable/d99916cd683ba4adb6fab91e80643694b246309e91bc920b487ac3f59d9db069/files/extra/vscode/code
source /etc/skel/.bashrc

# exports ======================================================================
export XDG_DATA_HOME="/home/ahmbasar/sgoinfre"

[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:~/go/bin
export PATH=$PATH:~/goinfre/homebrew/bin
export PATH=$PATH:~/.local/bin/

export BASH_SILENCE_DEPRECATION_WARNING=1

# shortcuts ====================================================================
lock(){
	i=10
	while [ $i -gt 0 ]
	do
		ft_lock; sleep 1 ; pkill -KILL ft_lock
		sleep 1
		i=$((i - 1))
	done
	# ft_lock; sleep $1 ; pkill -KILL ft_lock
}
tree(){
	find $1 -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/| - \1/"
}
matrix()
{
		for i in {1..25};
	do
		for (( i=0 ; i<=363 ; i++ ));
		do
			echo -en "\033[0;32m$(($RANDOM%2))\033[0m"
		done
		sleep 0.001
	done
}
norme(){
	norminette -R CheckForbiddenSourceHeader
}
cwww(){
	cc -Wall -Wextra -Werror $1
}
ftc2()
{
	matrix
	command clear
}
ftc()
{
	matrix
	command clear
   	ls
}

murmurkb(){
	#!/bin/bash
	# Murmur Colemak Arrows - XKB overlay
	# Applies custom key mappings on top of system Colemak layout
	# This is needed because Mutter X11 backend cannot load layouts from ~/.config/xkb/
	echo "@@@@@@@@@wrapper@@@@@@@@" >> "$HOME/.config/xkb/autostart.log"
	echo "[$(date)] autostart ran on DISPLAY=$DISPLAY" >> "$HOME/.config/xkb/autostart.log"
	source ~/.xprofile
	echo "[$(date)] xkbcomp exit code: $?" >> "$HOME/.config/xkb/autostart.log"
	echo "@@@@@@@@@wrapper@@@@@@@@" >> "$HOME/.config/xkb/autostart.log"
}

#alias ls='ftc'
alias clear='ftc2'
alias c='clear'
alias doorbellcat1='firefox -new-window https://i1.sndcdn.com/artworks-CRPdY5qe2qqO4kDy-9FQlyw-t1080x1080.jpg &>/dev/null &'
alias doorbellcat2='xdg-open https://i1.sndcdn.com/artworks-CRPdY5qe2qqO4kDy-9FQlyw-t1080x1080.jpg &>/dev/null &'

source ~/.murmurbox/loader.bash
