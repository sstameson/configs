# Environment variables
export PS1='%~ $ '
export EDITOR='vim'
export PATH="/usr/local/sbin:$PATH"
# export PATH="/usr/local/opt/llvm/bin:$PATH"

# Aliases
alias df='df -h'
alias gc='git commit'
alias gs='git status'
alias ll='ls -lah'
alias mv='mv -i'

alias vi='vim'
alias python='python3'
alias ocaml='rlwrap ocaml'
alias scheme='rlwrap scheme'

# Enable syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# opam configuration
test -r /Users/sstameson/.opam/opam-init/init.zsh && . /Users/sstameson/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

[ -f "/Users/sstameson/.ghcup/env" ] && source "/Users/sstameson/.ghcup/env" # ghcup-env
