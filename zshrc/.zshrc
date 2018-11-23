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
export PATH=$PATH:/Users/daisukeoda/.nodebrew/current/bin
export PATH="$HOME/.embulk/bin:$PATH"
export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH=$PATH:/Users/daisukeoda/.golang/bin
export GOPATH=/Users/daisukeoda/.golang
export PKG_CONFIG_PATH=/usr/local/opt/imagemagick@6/lib/pkgconfig
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH=$PATH:/Users/daisukeoda/Library/Android/sdk/platform-tools
export PATH=$HOME/flutter/bin:$PATH
export PATH=$PATH:$HOME/Downloads/google-cloud-sdk/platform/google_appengine

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

#
# alias
#

# git
alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gpso='git push origin'
alias ga='git add'
alias gc='git commit'

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

# port check
function pcheck() {
  lsof -i:$1
}


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daisukeoda/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/daisukeoda/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/daisukeoda/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/daisukeoda/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

