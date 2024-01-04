function _vnc {
    local cur prev words cword
    _init_completion || return
    _known_hosts_real -a "$cur"
} && complete -F _vnc vnc
