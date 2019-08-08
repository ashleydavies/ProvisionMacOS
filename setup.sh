#! /usr/bin/env bash

function out_lines {
    echo "---------------"
    echo "$1"
    echo "---------------"
}

out_lines "Setting Git variables"

git config --global user.name "Ashley Davies"
git config --global user.email "ashley@davies.me.uk"
git config --global core.editor "vim"

out_lines "Installing xcode command line tooles"

xcode-select --install

out_lines "Installing Homebrew"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

out_lines "Installing brew packages"

brew install watch htop wget youtube-dl vim libpq gnupg fish git

out_lines "Setting Fish as default shell"

sudo sh -c 'echo "/usr/local/bin/fish" >> /etc/shells'
chsh -s /usr/local/bin/fish

out_lines "Installing Oh My Fish"

curl -L https://get.oh-my.fish | fish

out_lines "Setting up Oh My Fish"

./setup-fish.fish

out_lines "Setting up RVM and Ruby"

curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

\curl -sSL https://get.rvm.io | bash -s stable --ruby
