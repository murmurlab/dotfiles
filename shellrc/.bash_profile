source /etc/skel/.bashrc

# /var/lib/flatpak/app/com.visualstudio.code/x86_64/stable/d99916cd683ba4adb6fab91e80643694b246309e91bc920b487ac3f59d9db069/files/extra/vscode/code

export XDG_DATA_HOME="/home/ahmbasar/sgoinfre"
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path bash)"

tree(){
	find $1 -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/| - \1/"
}

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


norme(){
	norminette -R CheckForbiddenSourceHeader
}

cwww(){
	cc -Wall -Wextra -Werror $1
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


PATH=$PATH:/home/ahmbasar/go/bin
export HOME=/home/ahmbasar
export USER=ahmbasar
export BASH_SILENCE_DEPRECATION_WARNING=1
source ~/.murmurbox/loader.bash
export PATH=$PATH:~/goinfre/homebrew/bin
alias murmurkb='. ~/.config/xkb/apply-murmurkb.sh'
export PATH=$PATH:~/.local/bin/
alias c='clear'

export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH=$PATH:~/goinfre/homebrew/bin
export PATH=$PATH:~/Downloads/platform-tools
export JAVA_HOME=~/Downloads/jre1.8.0_331.jre/Contents/Home/

export PATH=$PATH:~/.local/bin/


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
#alias ls='ftc'
alias clear='ftc2'
