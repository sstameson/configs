# Aliases
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias ocaml='rlwrap ocaml'

alias scheme='rlwrap scheme'

alias python='python3'

# Enable syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/sstameson/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/sstameson/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/sstameson/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/sstameson/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

# conda deactivate
# conda activate base

# opam configuration
test -r /Users/sstameson/.opam/opam-init/init.zsh && . /Users/sstameson/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH="/usr/local/sbin:$PATH"

[ -f "/Users/sstameson/.ghcup/env" ] && source "/Users/sstameson/.ghcup/env" # ghcup-env

export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
