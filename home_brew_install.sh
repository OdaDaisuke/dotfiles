echo "[installing homebrew]"

which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade --all
formulas=(
	autoconf
	jpeg
	php70
	automake
	lame
	php70-intl
	berkeley-db
	libffi
	cairo
	libmpc
	pixman
	cmake
	libpng
	pkg-config
	composer
	libssh2
	postgresql
	libtiff
	protobuf
	eigen
	libtool
	pyenv
	ffmpeg
	libxml2
	pyenv-virtualenv
	fontconfig
	lua
	python
	freetype
	make
	qt
	gcc
	makedepend
	readline
	gd
	midnight-commander
	s-lang
	gdbm
	mongodb
	sqlite
	gettext
	mpfr
	szip
	git
	mutt
	tbb
	glib
	mysql
	tokyo-cabinet
	gmp
	nkf
	tree
	gnuplot
	numpy
	unixobdc
	go
	open-cobol
	vim
	gobject-introspection
	openblas
	watchman
	graphicsmagick
	opencv
	webp
	harfbuzz
	openexr
	wget
	hdf5
	openssl
	wxmac
	heroku
	pango
	x264
	icu4c
	pcre
	xvid
	ilmbase
	pdflib-lite
	xz
	imagemagick
	php56
	youtube-dl
	intltool
	zerpmq
	isl
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
