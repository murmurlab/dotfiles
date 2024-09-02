alias c='clear'
source ~/.murmurbox/loader.bash
PATH=$PATH:/Users/ahbasara/go/bin
PATH=$PATH:/Users/ahbasara/.local/bin
export HOMEBREW_LOGS=/Users/ahbasara/brew-logs

export HOME=/Users/ahbasara

export USER=ahbasara

alias code='open -a "Visual Studio Code"'

alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

alias st4="/goinfre/ahbasara/Sublime\ Text.app/Contents/MacOS/sublime_text"

alias kode="/goinfre/ahbasara/Visual\ Studio\ Code.app/Contents/MacOS/Electron"

alias chrome="/goinfre/ahbasara/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --flag-switches-begin --flag-switches-end --origin-trial-disabled-features=WebGPU --user-data-dir=/goinfre/$USER/data/Google/Chrome/ --profile-directory=\"Default\""

alias deepl="/goinfre/ahbasara/DeepL.app/Contents/MacOS/DeepL"

alias edge="/goinfre/ahbasara/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge --flag-switches-begin --flag-switches-end --user-data-dir=/goinfre/$USER/data/Microsoft\ Edge"
export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH=$PATH:~/goinfre/homebrew/bin
export PATH=$PATH:~/Downloads/platform-tools
export JAVA_HOME=~/Downloads/jre1.8.0_331.jre/Contents/Home/
alias vg=VALGRIND_LIB=/Users/ahbasara/.local/valgrind/libexec/valgrind/\ /Users/ahbasara/.local/bin/vg

export PATH=$PATH:~/.local/bin/

export PATH=$PATH:/Users/ahbasara/goinfre/nodejs/bin


matrix()
{
		for i in {1..25};
	do
		for (( i=0 ; i<=363 ; i++ ));
		do
			echo -en "\033[0;32m$(($RANDOM%2))\033[0m"
		done
		# sleep 0.001
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
