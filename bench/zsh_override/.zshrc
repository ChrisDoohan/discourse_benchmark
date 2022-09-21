# The idea behind this rc file is that it should be the minimum config required to
# run the benchmarks.
export PATH="/opt/homebrew/bin:/usr/local/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin"
typeset -U path                 # keep duplicates out of the path
path+=(.)                       # append current directory to path (controversial)

# More suitable for .zshenv
PROMPT='%n@%m %3~%(!.#.$)%(?.. [%?]) '

# BINDKEY
bindkey -e
bindkey '\e[3~' delete-char
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey ' '  magic-space

eval "$(rbenv init - zsh)"
eval "$(nodenv init -)"
