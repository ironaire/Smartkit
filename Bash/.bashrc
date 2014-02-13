
# Avoid successive duplicates in the bash command history
export HISTCONTROL=ignoredups

: '
 Append commands to the bash command history file (~/.bash_history)
 instead of overwriting it.
'
shopt -s histappend

: '
 Append commands to the history every time a prompt is shown,
 instaead of after closing the session.
'
PROMPT_COMMAND='history -a'

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

