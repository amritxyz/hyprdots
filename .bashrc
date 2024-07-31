#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
# set -o vi

alias ff='fastfetch'
alias h='cd $HOME/ && ls -a'
alias cf='cd $HOME/.config && ls -a'
alias rr='cd $HOME/.config/hypr/ && ls -a'
alias dev='cd $HOME/.local/dev/ && ls -a'
alias mu='cd $HOME/.local/music/ && ls -a'
alias ww='cd $HOME/.local/share/wall/ && ls -a'
alias img='cd $HOME/.local/img && ls -la'
alias lab='cat $HOME/.local/share/lab'
alias hub='cat $HOME/.local/share/hub'

# Helpful aliases
alias  c='clear'
alias  l='ls -l'
alias ls='ls'
alias la='ls -a'
alias ll='ls -la'
alias ld='tree'
alias lt='tree'
alias un='sudo pacman -Rncsu'
alias up='sudo pacman -Sy' # update system
alias pl='pacman -Qt' # list installed package
alias pa='yay -Ss' # list availabe package
alias pc='yay -Sc' # remove unused cache
alias po='yay -Qtdq | yay -Rncsu -'

#youtube download
alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "

# NeoVim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# Camera
alias cam='mpv --untimed --no-cache --no-osc --no-input-default-bindings --profile=low-latency --input-conf=/dev/null --title=webcam $(ls /dev/video[0,2,4,6,8] | tail -n 1)'

# change dir shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias mkdir='mkdir -p'

# git aliases
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
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gt="git ls-tree -r master --name-only"
alias gb="git branch"
alias gf="git fetch"
