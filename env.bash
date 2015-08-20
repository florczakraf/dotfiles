# custom path
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# force en numeric locale to ensure that a period is the decimal point
export LC_NUMERIC='en_US.UTF-8'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# default editor
export EDITOR='vim'

# dir colors for ls (LS_COLORS)
eval "$(dircolors -b)"

# bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# make less more friendly for non-text input files, see lesspipe(1)
eval "$(lesspipe)"

# globstar
shopt -s globstar

# cheat (https://github.com/chrisallenlane/cheat)
export DEFAULT_CHEAT_DIR="${DOTFILES_PATH}/cheats"
export CHEATCOLORS='true'
