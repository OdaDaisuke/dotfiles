export PATH=$PATH:/usr/local/cuda/bin
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
# Go
export GOPATH=${HOME}/.golang
export PATH=${PATH}:${GOROOT}/bin:${GOPATH}/bin

# My Appearance
PS1="\[\e[37m\e[45m\]\t \u@\h \W\[\e[0m\]\n$ "

#
# My Alias
#
alias desktop='cd ~/Desktop'
alias rf='rm -rf'
alias atom='open -a atom'
alias la='ls -a'

# git
alias ga='git add'
alias gs='git status'
alias gc='git commit'
alias gpso='git push origin'
alias gplo='git pull origin'
alias gl='git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(magenta reverse)%d%Creset %s"'
