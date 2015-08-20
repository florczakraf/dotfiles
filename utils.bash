function unset_proxy {
    unset ftp_proxy http_proxy https_proxy socks_proxy all_proxy
    unset FTP_PROXY HTTP_PROXY HTTPS_PROXY SOCKS_PROXY ALL_PROXY
}

# inspired by https://unix.stackexchange.com/questions/14303/bash-cd-up-until-in-certain-folder
function upto
{
    if [ -z "$1" ]; then
        return
    fi
    cd "${PWD/\/$1\/*//$1}"
}

function _upto {
    local current=${COMP_WORDS[COMP_CWORD]}
    local dirs=${PWD//\//\ }
    COMPREPLY=( $( compgen -W "$dirs" -- "$current" ) )
}
complete -F _upto upto
