# Use vi keybindings
bindkey -v
bindkey -v '^?' backward-delete-char

# Enable syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set environment variables
export PS1='%~ $ '
export EDITOR=vim

# Set aliases
alias df='df -h'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias ll='ls -lah'
alias mv='mv -i'

alias vi='vim'
alias python='python3'
alias ocaml='rlwrap ocaml'
alias scheme='rlwrap scheme'
