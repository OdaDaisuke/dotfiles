source ~/.profile
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# yarn
export PATH="$HOME/.yarn/bin:$PATH"

# mecab
export PATH="/usr/local/mecab/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# ls color setting
export LSCOLORS=gxfxcxdxbxegedabagacad

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
alias gplo='git pull origin'
alias gco='git checkout'

# docker
alias d='docker'
alias dc='docker-compose'
alias dp='docker ps -a'

source ~/.bashrc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daisukeoda/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/daisukeoda/Downloads/google-cloud-sdk/path.bash.inc'; fi

export PATH="$HOME/.cargo/bin:$PATH"
