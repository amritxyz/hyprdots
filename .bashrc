# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$PATH:$HOME/.local/bin"

# Prompt configuration
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# LS_COLORS configuration
export LS_COLORS='di=1;34:fi=0:ln=0;36:ex=0;32:'
eval "$(dircolors -b)"

# Shell options and settings
shopt -s autocd
stty -ixon
HISTSIZE= HISTFILESIZE= # Infinite history.
#set -o vi

# Aliases
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias l='ls -l --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -la --color=auto'
alias ld='tree'
alias c='clear'
alias rr='cd $HOME/.local/src/arch-dwm && ls -a'
alias h='cd $HOME/ && ls -a'
alias cf='cd $HOME/.config && ls -a'
alias wal='cd $HOME/.local/share/void-wall && ls -a'
alias mu='cd $HOME/.local/music && ls -a'
alias dl='cd $HOME/.local/dl && ls -a'
alias dev='cd $HOME/.local/dev && ls -a'
alias img='cd $HOME/.local/img && ls -a'
alias gitr='cd $HOME/.local/git-repos && ls -a'
alias hs='cd $HOME/.local/hugo-dir && ls -a'
alias hss='hugo server --noHTTPCache'
alias ff='fastfetch'
alias pc='sudo pacman -Scc'
alias ..='cd .. && ls -a'
alias ...='cd ../../ && ls -a'
alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias mkdir='mkdir -p'

# Git aliases
alias g="git"
alias gst="git status"
alias gc="git commit -m"
alias ga="git add"
alias gpl="git pull"
alias gpom="git push origin master"
alias gpu="git push"
alias gpuom="git push origin main"
alias gd="git diff"
alias gch="git checkout"
alias gnb="git checkout -b"
alias gac="git add . && git commit -m"
alias grs="git restore --staged ."
alias gre="git restore"
alias gr="git remote"
alias gcl="git clone"
alias gt="git ls-tree -r master --name-only"
alias gb="git branch"
alias gf="git fetch"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n%  C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
