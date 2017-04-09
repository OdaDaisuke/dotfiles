# セットアップの前に

SIP(System Integrity Protection)
を無効にしてからセットアップしてください。

/usr/share/配下のディレクトリに
シンボリックリンクを作成する挙動を書いてあるので
EI Captain以上のOSだとSIPがはたらいてエラーになります。

SIPを無効にしない場合
一応設定は通りますが、vimのカラースキームだけ設定が適用されなくなります。
ご自由に!!!

# Usage

```terminal
$cd ~
$git clone https://github.com/OdaDaisuke/dotfiles.git
$cd dotfiles
$chmod +x setup.sh
$./setup.sh
```

# Directory
	
```
vimscheme/

	├ molokai.vim

.bashrc

.bash_profile

.gitconfig

.vimrc

setup.sh

README.md
```
