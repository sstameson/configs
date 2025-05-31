# Use emacs keybindings
bindkey -e

# Set environment variables
export PS1='%~ $ '
export EDITOR='vim'

# Set aliases
alias ls='ls -G'
alias ll='ls -Glah'
alias mv='mv -i'
alias cp='cp -i'

# opam configuration
[[ ! -r /Users/sstameson/.opam/opam-init/init.zsh ]] || source /Users/sstameson/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
