#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#
export PATH=$PATH:/Users/oda-daisuke/.nodebrew/current/bin
export PATH="$HOME/.embulk/bin:$PATH"
export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH=$PATH:/Users/oda-daisuke/.golang/bin
export GOPATH=/Users/oda-daisuke/go
export PKG_CONFIG_PATH=/usr/local/opt/imagemagick@6/lib/pkgconfig
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH=$PATH:/Users/oda-daisuke/Library/Android/sdk/platform-tools
export PATH=$HOME/flutter/bin:$PATH
export PATH=$PATH:$HOME/Downloads/google-cloud-sdk/platform/google_appengine
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/Users/daisukeoda/dev/protoc-3.7.0-osx-x86_64/bin:$PATH"
export ARCHFLAGS="-arch x86_64"
export LSCOLORS=gxfxcxdxbxegedabagacad
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH=/usr/local/bin:/usr/bin
export PATH=/usr/local/openresty/nginx/sbin:$PATH
export PATH=/usr/local/bin/protoc:$PATH

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

#
# alias
#

alias MP4Box="/Applications/Osmo.app/Contents/MacOS/MP4Box"

# git
alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gpso='git push origin'
alias ga='git add'
alias gc='git commit'
alias gplo='git pull origin'
alias gco='git checkout'

# docker
alias d='docker'
alias dc='docker-compose'
alias dp='docker ps -a'

#
#functions
#
function gac() {
  ga .
  gc -m "$1"
}

# List branches
fbr() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# wrapper of cd
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# wrapper of git add
fadd() {
  local out q n addfiles
  while out=$(
      git status --short |
      awk '{if (substr($0,2,1) !~ / /) print $2}' |
      fzf-tmux --multi --exit-0 --expect=ctrl-d); do
    q=$(head -1 <<< "$out")
    n=$[$(wc -l <<< "$out") - 1]
    addfiles=(`echo $(tail "-$n" <<< "$out")`)
    [[ -z "$addfiles" ]] && continue
    if [ "$q" = ctrl-d ]; then
      git diff --color=always $addfiles | less -R
    else
      git add $addfiles
    fi
  done
}

# port check
function pcheck() {
  lsof -i:$1
}


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daisukeoda/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/daisukeoda/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/daisukeoda/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/daisukeoda/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(pyenv init -)"
