if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR nvim
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /Users/borjaalejandrodiezbravo/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
#
alias rg='ranger'
alias nv='nvim'
alias ofzf='open $(fzf)'
alias cfzf='cd $(fzf)'
alias nvfzf='nv $(fzf)'
alias rm="rm -i"
alias o='open' #Open app

# Alias for Git
alias gs='git status'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'
