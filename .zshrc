# Aliases
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias ocaml='rlwrap ocaml'

# Enable syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/sstameson/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/sstameson/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/sstameson/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/sstameson/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda deactivate
conda activate base

# opam configuration
test -r /Users/sstameson/.opam/opam-init/init.zsh && . /Users/sstameson/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

