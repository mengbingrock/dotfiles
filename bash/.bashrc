# set vim mode for bash prompt
set -o vi
export TERM=xterm-256color

# Environment setup
if [ -f ~/.env ]; then
    source ~/.env
fi

# Bash Prompt
PS1="\[\e]0;\u@\h: \W\a\]\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[00;36m\]\W\[\033[00m\]\$ "
PS1="\[\033[36m\][\[\033[m\]\[\033[34m\]\u@\h\[\033[m\] \[\033[32m\]\W\[\033[m\]\[\033[36m\]]\[\033[m\] $ "

# ALIASES
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Tmuxinator completions
if [ -f ~/.bin/tmuxinator.bash ]; then
    source ~/.bin/tmuxinator.bash
fi


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
HISTIGNORE="$HISTIGNORE:jrnl *"

# Auto-Jumpe
#. /usr/share/autojump/autojump.sh

# Bash show git branch
. ~/.bash/git-prompt.sh # Show git branch name at command prompt
export GIT_PS1_SHOWCOLORHINTS=true # Option for git-prompt.sh to show branch name in color

# Terminal Prompt:
# Include git branch, use PROMPT_COMMAND (not PS1) to get color output (see git-prompt.sh for more)
export PROMPT_COMMAND='__git_ps1 "\w" "\n\\\$ "' # Git branch (relies on git-prompt.sh)
