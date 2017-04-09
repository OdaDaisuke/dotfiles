DOT_FILES=(.gitconfig .vimrc .bashrc .bash_profile)

for file in ${DOT_FILES[@]}
do
	ln -s $HOME/dotfiles/$file $HOME/$file
done

VIM_FILES=(molokai.vim)
for file in ${VIM_FILES[@]}
do
	sudo ln -s $HOME/dotfiles/vimscheme/$file /usr/share/vim/vim74/colors/$file
done
