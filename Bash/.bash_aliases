
# Custom terminal prompt
# Show name@host followed by the current directory
# Set the PS1 prompt (with colors).
force_color_prompt=yes
 
TI="\[\033[0;31m\]" # Red for timestamp
UI="\[\033[0;36m\]" # Cyan for username
HI="\[\033[0;32m\]" # Green for hostname
DI="\[\033[0;34m\]" # Blue for working directory
PI="\[\033[0;33m\]" # Brown for dollar symbol and separator
II="\[\033[0m\]" # Reset to prompt color

export PS1="$TI[\@ \d]$UI\u$PI@$HI\h$PI:$DI\W\n$PI\$$II "

# Non-color prompt

#export PS1='\u@\h:\w$ '

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

export LS_OPTIONS=' -G --color=auto'
# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -a -lF $LS_OPTIONS'
alias la='ls -aF $LS_OPTIONS'
alias ls='ls -F $LS_OPTIONS'
alias li='ls -a -i -F $LS_OPTIONS'
alias lr='ls -a -R -F $LS_OPTIONS'
alias ..='cd ..'
alias cls='tput clear'
alias e='exit'

# Make grep more user friendly by highlight matches,
# and exclude greeping through .svn folders.
alias grep='grep --color=auto --exclude-dir=\.svn'

# Shortcut for using the Kdiff3 tool for svn diff.
alias svnkdiff='svn diff --diff-cmd kdiff3'

alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'

