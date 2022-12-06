if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR nvim
end

#starship init fish | source
#zoxide init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /Users/borjaalejandrodiezbravo/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
#
alias rg='ranger'
alias nv='nvim'
alias ofzf='open $(fzf)'
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
alias icat="kitty +kitten icat" #Allows display images on terminal
alias ip="curl ifconfig.me" #Get my current IP
alias doc='cd ~/Documents'
alias paper='cd ~/Documents/papers'

# Alias for Git
alias gs='git status'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'

# fzf config
export FZF_DEFAULT_OPTS="--height=60% --layout=reverse --info=inline --border --margin=1 --padding=1"
export FZF_DEFAULT_OPTS='--preview="bat --color=always {}"'
export BAT_THEME="gruvbox-dark"
# morhetz/gruvbox
#export FZF_DEFAULT_OPTS='--color=bg+:#3c3836,bg:#32302f,spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934'


fish_add_path /Users/borjaalejandrodiezbravo/borja10bravo/.spicetify
