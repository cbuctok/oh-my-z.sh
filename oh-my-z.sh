sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator zsh dconf-cli vim
cd
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
cd
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh
cd
wget https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
mv dircolors.ansi-dark .solarized

vim ~/.zshrc

#ZSH_THEME="agnoster"
#eval `dircolors ~/.solarized/dircolors.ansi-dark`
