Huh?
-----------------------
This repository contains my personal settings for shell and other programs.

Usage
-----------------------
1. Clone the repository to your home directory (I suggest `.dotfiles` directory but anything should work)
2. Either link `init.bash` to your `.bashrc` or source it inside your existing `.bashrc` (`. ~/.dotfiles/init.bash`)

Structure
-----------------------
* `init.bash` - loads other configuration files, sets `DOTFILES_PATH`, adds `load_dotfile` bash function
* `env.bash` - defines some custom environmental variables as well as external features (like bash completion)
* `utils.bash` - defines custom functions
* `prompt.bash` - sets prompt (and related history settings)
* `aliases.bash` - sets bash aliases

Program configs
-----------------------
You can also find my configs for some programs. They are stored in separate directories. You can manually link them but I suggest using GNU `stow` instead. Example:
```bash
~/.dotfiles $ stow tmux
```

Please note that by default `stow` will link it one directory above the one you're currently in. If you decided to clone the repository to other location than your home directory, you should consider using `stow -t"$HOME" package`.

I include my personal cheat files for `cheat` (https://github.com/chrisallenlane/cheat). They are automatically loaded from `{$DOTFILES_PATH}/cheats` instead of `~/.cheats` because of `DEFAULT_CHEAT_DIR` exported in `env.bash`.
