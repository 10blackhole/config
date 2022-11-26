if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR nvim
end

starship init fish | source

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
alias cal="calcurse" # Run calcurse
alias sleep="pmset displaysleepnow"
alias wtr="curl wttr.in"
alias desk="cd ~/Desktop" # cd Desktop everywhere
alias conf="cd ~/.config" # cd Desktop everywhere
alias brv="open -a Brave\ Browser"
alias lz="lazygit"

# Alias for Git
alias gs='git status'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'
fish_add_path /Users/borjaalejandrodiezbravo/borja10bravo/.spicetify
