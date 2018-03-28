export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
source ~/.profile
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


# 環境変数
export LANG=ja_JP.UTF-8

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# 直前のコマンドの重複を削除
setopt hist_ignore_dups
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# 同時に起動したzshの間でヒストリを共有
setopt share_history

# 補完機能を有効にする
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi
# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完候補を詰めて表示
setopt list_packed
# 補完候補一覧をカラー表示
zstyle ':completion:*' list-colors ''

# コマンドのスペルを訂正
setopt correct
# ビープ音を鳴らさない
setopt no_beep

# prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd() { vcs_info }
PROMPT='%m:%F{green}%~%f %n %F{yellow}$%f '
RPROMPT='${vcs_info_msg_0_}'

# Go
export GOPATH=${HOME}/.golang
export PATH=${PATH}:${GOROOT}/bin:${GOPATH}/bin
export GO15VENDOREXPERIMENT=1

# Nim
export PATH=$PATH:/Users/daisukeoda/.nimble/bin

# Appearance
# PS1="\[\e[37m\e[45m\]\t \u@\h \W\[\e[0m\]\n$ "

# Alias
alias desktop='cd ~/Desktop'
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


export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
