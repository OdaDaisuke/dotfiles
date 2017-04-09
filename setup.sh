ln -s -i ~/dotfiles/.gitconfig ~
ln -s -i ~/dotfiles/vimrc/.vimrc ~
ln -s -i ~/dotfiles/bashrc/.bashrc ~
ln -s -i ~/dotfiles/bashrc/.bash_profile ~

VIM_FILES=(molokai.vim)
for file in ${VIM_FILES[@]}
do
	sudo ln -s -i ~/dotfiles/vimrc/vimscheme/$file /usr/share/vim/vim74/colors/$file
done
