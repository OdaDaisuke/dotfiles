export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.embulk/bin:$PATH"
export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH=$PATH:/Users/oda-daisuke/.golang/bin
export PATH=/usr/local/openresty/nginx/sbin:$PATH

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

# ls color
export LSCOLORS=gxfxcxdxbxegedabagacad

# apperance
PS1="\[\e[37m\e[45m\]\t \u@\h \W\[\e[0m\]\n$ "

# alias rm='rmtrash'


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
