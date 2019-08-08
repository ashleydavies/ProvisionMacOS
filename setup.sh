#! /usr/bin/env bash

git config --global user.name "Ashley Davies"
git config --global user.email "ashley@davies.me.uk"
git config --global core.editor "vim"

xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install watch htop wget youtube-dl vim libpq gnupg fish git

sudo sh -c 'echo "/usr/local/bin/fish" >> /etc/shells'
chsh -s /usr/local/bin/fish

curl -L https://get.oh-my.fish | fish
./setup-fish.fish


gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

\curl -sSL https://get.rvm.io | bash -s stable --ruby
