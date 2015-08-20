export DOTFILES_PATH="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

function load_dotfile {
    . "${DOTFILES_PATH}/${1}.bash"
}

load_dotfile env
load_dotfile utils
load_dotfile prompt
load_dotfile aliases
