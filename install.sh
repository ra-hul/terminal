
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

sudo xcodebuild -license accept
brew install git
brew install vim
brew install maven
brew install curl
cd ~/; git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh
cd ~/;  curl https://raw.githubusercontent.com/ra-hul/terminal/master/zpreztorc > .zpreztorc

brew install macvim
cd ~/  
curl -L https://bit.ly/janus-bootstrap | bash

cd ~/  
mkdir .janus
cd ~/.janus
g clone https://github.com/Chiel92/vim-autoformat.git
g clone https://github.com/morhetz/gruvbox.git

cd;
brew install postgresql
brew tap homebrew/services
brew services start postgresql
brew install mysql
