DOT_FILES=(.gitconfig .vimrc .bashrc .bash_profile)

for file in ${DOT_FILES[@]}
do
	ln -s $HOME/dotfiles/$file $HOME/$file
done
