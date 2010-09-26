## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

## pager
export PAGER=less
export LC_CTYPE=en_US.UTF-8

# Highlight-aware less command
alias hl='less -R'

# Quick-look a file (^C to close)
alias ql='qlmanage -p 2>/dev/null'

alias editohmy='$EDITOR ~/.oh-my-zsh'
alias editz='$EDITOR ~/.zshrc'

