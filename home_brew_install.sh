echo "[installing homebrew]"

which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade --all
formulas=(
	jpeg
	composer
	postgresql
	protobuf
	ffmpeg
	lua
	make
	qt
	gcc
	readline
	mongodb
	sqlite
	git
	glib
	mysql
	nkf
	tree
	numpy
	go
	open-cobol
	vim
	gobject-introspection
	watchman
	opencv
	wget
	openssl
	heroku
	x264
	imagemagick
	go
)

"brew tap..."
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew tap homebrew/apache
brew tap sanemat/font

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    dropbox
    evernote
    skitch
    bettertouchtool
    google-chrome
		firefox
    google-japanese-ime
    slack
    alfred
    iterm2
    libreoffice
    cyberduck
		docker
		mamp
		tor-browser
    vlc
    atom
    virtualbox
    vagrant
    vagrant-manager
	)

	echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew cask install $cask
done

brew cleanup
brew cask cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END
