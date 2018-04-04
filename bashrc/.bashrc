export PATH=$PATH:/usr/local/cuda/bin
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
# Go
export GOPATH=${HOME}/.golang
export PATH=${PATH}:${GOROOT}/bin:${GOPATH}/bin
export GO15VENDOREXPERIMENT=1

# Nim
export PATH=$PATH:/Users/daisukeoda/.nimble/bin


# Appearance
PS1="\[\e[37m\e[45m\]\t \u@\h \W\[\e[0m\]\n$ "

# Alias
alias desktop='cd ~/Desktop'
alias togo='cd $GOPATH/src'
alias downloads='cd ~/Downloads'
alias download='cd ~/Downloads'
alias rf='rm -rf'
alias atom='open -a atom'
alias la='ls -a'
alias ls="ls -G"

# git
alias ga='git add'
alias gs='git status'
alias gc='git commit'
alias gpso='git push origin'
alias gplo='git pull origin'
alias gl='git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(magenta reverse)%d%Creset %s"'
alias gco='git checkout'
alias gb='git branch'
alias gt='git tag'
alias unstage='git reset HEAD --'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
