source ~/.profile
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# php
export PATH=/Applications/MAMP/bin/php/php7.0.12/bin:$PATH

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# install slap
curl -sL https://raw.githubusercontent.com/slap-editor/slap/master/install.sh | sh
sudo npm install -g slap@latest

# ls color setting
export LSCOLORS=gxfxcxdxbxegedabagacad

##
# WP-CLI / MAMP compat
##
export MAMP_PHP=/Applications/MAMP/bin/php/php5.5.10/bin
export PATH="$MAMP_PHP:$PATH:/Applications/MAMP/Library/bin"

source ~/.bashrc

##
# Your previous /Users/daisuke/.bash_profile file was backed up as /Users/daisuke/.bash_profile.macports-saved_2017-05-01_at_18:48:09
##

# MacPorts Installer addition on 2017-05-01_at_18:48:09: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2017-05-01_at_18:48:09: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.

