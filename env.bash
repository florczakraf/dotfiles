# custom path
export PATH="$HOME/bin:$HOME/.local/bin:$DOTFILES_PATH/bin:$PATH"

# force en numeric locale to ensure that a period is the decimal point
export LC_NUMERIC='en_US.UTF-8'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# default editor
export EDITOR='vim'

# dir colors for ls (LS_COLORS)
if [ -x "$(which dircolors)" ]; then
  eval "$(dircolors -b)"
elif [ -x "$(which gdircolors)" ]; then
  eval "$(gdircolors -b)"
fi

# bash completion
if ! shopt -oq posix; then
  if [ -f "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh" ]; then
    . "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh"
  fi
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  fi

  if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi

  extra_dirs="/opt/homebrew/etc/bash_completion.d ${DOTFILES_PATH}/completions"

  for d in $extra_dirs; do
    if [ -d "$d" ]; then
      for f in "$d"/* ; do
        if [ -f "$f" ]; then
          . "$f"
        fi
      done
    fi
  done
fi

# make less more friendly for non-text input files, see lesspipe(1)
if [ -x "$(which lesspipe)" ]; then
  eval "$(lesspipe)"
elif [ -x "/opt/homebrew/bin/lesspipe.sh" ]; then
  eval "$(/opt/homebrew/bin/lesspipe.sh)"
fi

# globstar
shopt -s globstar

# cheat (https://github.com/chrisallenlane/cheat)
export DEFAULT_CHEAT_DIR="${DOTFILES_PATH}/cheats"
export CHEATCOLORS='true'

# less
export LESS="-ISR"

export DOCKER_BUILDKIT=1

# fixes missing function in tmux
if [[ $(type -t "__vte_prompt_command") != function ]]; then
    function __vte_prompt_command(){
        return 0
    }
fi
