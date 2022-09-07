#movement
alias workspace="cd ~/OneDrive/myWorkspace"
alias itu="cd ~/OneDrive/myWorkspace/school_code/itu"

#open my main tmux session
alias tm="tmux attach -t 0"

#github
alias gs="git status"
alias gps="git push"
alias gpl="git pull"
alias ga="git add"
alias gm="git commit"

#convenience
alias jn="jupyter notebook"
alias findvim='nvim $(fzf --exact --preview "bat --style=numbers --color=always --line-range :500 {}")'
alias vimconfig='nvim ~/.vimrc'
alias fm="vifm ."
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME" 

#connections
alias hpc="ssh lukr@hpc.itu.dk"
alias amber="ssh lukr@130.226.142.166 -p 8022 -i lukr"

#gcloud cli
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"
#Pyenv
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
status --is-interactive; and pyenv virtualenv-init - | source

#Fuzzyfinder
export FZF_DEFAULT_OPTS='-m --exact' # default layout params
export FZF_DEFAULT_COMAND='fd ' # default stdin to query from
export FZF_COMPLETION_TRIGGER=':' # default trigger command for fuzzy search
export FZF_COMPLETION_OPTS='--border --info=inline' # default layout opts for completion

#Conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/co2yd4bcjgh6/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

#Java language server
export PATH=$PATH:$HOME/.local/bin
